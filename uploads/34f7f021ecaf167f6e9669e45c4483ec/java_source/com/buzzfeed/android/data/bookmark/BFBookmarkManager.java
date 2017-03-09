/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.content.res.Resources
 *  android.os.Handler
 *  android.preference.PreferenceManager
 *  android.text.TextUtils
 *  android.view.View
 *  android.view.Window
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.Button
 *  okhttp3.ResponseBody
 *  org.json.JSONException
 *  org.json.JSONObject
 *  retrofit2.Response
 */
package com.buzzfeed.android.data.bookmark;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Button;
import com.buzzfeed.android.activity.SpicyActivity;
import com.buzzfeed.android.data.Bookmark;
import com.buzzfeed.android.data.Buzz;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.FlowItem;
import com.buzzfeed.android.data.bookmark.BookmarkConverter;
import com.buzzfeed.android.data.bookmark.BookmarkFlowList;
import com.buzzfeed.android.data.factory.MobileFeedFactory;
import com.buzzfeed.android.database.BFCacheData;
import com.buzzfeed.android.database.BFDatabaseManager;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.android.util.BuzzApiClient;
import com.buzzfeed.android.util.BuzzFeedJsonReader;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.ContentFactory;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.retrofit.RetryCallback;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.StringCallback;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class BFBookmarkManager {
    private static final String SETTINGS_KEY_SYNCED_ON_UPGRADE = "bookmarksSyncedOnUpgrade";
    private static final String TAG = BFBookmarkManager.class.getSimpleName();
    private static BFBookmarkManager bookmarkManager;
    public static boolean hasPromptedToSignInBookmarkFeed;
    public static boolean hasPromptedToSignInHomeFeed;
    private static AlertDialog mCurrentAlertDialog;
    private BookmarkFlowList bookmarkList = new BookmarkFlowList();
    private HashMap<String, com.buzzfeed.toolkit.content.FlowItem> bookmarkSyncMap = new HashMap();
    private ArrayList<com.buzzfeed.toolkit.content.Buzz> buzzesToAdd = new ArrayList();
    private ArrayList<com.buzzfeed.toolkit.content.Buzz> buzzesToDelete = new ArrayList();
    private Context context;
    private BFDatabaseManager databaseManager;
    private boolean hasSyncedOnUpgrade = false;
    private boolean isSynced;
    private boolean isSyncing;
    private CompletionListener listener;

    private BFBookmarkManager(Context context, BFDatabaseManager bFDatabaseManager) {
        this.context = context.getApplicationContext();
        this.databaseManager = bFDatabaseManager;
        this.isSyncing = false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void addLocalBookmarksToServer(final BuzzUser buzzUser) {
        synchronized (this) {
            final String string2 = TAG + ".addLocalBookmarksToServer";
            String string3 = buzzUser.getSessionKey();
            String string4 = buzzUser.getSyncId() != null ? buzzUser.getSyncId() : "";
            BuzzApiClient.addBookmarks(this.buzzesToAdd, string3, string4, new StringCallback(){

                @Override
                public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                    LogUtil.e(string2, "Error adding bookmarks to server ", throwable);
                    BFBookmarkManager.this.onUploadBookmarksCompleted(false);
                }

                @Override
                protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                    object = HttpErrorParser.createExceptionOnHttpError(response.code());
                    LogUtil.e(string2, "IOException accessing response body ", (Throwable)object);
                }

                @Override
                public void onStringResponse(String string22) {
                    BFBookmarkManager.this.handleAddBookmarksResponse(string22, buzzUser);
                }
            });
            return;
        }
    }

    private com.buzzfeed.toolkit.content.Buzz convertPostContentToBuzz(PostContent postContent) {
        if (!(postContent instanceof com.buzzfeed.toolkit.content.Buzz)) {
            return BookmarkConverter.fromPostContent(postContent, UIUtil.getScreenDensityDpi(Resources.getSystem()));
        }
        return (com.buzzfeed.toolkit.content.Buzz)postContent;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void deleteBookmarksFromServer(final BuzzUser buzzUser) {
        synchronized (this) {
            final String string2 = TAG + ".deleteBookmarksFromServer";
            String string3 = buzzUser.getSessionKey();
            String string4 = buzzUser.getSyncId() != null ? buzzUser.getSyncId() : "";
            final com.buzzfeed.toolkit.content.Buzz buzz = this.buzzesToDelete.get(this.buzzesToDelete.size() - 1);
            BuzzApiClient.deleteBookmark(buzz, string3, string4, new StringCallback(){

                @Override
                public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                    LogUtil.e(string2, "Error deleting bookmarks from server ", throwable);
                    BFBookmarkManager.this.onUploadBookmarksCompleted(false);
                }

                @Override
                protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                    object = HttpErrorParser.createExceptionOnHttpError(response.code());
                    LogUtil.e(string2, "Network Response Error " + response.code(), (Throwable)object);
                }

                @Override
                public void onStringResponse(String string22) {
                    BFBookmarkManager.this.handleDeleteBookmarkResponse(buzz, string22, buzzUser);
                }
            });
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private FlowList getBookmarkListAndSetSyncId(BuzzFeedJsonReader var1_1) throws IOException {
        var18_2 = BFBookmarkManager.TAG + ".getBookmarkListAndSetSyncId";
        var5_3 = false;
        var6_4 = false;
        var19_5 = new FlowList();
        var7_6 = System.currentTimeMillis();
        if (var1_1 == null) ** GOTO lbl30
        var20_7 = BuzzUser.getInstance(this.context);
        var1_1.beginObject();
        var5_3 = var6_4;
        do {
            if (!var1_1.hasNext()) ** GOTO lbl29
            var15_14 = var1_1.nextName();
            if (var15_14.equals("success")) {
                var5_3 = var1_1.nextString().equals("1");
                LogUtil.d(var18_2, "success: " + var5_3);
                continue;
            }
            if (var15_14.equals("sync_id")) {
                var15_14 = var1_1.nextString();
                var20_7.setSyncId((String)var15_14);
                LogUtil.d(var18_2, "sync_id: " + (String)var15_14);
                continue;
            }
            if (var15_14.equals("bookmarks")) {
                var2_8 = 0;
                var1_1.beginArray();
            } else {
                LogUtil.d(var18_2, "Skipping key: " + (String)var15_14);
                var1_1.skipValue();
                continue;
lbl29: // 1 sources:
                var1_1.endObject();
lbl30: // 2 sources:
                if (var5_3 == false) return null;
                return var19_5;
            }
            while (var1_1.hasNext()) {
                block14 : {
                    var15_14 = null;
                    var3_9 = var2_8;
                    var11_12 = var7_6;
                    var4_10 = var2_8;
                    var13_13 = var7_6;
                    var15_14 = var17_18 = var1_1.getArrayObjectAsJson();
                    var3_9 = var2_8;
                    var11_12 = var7_6;
                    var4_10 = var2_8;
                    var13_13 = var7_6;
                    var16_16 = new com.buzzfeed.toolkit.content.Buzz();
                    var15_14 = var17_18;
                    var3_9 = var2_8;
                    var11_12 = var7_6;
                    var4_10 = var2_8;
                    var13_13 = var7_6;
                    var16_16.parse((JSONObject)var17_18);
                    var15_14 = var17_18;
                    var3_9 = var2_8;
                    var11_12 = var7_6;
                    var4_10 = var2_8;
                    var13_13 = var7_6;
                    if (var16_16.isAd()) {
                        var15_14 = var17_18;
                        var3_9 = var2_8;
                        var11_12 = var7_6;
                        var4_10 = var2_8;
                        var13_13 = var7_6;
                        var16_16 = BuffetType.EDITORIAL_AD;
                    } else {
                        var15_14 = var17_18;
                        var3_9 = var2_8;
                        var11_12 = var7_6;
                        var4_10 = var2_8;
                        var13_13 = var7_6;
                        var16_16 = BuffetType.POST;
                    }
                    var15_14 = var17_18;
                    var3_9 = var2_8;
                    var11_12 = var7_6;
                    var4_10 = var2_8;
                    var13_13 = var7_6;
                    var21_19 = new com.buzzfeed.toolkit.content.FlowItem();
                    var15_14 = var17_18;
                    var3_9 = var2_8;
                    var11_12 = var7_6;
                    var4_10 = var2_8;
                    var13_13 = var7_6;
                    var21_19.parse((JSONObject)var17_18, new MobileFeedFactory(var16_16.name()));
                    var15_14 = var17_18;
                    var3_9 = var2_8;
                    var11_12 = var7_6;
                    var4_10 = var2_8;
                    var13_13 = var7_6;
                    var16_16 = (com.buzzfeed.toolkit.content.Buzz)var21_19.getContent();
                    var9_11 = var7_6;
                    var15_14 = var17_18;
                    var3_9 = var2_8;
                    var11_12 = var7_6;
                    var4_10 = var2_8;
                    var13_13 = var7_6;
                    if (var16_16.getBookmarked() > 0) break block14;
                    var15_14 = var17_18;
                    var3_9 = var2_8;
                    var11_12 = var7_6;
                    var4_10 = var2_8;
                    var13_13 = var7_6;
                    var16_16.setBookmarked(var7_6);
                    var9_11 = var7_6 - 1;
                }
                var15_14 = var17_18;
                var3_9 = ++var2_8;
                var11_12 = var9_11;
                var4_10 = var2_8;
                var13_13 = var9_11;
                try {
                    if (var16_16.isValid()) {
                        var15_14 = var17_18;
                        var3_9 = var2_8;
                        var11_12 = var9_11;
                        var4_10 = var2_8;
                        var13_13 = var9_11;
                        var19_5.add(var21_19);
                        var15_14 = var17_18;
                        var3_9 = var2_8;
                        var11_12 = var9_11;
                        var4_10 = var2_8;
                        var13_13 = var9_11;
                        LogUtil.d(var18_2, "Successfully parsed bookmark buzz: " + var16_16.toString());
                        var7_6 = var9_11;
                    }
                    ** GOTO lbl129
                }
                catch (JSONException var16_17) {
                    var17_18 = new StringBuilder().append("Error parsing buzz (invalid JSONObject): ");
                    var15_14 = var15_14 == null ? "null" : var15_14.toString();
lbl129: // 1 sources:
                    var15_14 = var17_18;
                    var3_9 = var2_8;
                    var11_12 = var9_11;
                    var4_10 = var2_8;
                    var13_13 = var9_11;
                    LogUtil.e(var18_2, "Error parsing buzz (missing fields): " + var16_16.toString());
                    var7_6 = var9_11;
                    continue;
                    catch (Exception var15_15) {
                        LogUtil.e(var18_2, "Internal Error parsing buzz (invalid JSONObject)", var15_15);
                        var2_8 = var4_10;
                        var7_6 = var13_13;
                    }
                    LogUtil.e(var18_2, var17_18.append((String)var15_14).toString(), (Throwable)var16_17);
                    var2_8 = var3_9;
                    var7_6 = var11_12;
                }
            }
            var1_1.endArray();
            LogUtil.i(var18_2, "Synchronized " + var2_8 + " bookmarks");
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private BuzzFeedJsonReader getBuzzFeedJsonReaderFromResponseString(String object) {
        BuzzFeedJsonReader buzzFeedJsonReader;
        String string2 = TAG + ".getBuzzFeedJsonReaderFromResponseString";
        BuzzFeedJsonReader buzzFeedJsonReader2 = buzzFeedJsonReader = null;
        if (object == null) return buzzFeedJsonReader2;
        buzzFeedJsonReader2 = buzzFeedJsonReader;
        if (object.isEmpty()) return buzzFeedJsonReader2;
        try {
            object = new ByteArrayInputStream(object.getBytes("UTF-8"));
        }
        catch (UnsupportedEncodingException var1_2) {}
        try {
            return new BuzzFeedJsonReader(new InputStreamReader((InputStream)object, "UTF-8"));
        }
        catch (UnsupportedEncodingException var1_4) {}
        {
            void var1_3;
            LogUtil.e(string2, "UnsupportedEncodingException: ", (Throwable)var1_3);
            return null;
        }
    }

    public static BFBookmarkManager getInstance(Context object) {
        synchronized (BFBookmarkManager.class) {
            if (bookmarkManager == null) {
                bookmarkManager = new BFBookmarkManager((Context)object, BFDatabaseManager.getInstance(object.getApplicationContext()));
            }
            object = bookmarkManager;
            return object;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void handleAddBookmarksResponse(String string2, BuzzUser buzzUser) {
        synchronized (this) {
            try {
                for (com.buzzfeed.toolkit.content.Buzz buzz : this.buzzesToAdd) {
                    this.bookmarkSyncMap.remove(buzz.getId());
                }
                this.buzzesToAdd.clear();
                string2 = new JSONObject(string2);
                boolean bl = string2.optString("success").equals("1");
                buzzUser.setSyncId(string2.optString("sync_id"));
                if (bl && this.buzzesToDelete.size() > 0) {
                    this.deleteBookmarksFromServer(buzzUser);
                } else {
                    this.onUploadBookmarksCompleted(bl);
                }
            }
            catch (Exception var1_2) {
                LogUtil.e(TAG, "Error adding bookmarks to server ", var1_2);
                this.onUploadBookmarksCompleted(false);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private void handleDeleteBookmarkResponse(com.buzzfeed.toolkit.content.Buzz buzz, String string2, BuzzUser buzzUser) {
        // MONITORENTER : this
        try {
            string2 = new JSONObject(string2);
            boolean bl = string2.optString("success").equals("1");
            buzzUser.setSyncId(string2.optString("sync_id"));
            if (bl) {
                this.buzzesToDelete.remove(buzz);
                this.bookmarkSyncMap.remove(buzz.getId());
                if (this.buzzesToDelete.size() > 0) {
                    this.deleteBookmarksFromServer(buzzUser);
                    // MONITOREXIT : this
                    return;
                }
                this.onUploadBookmarksCompleted(true);
                return;
            }
            this.onUploadBookmarksCompleted(false);
            return;
        }
        catch (Exception var1_2) {
            LogUtil.e(TAG, "Error deleting bookmarks from server ", var1_2);
            this.onUploadBookmarksCompleted(false);
            return;
        }
    }

    private boolean isTypeBuzz(com.buzzfeed.toolkit.content.FlowItem flowItem) {
        if (flowItem.getContent() instanceof com.buzzfeed.toolkit.content.Buzz || flowItem.getContent() instanceof Buzz) {
            return true;
        }
        return false;
    }

    private void onBookmarkSyncCompleted(boolean bl, Throwable throwable) {
        this.isSyncing = false;
        this.isSynced = true;
        if (this.listener != null) {
            this.listener.onBookmarkSyncCompleted(bl, throwable);
        }
        if (bl) {
            PreferenceManager.getDefaultSharedPreferences((Context)this.context).edit().putBoolean("bookmarksSyncedOnUpgrade", true).apply();
            this.hasSyncedOnUpgrade = true;
        }
    }

    private void onUploadBookmarksCompleted(boolean bl) {
        if (this.listener != null) {
            this.listener.onUploadBookmarksCompleted(bl);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void setBookmark(com.buzzfeed.toolkit.content.FlowItem flowItem, boolean bl, boolean bl2) {
        synchronized (this) {
            String string2 = TAG + ".setBookmark";
            Object object = flowItem.getId();
            if (bl2) {
                this.bookmarkSyncMap.put((String)object, flowItem);
            }
            if (!(bl && this.bookmarkList.containsFlowItem(flowItem) || !bl && !(bl2 = this.bookmarkList.containsFlowItem(flowItem)))) {
                if (bl) {
                    if (this.isTypeBuzz(flowItem)) {
                        long l2 = System.currentTimeMillis();
                        com.buzzfeed.toolkit.content.Buzz buzz = (com.buzzfeed.toolkit.content.Buzz)flowItem.getContent();
                        if (buzz.getBookmarked() > 0) {
                            l2 = buzz.getBookmarked();
                        }
                        buzz.setBookmarked(l2);
                        object = buzz.isAd() ? BuffetType.EDITORIAL_AD.name() : BuffetType.POST.name();
                        object = new Bookmark(flowItem.getId(), (String)object, buzz.getJson(), l2);
                        this.databaseManager.bfCacheData.putObject(object.getId(), "bookmark", object);
                        LogUtil.v(string2, "Added bookmark to cache: " + object.toString());
                    } else {
                        this.databaseManager.bfCacheData.putObject(flowItem.getId(), "bookmark", flowItem);
                        LogUtil.v(string2, "Added bookmark to cache: " + flowItem.getId());
                    }
                    this.bookmarkList.add(0, flowItem);
                } else {
                    if (this.isTypeBuzz(flowItem)) {
                        ((com.buzzfeed.toolkit.content.Buzz)flowItem.getContent()).setBookmarked(0);
                    }
                    this.bookmarkList.remove(flowItem);
                    this.databaseManager.bfCacheData.delete(flowItem.getId(), "bookmark");
                    LogUtil.v(string2, "Removed bookmark from cache: " + flowItem.getId());
                }
            }
            return;
        }
    }

    public static void showNotSignedInDialog(SpicyActivity object) {
        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)object);
        builder.setTitle(2131296374);
        builder.setMessage(2131296372);
        String string2 = object.getString(2131296402);
        String string3 = object.getString(2131296369);
        object = new AdapterView.OnItemClickListener((SpicyActivity)object){
            final /* synthetic */ SpicyActivity val$activity;

            /*
             * Enabled aggressive block sorting
             */
            public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                switch (n2) {
                    default: {
                        break;
                    }
                    case 0: {
                        this.val$activity.startLoginActivityForResult();
                    }
                }
                if (mCurrentAlertDialog != null) {
                    mCurrentAlertDialog.dismiss();
                }
            }
        };
        builder.setStackedListItems(new String[]{string2, string3}, (AdapterView.OnItemClickListener)object);
        mCurrentAlertDialog = builder.create();
        mCurrentAlertDialog.show();
    }

    public static void showSaveYourBookmarksDialogLogIn(Activity object, final BookmarkChangeListener bookmarkChangeListener) {
        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)object);
        builder.setTitle(2131296373);
        builder.setMessage(2131296372);
        builder.setIsBookmarkWarningDialog(true);
        String string2 = object.getString(2131296402);
        String string3 = object.getString(2131296368);
        object = new AdapterView.OnItemClickListener((Activity)object){
            final /* synthetic */ Activity val$activity;

            /*
             * Enabled aggressive block sorting
             */
            public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                switch (n2) {
                    case 0: {
                        bookmarkChangeListener.onLoginRequest();
                    }
                    default: {
                        break;
                    }
                    case 1: {
                        BFBookmarkManager.showSecondWarningBookmarkDialog(this.val$activity, bookmarkChangeListener);
                    }
                }
                if (mCurrentAlertDialog != null) {
                    mCurrentAlertDialog.dismiss();
                }
            }
        };
        builder.setStackedListItems(new String[]{string2, string3}, (AdapterView.OnItemClickListener)object);
        mCurrentAlertDialog = builder.create();
        mCurrentAlertDialog.setCancelable(false);
        mCurrentAlertDialog.show();
    }

    private static void showSecondWarningBookmarkDialog(final Activity activity, BookmarkChangeListener object) {
        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)activity);
        builder.setTitle(2131296371);
        builder.setMessage(2131296370);
        builder.setNegativeButton(17039360, new DialogInterface.OnClickListener((BookmarkChangeListener)object){
            final /* synthetic */ BookmarkChangeListener val$changeListener;

            public void onClick(DialogInterface dialogInterface, int n2) {
                BFBookmarkManager.showSaveYourBookmarksDialogLogIn(activity, this.val$changeListener);
            }
        });
        builder.setPositiveButton(2131296367, new DialogInterface.OnClickListener((BookmarkChangeListener)object){
            final /* synthetic */ BookmarkChangeListener val$changeListener;

            public void onClick(DialogInterface dialogInterface, int n2) {
                bookmarkManager.resetBookmarks();
                BuzzUtils.showSnackBarNotification(activity.getWindow().getDecorView().getRootView(), activity.getString(2131296375), 0);
                if (this.val$changeListener != null) {
                    this.val$changeListener.onBookmarksChanged();
                }
            }
        });
        object = builder.create();
        object.setCancelable(false);
        object.show();
        object.getButton(-1).setTextColor(ContextCompat.getColor((Context)activity, 2131755045));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void syncBookmarksWithJson(FlowList object) {
        synchronized (this) {
            int n2 = 0;
            do {
                com.buzzfeed.toolkit.content.FlowItem flowItem;
                int n3;
                if (n2 < this.bookmarkList.size()) {
                    flowItem = this.bookmarkList.get(n2);
                    n3 = n2;
                    if (!this.bookmarkSyncMap.containsKey(flowItem.getId())) {
                        n3 = n2;
                        if (!object.containsFlowItem(flowItem)) {
                            this.setBookmark(flowItem, false, false);
                            n3 = n2 - 1;
                        }
                    }
                } else {
                    object = object.iterator();
                    do {
                        if (!object.hasNext()) {
                            this.bookmarkList.sort(new Comparator<com.buzzfeed.toolkit.content.FlowItem>(){

                                @Override
                                public int compare(com.buzzfeed.toolkit.content.FlowItem content, com.buzzfeed.toolkit.content.FlowItem flowItem) {
                                    if (BFBookmarkManager.this.isTypeBuzz(content) && BFBookmarkManager.this.isTypeBuzz(flowItem)) {
                                        content = (com.buzzfeed.toolkit.content.Buzz)content.getContent();
                                        long l2 = ((com.buzzfeed.toolkit.content.Buzz)flowItem.getContent()).getBookmarked() - content.getBookmarked();
                                        if (l2 < 0) {
                                            return -1;
                                        }
                                        if (l2 > 0) {
                                            return 1;
                                        }
                                    }
                                    return 0;
                                }
                            });
                            return;
                        }
                        flowItem = (com.buzzfeed.toolkit.content.FlowItem)object.next();
                        if (this.bookmarkList.containsFlowItem(flowItem)) continue;
                        this.setBookmark(flowItem, true, false);
                    } while (true);
                }
                n2 = n3 + 1;
            } while (true);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int getBookmarkCount() {
        synchronized (this) {
            block6 : {
                BookmarkFlowList bookmarkFlowList = this.bookmarkList;
                if (bookmarkFlowList != null) break block6;
                return 0;
            }
            int n2 = this.bookmarkList.size();
            return n2;
        }
    }

    public FlowList getBookmarks() {
        synchronized (this) {
            BookmarkFlowList bookmarkFlowList = this.bookmarkList;
            return bookmarkFlowList;
        }
    }

    public int getSyncListCount() {
        synchronized (this) {
            int n2 = this.bookmarkSyncMap.size();
            return n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void handleGetBookmarkListResponse(Object object) {
        boolean bl = false;
        synchronized (this) {
            String string2 = TAG + ".handleGetBookmarkListResponse";
            try {
                object = (String)object;
                LogUtil.d(string2, "Response: " + (String)object);
                object = this.getBookmarkListAndSetSyncId(this.getBuzzFeedJsonReaderFromResponseString((String)object));
                if (object != null) {
                    bl = true;
                }
                if (bl) {
                    this.syncBookmarksWithJson((FlowList)object);
                    if (this.bookmarkSyncMap.size() > 0) {
                        this.uploadLocalBookmarkChanges();
                    }
                }
                this.onBookmarkSyncCompleted(bl, null);
            }
            catch (Exception var1_2) {
                LogUtil.e(string2, "Error syncing bookmarks", var1_2);
                this.onBookmarkSyncCompleted(false, null);
            }
            return;
        }
    }

    public boolean hasSyncedOnUpgrade() {
        return this.hasSyncedOnUpgrade;
    }

    public boolean isBookmarked(Content content) {
        synchronized (this) {
            boolean bl = this.bookmarkList.containsContent(content);
            return bl;
        }
    }

    public boolean isSynced() {
        return this.isSynced;
    }

    public boolean isSyncing() {
        return this.isSyncing;
    }

    public void onUserLoggedIn() {
        synchronized (this) {
            Iterator<com.buzzfeed.toolkit.content.FlowItem> iterator = this.bookmarkList.iterator();
            while (iterator.hasNext()) {
                this.setBookmark(iterator.next(), true, true);
            }
            return;
        }
    }

    public void promptLoginNotice(Activity activity, BookmarkChangeListener bookmarkChangeListener) {
        if (!BuzzUser.getInstance((Context)activity).isLogin() && this.getBookmarkCount() > 0) {
            BFBookmarkManager.showSaveYourBookmarksDialogLogIn(activity, bookmarkChangeListener);
        }
    }

    public void resetBookmarks() {
        synchronized (this) {
            this.bookmarkSyncMap.clear();
            this.databaseManager.bfCacheData.deleteAllOfType("bookmark");
            this.bookmarkList.clear();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void restoreBookmarks() {
        synchronized (this) {
            Object object;
            Object object22 = TAG + ".restoreBookmarks";
            this.bookmarkList.clear();
            Object object3 = this.databaseManager.bfCacheData.getObjectsList("bookmark");
            long l2 = System.currentTimeMillis();
            if (object3 != null && object3.size() > 0) {
                object = object3.iterator();
                while (object.hasNext()) {
                    long l3;
                    Bookmark bookmark;
                    long l4;
                    com.buzzfeed.toolkit.content.FlowItem flowItem;
                    block22 : {
                        boolean bl;
                        object3 = object.next();
                        if (object3 instanceof com.buzzfeed.toolkit.content.FlowItem) {
                            bl = (object3 = (com.buzzfeed.toolkit.content.FlowItem)object3).getContent() instanceof com.buzzfeed.toolkit.content.Buzz;
                            if (!bl) continue;
                            try {
                                bookmark = (com.buzzfeed.toolkit.content.Buzz)object3.getContent();
                                bookmark.parse(bookmark.getJson());
                                this.bookmarkList.add((com.buzzfeed.toolkit.content.FlowItem)object3);
                                LogUtil.v((String)object22, "Restored FlowItem/Buzz bookmark: " + bookmark.toString());
                            }
                            catch (Exception var8_3) {
                                LogUtil.e((String)object22, "Error in Content JSON when trying to parse it into flow item", var8_3);
                            }
                            continue;
                        }
                        if (object3 instanceof FlowItem) {
                            block21 : {
                                bl = (object3 = (FlowItem)object3).getContent() instanceof Buzz;
                                if (!bl) continue;
                                l4 = l2;
                                bookmark = (Buzz)object3.getContent();
                                l4 = l2;
                                flowItem = new com.buzzfeed.toolkit.content.FlowItem();
                                l4 = l2;
                                object3 = BuffetType.POST;
                                l4 = l2;
                                if (bookmark.isAd()) {
                                    l4 = l2;
                                    object3 = BuffetType.EDITORIAL_AD;
                                }
                                l4 = l2;
                                flowItem.parse(new JSONObject(bookmark.getJson()), new MobileFeedFactory(object3.name()));
                                l4 = l2;
                                object3 = (com.buzzfeed.toolkit.content.Buzz)flowItem.getContent();
                                l4 = l2;
                                object3.setBookmarked(bookmark.getBookmarked());
                                l3 = l2;
                                l4 = l2;
                                if (object3.getBookmarked() > 0) break block21;
                                l4 = l2;
                                object3.setBookmarked(l2);
                                l3 = l2 - 1;
                            }
                            l4 = l3;
                            try {
                                this.bookmarkList.add(flowItem);
                                l4 = l3;
                                LogUtil.v((String)object22, "Restored LegacyFlowItem/LegacyBuzz bookmark: " + object3.toString());
                                l2 = l3;
                            }
                            catch (Exception var8_4) {
                                LogUtil.e((String)object22, "Error in Content JSON when trying to parse it into flow item", var8_4);
                                l2 = l4;
                            }
                            continue;
                        }
                        if (!(object3 instanceof Bookmark) || (bl = TextUtils.isEmpty((CharSequence)(bookmark = (Bookmark)object3).getJson()))) continue;
                        l4 = l2;
                        flowItem = new com.buzzfeed.toolkit.content.FlowItem();
                        l4 = l2;
                        object3 = BuffetType.POST;
                        l4 = l2;
                        if ("ad".equals(bookmark.getType())) {
                            l4 = l2;
                            object3 = BuffetType.EDITORIAL_AD;
                        }
                        l4 = l2;
                        flowItem.parse(new JSONObject(bookmark.getJson()), new MobileFeedFactory(object3.name()));
                        l4 = l2;
                        object3 = (com.buzzfeed.toolkit.content.Buzz)flowItem.getContent();
                        l4 = l2;
                        object3.setBookmarked(bookmark.getTimestamp());
                        l3 = l2;
                        l4 = l2;
                        if (object3.getBookmarked() > 0) break block22;
                        l4 = l2;
                        object3.setBookmarked(l2);
                        l3 = l2 - 1;
                    }
                    l4 = l3;
                    try {
                        this.bookmarkList.add(flowItem);
                        l4 = l3;
                        LogUtil.v((String)object22, "Restored bookmark: " + bookmark.toString());
                        l2 = l3;
                    }
                    catch (Exception var8_5) {
                        LogUtil.e((String)object22, "Error in Content JSON when trying to parse it into flow item", var8_5);
                        l2 = l4;
                    }
                }
            }
            this.hasSyncedOnUpgrade = PreferenceManager.getDefaultSharedPreferences((Context)this.context).getBoolean("bookmarksSyncedOnUpgrade", false);
            if (!this.hasSyncedOnUpgrade) {
                for (Object object22 : this.bookmarkList.getList()) {
                    object = object22.getId();
                    this.bookmarkSyncMap.put((String)object, (com.buzzfeed.toolkit.content.FlowItem)object22);
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setBookmark(com.buzzfeed.toolkit.content.Buzz buzz, boolean bl) {
        com.buzzfeed.toolkit.content.Buzz buzz2;
        if (buzz.isAd()) {
            buzz2 = buzz.clone();
            buzz2.setId(buzz.getId());
        } else {
            buzz2 = buzz;
        }
        BuffetType buffetType = buzz2.isAd() ? BuffetType.EDITORIAL_AD : BuffetType.POST;
        this.setBookmark(new com.buzzfeed.toolkit.content.FlowItem(buffetType.toString(), buzz2), bl, true);
        buzz.setBookmarked(buzz2.getBookmarked());
        this.isSynced = false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean setIsBookmarked(com.buzzfeed.toolkit.content.Buzz buzz) {
        boolean bl = false;
        synchronized (this) {
            if (buzz == null) return bl;
            int n2 = this.bookmarkList.getLocationForContent(buzz);
            if (n2 >= 0) {
                long l2 = ((com.buzzfeed.toolkit.content.Buzz)this.bookmarkList.get(n2).getContent()).isBookmarked() ? 1 : 0;
                buzz.setBookmarked(l2);
                return buzz.isBookmarked();
            }
            buzz.setBookmarked(0);
            return bl;
        }
    }

    public void setListener(CompletionListener completionListener) {
        this.listener = completionListener;
    }

    /*
     * Enabled aggressive block sorting
     */
    public SafeCall<ResponseBody> syncBookmarks(boolean bl, SyncCompleteListener object) {
        final String string2 = TAG + ".syncBookmarks";
        BuzzUser buzzUser = BuzzUser.getInstance(this.context);
        if (buzzUser != null && buzzUser.getUserid() != null) {
            String string3 = buzzUser.getSessionKey();
            String string4 = bl ? "" : buzzUser.getSyncId();
            String string5 = string4;
            if (string4 == null) {
                string5 = "";
            }
            this.isSyncing = true;
            object = new RetryCallback<ResponseBody>(new Handler(), (SyncCompleteListener)object){
                final /* synthetic */ SyncCompleteListener val$syncCompleteListener;

                @Override
                public void onFailedAfterRetry(Throwable throwable) {
                    LogUtil.e(string2, "Error syncBookmarks", throwable);
                    BFBookmarkManager.this.onBookmarkSyncCompleted(false, throwable);
                    if (this.val$syncCompleteListener != null) {
                        this.val$syncCompleteListener.onBookmarkSyncError(new Exception(throwable));
                    }
                }

                /*
                 * Enabled aggressive block sorting
                 * Enabled unnecessary exception pruning
                 * Enabled aggressive exception aggregation
                 */
                @Override
                public void onSafeResponse(Call<ResponseBody> object, Response<ResponseBody> response) {
                    if (!response.isSuccessful()) {
                        object = HttpErrorParser.createExceptionOnHttpError(response.code());
                        this.val$syncCompleteListener.onBookmarkSyncError((Exception)object);
                        return;
                    }
                    try {
                        BFBookmarkManager.this.handleGetBookmarkListResponse(((ResponseBody)response.body()).string());
                    }
                    catch (IOException var1_2) {
                        LogUtil.e(string2, "IOException accessing response body ", var1_2);
                    }
                    if (this.val$syncCompleteListener != null) {
                        this.val$syncCompleteListener.onBookmarkSyncCompleted();
                    }
                }
            };
            object.setRetryCount(1);
            return BuzzApiClient.getBookmarksList(string3, string5, buzzUser.getUserid(), object);
        }
        LogUtil.d(string2, "User is not logged in.  Nothing to sync.");
        if (object != null) {
            object.onBookmarkSyncCompleted();
        }
        return null;
    }

    public void syncBookmarks(boolean bl) {
        this.syncBookmarks(bl, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void toggleBookmark(PostContent postContent, ToggleBookmarkInterface toggleBookmarkInterface) {
        boolean bl = this.isBookmarked(postContent);
        BuzzUser buzzUser = BuzzUser.getInstance(this.context);
        if (!(bl || buzzUser != null && buzzUser.isLogin())) {
            toggleBookmarkInterface.userLogin();
            return;
        } else {
            if (postContent == null || !postContent.isValid()) return;
            {
                postContent = this.convertPostContentToBuzz(postContent);
                bl = !bl;
            }
        }
        this.setBookmark((com.buzzfeed.toolkit.content.Buzz)postContent, bl);
        this.uploadLocalBookmarkChanges();
        toggleBookmarkInterface.bookmarkToggled();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateLocalBookmarksFromServer(BuzzUser buzzUser, boolean bl) {
        final String string2 = TAG + ".updateLocalBookmarksFromServer";
        String string3 = buzzUser.getSessionKey();
        String string4 = bl ? "" : buzzUser.getSyncId();
        String string5 = string4;
        if (string4 == null) {
            string5 = "";
        }
        this.isSyncing = true;
        BuzzApiClient.getBookmarksList(string3, string5, buzzUser.getUserid(), new StringCallback(){

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                LogUtil.e(string2, "Error retrieving bookmarks list", throwable);
                BFBookmarkManager.this.onBookmarkSyncCompleted(false, throwable);
            }

            @Override
            protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                object = HttpErrorParser.createExceptionOnHttpError(response.code());
                LogUtil.e(string2, "Network Response Error ", (Throwable)object);
                BFBookmarkManager.this.onBookmarkSyncCompleted(false, null);
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public void onStringResponse(String object) {
                try {
                    object = BFBookmarkManager.this.getBuzzFeedJsonReaderFromResponseString((String)object);
                    object = BFBookmarkManager.this.getBookmarkListAndSetSyncId((BuzzFeedJsonReader)object);
                    boolean bl = object != null;
                    if (bl) {
                        BFBookmarkManager.this.syncBookmarksWithJson((FlowList)object);
                    }
                    BFBookmarkManager.this.onBookmarkSyncCompleted(bl, null);
                    return;
                }
                catch (Exception var1_2) {
                    LogUtil.e(string2, "Error retrieving bookmarks list ", var1_2);
                    BFBookmarkManager.this.onBookmarkSyncCompleted(false, null);
                    return;
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void uploadLocalBookmarkChanges() {
        synchronized (this) {
            boolean bl;
            BuzzUser buzzUser = BuzzUser.getInstance(this.context);
            if (buzzUser != null && (bl = buzzUser.isLogin())) {
                if (this.bookmarkSyncMap.size() == 0) {
                    this.onUploadBookmarksCompleted(true);
                } else {
                    for (com.buzzfeed.toolkit.content.FlowItem flowItem /* !! */  : new ArrayList<com.buzzfeed.toolkit.content.FlowItem>(this.bookmarkSyncMap.values())) {
                        if (!this.isTypeBuzz(flowItem /* !! */ )) continue;
                        if ((flowItem /* !! */  = (com.buzzfeed.toolkit.content.Buzz)flowItem /* !! */ .getContent()).isBookmarked()) {
                            this.buzzesToAdd.add((com.buzzfeed.toolkit.content.Buzz)((Object)flowItem /* !! */ ));
                            continue;
                        }
                        this.buzzesToDelete.add((com.buzzfeed.toolkit.content.Buzz)((Object)flowItem /* !! */ ));
                    }
                    if (this.buzzesToAdd.size() > 0) {
                        this.addLocalBookmarksToServer(buzzUser);
                    } else if (this.buzzesToDelete.size() > 0) {
                        this.deleteBookmarksFromServer(buzzUser);
                    }
                }
            }
            return;
        }
    }

    public static interface BookmarkChangeListener {
        public void onBookmarksChanged();

        public void onLoginRequest();
    }

    public static interface CompletionListener {
        public void onBookmarkSyncCompleted(boolean var1, Throwable var2);

        public void onUploadBookmarksCompleted(boolean var1);
    }

    public static interface SyncCompleteListener {
        public void onBookmarkSyncCompleted();

        public void onBookmarkSyncError(Exception var1);
    }

    public static interface ToggleBookmarkInterface {
        public void bookmarkToggled();

        public void userLogin();
    }

}

