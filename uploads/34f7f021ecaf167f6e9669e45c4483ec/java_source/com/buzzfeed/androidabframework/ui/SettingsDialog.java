/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.app.Dialog
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.widget.Toast
 */
package com.buzzfeed.androidabframework.ui;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.widget.Toast;
import com.buzzfeed.androidabframework.controller.ExperimentManager;
import com.buzzfeed.androidabframework.data.Experiment;
import com.buzzfeed.androidabframework.data.Variant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class SettingsDialog {
    static final String SETTINGS_BACK = "Back";
    static final String SETTINGS_CLOSE = "Close";
    static final String SETTINGS_EXPERIMENTS = "Experiments";
    static final String SETTINGS_NO_EXPERIMENTS = "No A/B Experiments";
    static final String SETTINGS_RESET = "Reset";
    static final String SETTINGS_RESET_ALL = "Reset All";

    private Dialog createExperimentListDialog(final Context context) {
        final ArrayList<Experiment> arrayList = new ArrayList<Experiment>(ExperimentManager.getInstance().getExperimentList());
        if (arrayList.size() == 0) {
            Toast.makeText((Context)context, (CharSequence)"No A/B Experiments", (int)0).show();
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle((CharSequence)"Experiments");
        CharSequence[] arrcharSequence = new CharSequence[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); ++i2) {
            arrcharSequence[i2] = arrayList.get(i2).getName();
        }
        builder.setItems(arrcharSequence, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface object, int n2) {
                object = (Experiment)arrayList.get(n2);
                SettingsDialog.this.createExperimentVariantListDialog(context, (Experiment)object).show();
            }
        });
        builder.setNeutralButton((CharSequence)"Reset All", new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                for (n2 = 0; n2 < arrayList.size(); ++n2) {
                    Experiment experiment = (Experiment)arrayList.get(n2);
                    experiment.setTemporaryVariant(null);
                    SettingsDialog.this.experimentTemporarySettingsChanged(context, experiment.getName());
                }
                dialogInterface.dismiss();
            }
        });
        builder.setPositiveButton((CharSequence)"Close", new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
            }
        });
        return builder.create();
    }

    private Dialog createExperimentVariantListDialog(final Context context, final Experiment experiment) {
        final ArrayList<Variant> arrayList = new ArrayList<Variant>(experiment.getVariantList());
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle((CharSequence)experiment.getName());
        CharSequence[] arrcharSequence = new CharSequence[arrayList.size()];
        int n2 = -1;
        for (int i2 = 0; i2 < arrayList.size(); ++i2) {
            Variant variant = arrayList.get(i2);
            arrcharSequence[i2] = variant.getName();
            if (!variant.getName().equals(experiment.getSelectedVariantName())) continue;
            n2 = i2;
        }
        builder.setSingleChoiceItems(arrcharSequence, n2, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface object, int n2) {
                object = (Variant)arrayList.get(n2);
                experiment.setTemporaryVariant(object.getName());
                SettingsDialog.this.experimentTemporarySettingsChanged(context, experiment.getName());
            }
        });
        builder.setNeutralButton((CharSequence)"Reset", new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                experiment.setTemporaryVariant(null);
                SettingsDialog.this.experimentTemporarySettingsChanged(context, experiment.getName());
                dialogInterface.dismiss();
                SettingsDialog.this.createExperimentListDialog(context).show();
            }
        });
        builder.setPositiveButton((CharSequence)"Back", new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n2) {
                dialogInterface.dismiss();
                SettingsDialog.this.createExperimentListDialog(context).show();
            }
        });
        return builder.create();
    }

    private void experimentTemporarySettingsChanged(Context context, String string2) {
        ExperimentManager.getInstance().saveExperimentsToCache(context);
        this.onExperimentTemporarySettingsChanged(string2);
    }

    public Dialog create(Context context) {
        return this.createExperimentListDialog(context);
    }

    public abstract void onExperimentTemporarySettingsChanged(String var1);

}

