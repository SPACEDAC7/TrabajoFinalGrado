/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.AsyncTask
 *  android.util.Log
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.androidabframework.controller;

import android.content.Context;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.buzzfeed.androidabframework.data.ABeagle;
import com.buzzfeed.androidabframework.data.ABeagleData;
import com.buzzfeed.androidabframework.data.Experiment;
import com.buzzfeed.androidabframework.data.VariantBlockInterface;
import com.buzzfeed.androidabframework.util.CodeTimer;
import com.buzzfeed.androidabframework.util.Environment;
import com.buzzfeed.androidabframework.util.ReturnCode;
import com.buzzfeed.androidabframework.util.Util;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ExperimentManager {
    private static final String AB_KEY_EXPERIMENTS = "experiments";
    private static final String CACHED_DATA_FILE_NAME;
    private static final String TAG;
    private static final ExperimentManager sExperimentManager;
    @Nullable
    private ABeagle mABeagle;
    private long mCacheTTL = 3600000;
    private long mCacheTimestamp;
    private CodeTimer mCodeTimer = new CodeTimer();
    @NonNull
    private Environment mEnvironment = Environment.Production;
    @NonNull
    private LinkedHashMap<String, Experiment> mExperimentMap = new LinkedHashMap();
    @Nullable
    private String mUserId;

    static {
        TAG = ExperimentManager.class.getName();
        CACHED_DATA_FILE_NAME = ExperimentManager.class.getName() + ".cachedData2";
        sExperimentManager = new ExperimentManager();
    }

    private ExperimentManager() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void clear(@NonNull Context context, boolean bl) {
        synchronized (this) {
            if (context == null) {
                throw new IllegalArgumentException("context parameter cannot be null");
            }
            if (bl) {
                context.getApplicationContext().deleteFile(this.getCachedDataFileName());
            }
            this.clearExperimentList();
            this.mUserId = null;
            this.mABeagle = null;
            this.mCacheTimestamp = 0;
            return;
        }
    }

    private void clearExperimentList() {
        this.mExperimentMap.clear();
        this.mABeagle = null;
        this.mCacheTimestamp = 0;
    }

    private void executeCallback(@Nullable CallbackInterface callbackInterface, @NonNull ReturnCode returnCode, @NonNull long l2) {
        if (callbackInterface != null) {
            CodeTimer codeTimer = new CodeTimer().start();
            callbackInterface.execute(returnCode, l2);
            Log.d((String)TAG, (String)("Post initialize callback completed in " + codeTimer.stop().getElapsedMilliseconds() + "ms"));
        }
        this.mCodeTimer.stop();
        Log.d((String)TAG, (String)("ABCeagle initialization completed in " + this.mCodeTimer.getElapsedMilliseconds() + "ms"));
    }

    private ABeagle getABeagle() {
        synchronized (this) {
            if (this.mABeagle == null) {
                this.mABeagle = ABeagle.newInstance(this.mEnvironment, this.mCacheTTL, this.mUserId, this.getExperimentList());
            }
            ABeagle aBeagle = this.mABeagle;
            return aBeagle;
        }
    }

    private String getCachedDataFileName() {
        return CACHED_DATA_FILE_NAME;
    }

    public static ExperimentManager getInstance() {
        return sExperimentManager;
    }

    private void loadABeagleData(final @NonNull Context context, @Nullable CallbackInterface callbackInterface) {
        new AsyncTask<Void, Void, ReturnCode>(TAG + ".loadABeagleData", callbackInterface){
            long responseTime;
            final /* synthetic */ String val$TAG;
            final /* synthetic */ CallbackInterface val$callback;

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            protected /* varargs */ ReturnCode doInBackground(Void ... object) {
                Object object2 = ExperimentManager.this.getABeagle();
                ReturnCode returnCode = object2.loadABeagleData(context);
                this.responseTime = object2.getResponseTime();
                if (returnCode == ReturnCode.SucceededNormally) {
                    object = sExperimentManager;
                    synchronized (object) {
                        CodeTimer codeTimer = new CodeTimer().start();
                        object2 = object2.getABeagleDataMap();
                        for (Experiment experiment : ExperimentManager.this.getExperimentList()) {
                            String string2 = experiment.getName();
                            if (!object2.containsKey(string2)) continue;
                            ABeagleData aBeagleData = (ABeagleData)object2.get(string2);
                            if (aBeagleData.error != null) {
                                Log.e((String)this.val$TAG, (String)("Error in experiment data: " + string2 + "; Error: " + aBeagleData.error));
                                continue;
                            }
                            if (aBeagleData.version == null || aBeagleData.version < 1) {
                                Log.e((String)this.val$TAG, (String)("Error in experiment data: " + string2 + "; Invalid version: " + aBeagleData.version));
                                continue;
                            }
                            if (aBeagleData.version != null && (experiment.getVersion() == null || aBeagleData.version > experiment.getVersion())) {
                                experiment.setSelectedVariant(null, null);
                            }
                            experiment.setId(aBeagleData.experimentId);
                            experiment.setVersion(aBeagleData.version);
                            experiment.setResolved(aBeagleData.resolved);
                            if (aBeagleData.selectedVariantName == null || aBeagleData.selectedVariantName != null && experiment.hasVariant(aBeagleData.selectedVariantName)) {
                                experiment.setSelectedVariant(aBeagleData.selectedVariantName, aBeagleData.selectedVariantId);
                                Log.d((String)this.val$TAG, (String)("Set selected variant: " + string2 + " --> " + aBeagleData.selectedVariantName + "(" + aBeagleData.selectedVariantId + ")"));
                                continue;
                            }
                            Log.e((String)this.val$TAG, (String)("Selected variant not found: " + string2 + " --> " + aBeagleData.selectedVariantName + "(" + aBeagleData.selectedVariantId + ")"));
                        }
                        Log.d((String)this.val$TAG, (String)("Experiment data updated from ABeagle data in " + codeTimer.stop().getElapsedMilliseconds() + "ms"));
                        if (returnCode == ReturnCode.SucceededNormally) {
                            ExperimentManager.this.saveExperimentsToCache(context);
                        }
                    }
                }
                return returnCode;
            }

            protected void onPostExecute(ReturnCode returnCode) {
                ExperimentManager.this.executeCallback(this.val$callback, returnCode, this.responseTime);
            }
        }.execute((Object[])new Void[0]);
    }

    /*
     * Exception decompiling
     */
    private ReturnCode loadExperimentsFromCache(@NonNull Context var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[TRYBLOCK]], but top level block is 2[TRYBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private ReturnCode loadExperimentsFromJson(@NonNull JSONObject jSONObject) {
        synchronized (this) {
            ReturnCode returnCode;
            String string2 = TAG + ".loadExperimentsFromJson";
            ReturnCode returnCode2 = ReturnCode.SucceededNormally;
            try {
                ArrayList<Experiment> arrayList = Experiment.experimentListFromJson(jSONObject.getJSONArray("experiments"));
                returnCode = returnCode2;
                if (arrayList == null) return returnCode;
                this.updateExperimentList(arrayList);
                return returnCode2;
            }
            catch (JSONException returnCode2) {
                returnCode = ReturnCode.FailedToLoadExperimentList;
                Log.e((String)string2, (String)("Error loading experiment list json: " + (Object)jSONObject), (Throwable)returnCode2);
            }
            return returnCode;
        }
    }

    private ArrayList<Experiment> mergeExperimentList(@NonNull List<Experiment> object) {
        ArrayList<Experiment> arrayList = new ArrayList<Experiment>();
        object = object.iterator();
        while (object.hasNext()) {
            Experiment experiment = (Experiment)object.next();
            Experiment experiment2 = this.mExperimentMap.get(experiment.getName());
            if (experiment2 != null) {
                experiment2.updateWithExperiment(experiment);
                arrayList.add(experiment2);
                continue;
            }
            arrayList.add(experiment);
        }
        return arrayList;
    }

    private void setExperimentList(@NonNull List<Experiment> object) {
        this.clearExperimentList();
        object = object.iterator();
        while (object.hasNext()) {
            Experiment experiment = (Experiment)object.next();
            this.mExperimentMap.put(experiment.getName(), experiment);
        }
    }

    private void setUserId(Context context, String string2) {
        synchronized (this) {
            String string3 = TAG + ".setUserId";
            if (this.mUserId != null && !this.mUserId.equals(string2)) {
                Log.w((String)string3, (String)("userId has changed: '" + this.mUserId + "' --> '" + string2 + "', resetting experiment data"));
                this.clear(context, true);
            }
            this.mUserId = string2;
            return;
        }
    }

    private void updateExperimentList(@NonNull List<Experiment> list) {
        this.setExperimentList(this.mergeExperimentList(list));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void conductExperiment(@NonNull String string2, @NonNull Map<String, VariantBlockInterface> map, @NonNull VariantBlockInterface variantBlockInterface) {
        synchronized (this) {
            String string3 = TAG + ".conductExperiment";
            if (string2 == null) {
                throw new IllegalArgumentException("experimentName parameter cannot be null");
            }
            if (map == null) {
                throw new IllegalArgumentException("variantBlockMap parameter cannot be null");
            }
            if (variantBlockInterface == null) {
                throw new IllegalArgumentException("fallbackBlock parameter cannot be null");
            }
            Experiment experiment = this.getExperimentForName(string2);
            if (experiment != null) {
                Log.d((String)string3, (String)("Executing variant block for:  Experiment: " + string2 + ", Variant: " + experiment.getSelectedVariantName()));
                experiment.executeBlock(map, variantBlockInterface);
            } else {
                Log.d((String)string3, (String)("Experiment not active.  Executing fallback block for:  Experiment: " + string2));
                variantBlockInterface.executeBlock(experiment);
            }
            return;
        }
    }

    public long getCacheTTL() {
        synchronized (this) {
            long l2 = this.mCacheTTL;
            return l2;
        }
    }

    public Environment getEnvironment() {
        synchronized (this) {
            Environment environment = this.mEnvironment;
            return environment;
        }
    }

    public Experiment getExperimentForName(@NonNull String object) {
        synchronized (this) {
            object = this.mExperimentMap.get(object);
            return object;
        }
    }

    public List<Experiment> getExperimentList() {
        synchronized (this) {
            ArrayList<Experiment> arrayList = new ArrayList<Experiment>(this.mExperimentMap.values());
            return arrayList;
        }
    }

    public ReturnCode initialize(@NonNull Context context, @NonNull String string2, @NonNull String string3, @Nullable CallbackInterface callbackInterface) {
        if (context == null) {
            throw new IllegalArgumentException("context parameter cannot be null");
        }
        if (string2 == null) {
            throw new IllegalArgumentException("experimentListAsset parameter cannot be null");
        }
        if (string3 == null) {
            throw new IllegalArgumentException("userId parameter cannot be null");
        }
        try {
            JSONObject jSONObject = Util.getJsonFromAsset(context, string2);
            return this.initialize(context, jSONObject, string3, callbackInterface);
        }
        catch (Exception var1_2) {
            throw new IllegalArgumentException("Invalid experiment list asset given: " + string2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public ReturnCode initialize(@NonNull Context context, @NonNull JSONObject jSONObject, @NonNull String object, @Nullable CallbackInterface callbackInterface) {
        if (context == null) {
            throw new IllegalArgumentException("context parameter cannot be null");
        }
        if (jSONObject == null) {
            throw new IllegalArgumentException("experimentListJson parameter cannot be null");
        }
        if (object == null) {
            throw new IllegalArgumentException("userId parameter cannot be null");
        }
        this.mCodeTimer.start();
        Object object2 = ReturnCode.SucceededNormally;
        this.setUserId(context, (String)object);
        if (System.currentTimeMillis() - this.mCacheTimestamp <= this.mCacheTTL) {
            int n2 = (int)((this.mCacheTTL + this.mCacheTimestamp - System.currentTimeMillis()) / 60000);
            Log.d((String)TAG, (String)("Using ABeagle cached data (cache expires in " + (n2 + 1) + " minutes)"));
            this.executeCallback(callbackInterface, (ReturnCode)((Object)object2), 0);
            return object2;
        }
        object = object2;
        if (object2 == ReturnCode.SucceededNormally) {
            object = this.loadExperimentsFromCache(context);
        }
        object2 = object;
        if (object == ReturnCode.SucceededNormally) {
            object2 = this.loadExperimentsFromJson(jSONObject);
        }
        if (object2 == ReturnCode.SucceededNormally) {
            this.saveExperimentsToCache(context);
        }
        if (object2 == ReturnCode.SucceededNormally) {
            this.loadABeagleData(context, callbackInterface);
        } else {
            this.executeCallback(callbackInterface, (ReturnCode)((Object)object2), 0);
        }
        if (object2 == ReturnCode.SucceededNormally) {
            this.mCacheTimestamp = System.currentTimeMillis();
        }
        return object2;
    }

    public void onStop(@NonNull Context context) {
        synchronized (this) {
            this.saveExperimentsToCache(context);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void saveExperimentsToCache(@NonNull Context object) {
        synchronized (this) {
            if (object == null) {
                throw new IllegalArgumentException("context parameter cannot be null");
            }
            String string2 = TAG + ".saveExperimentsToCache";
            try {
                Log.d((String)string2, (String)"Saving Experiments to Cache...");
                CodeTimer codeTimer = new CodeTimer().start();
                object = object.getApplicationContext().openFileOutput(this.getCachedDataFileName(), 0);
                ObjectOutputStream objectOutputStream = new ObjectOutputStream((OutputStream)object);
                Log.d((String)string2, (String)("  Environment: " + (Object)((Object)this.mEnvironment)));
                objectOutputStream.writeObject((Object)this.mEnvironment);
                Log.d((String)string2, (String)("  User ID: " + this.mUserId));
                objectOutputStream.writeObject(this.mUserId);
                Log.d((String)string2, (String)"  Experiments: ");
                for (Experiment experiment : this.getExperimentList()) {
                    Log.d((String)string2, (String)("    " + experiment));
                    objectOutputStream.writeObject(experiment);
                }
                objectOutputStream.close();
                object.close();
                Log.d((String)string2, (String)("Experiment data saved to cache in " + codeTimer.stop().getElapsedMilliseconds() + "ms"));
            }
            catch (Exception var1_2) {
                Log.e((String)string2, (String)"Error saving cached experiment data", (Throwable)var1_2);
            }
            return;
        }
    }

    public void setCacheTTL(long l2) {
        synchronized (this) {
            this.mCacheTTL = l2;
            return;
        }
    }

    public void setEnvironment(@NonNull Context context, @NonNull Environment environment) {
        synchronized (this) {
            if (!this.mEnvironment.equals((Object)environment)) {
                this.mEnvironment = environment;
                this.clear(context, true);
            }
            return;
        }
    }

    public static interface CallbackInterface {
        public void execute(ReturnCode var1, long var2);
    }

}

