/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.navigation;

import android.support.annotation.NonNull;
import com.buzzfeed.android.navigation.FeedListDataSource;
import com.buzzfeed.android.navigation.NavigationModel;
import com.buzzfeed.android.navigation.data.BaseNavigationModelFactory;
import com.buzzfeed.android.navigation.data.DeDENavigationModelFactory;
import com.buzzfeed.android.navigation.data.EnAUNavigationModelFactory;
import com.buzzfeed.android.navigation.data.EnCANavigationModelFactory;
import com.buzzfeed.android.navigation.data.EnINNavigationModelFactory;
import com.buzzfeed.android.navigation.data.EnUKNavigationModelFactory;
import com.buzzfeed.android.navigation.data.EnUSNavigationModelFactory;
import com.buzzfeed.android.navigation.data.EsESNavigationModelFactory;
import com.buzzfeed.android.navigation.data.EsMXNavigationModelFactory;
import com.buzzfeed.android.navigation.data.EsNavigationModelFactory;
import com.buzzfeed.android.navigation.data.FrFRNavigationModelFactory;
import com.buzzfeed.android.navigation.data.JaJPNavigationModelFactory;
import com.buzzfeed.android.navigation.data.PtBRNavigationModelFactory;
import com.buzzfeed.toolkit.util.LogUtil;

class FeedListLoader
implements FeedListDataSource {
    private static final String TAG = LogUtil.makeLogTag(FeedListLoader.class);
    private final BaseNavigationModelFactory mNavigationModelFactory;

    FeedListLoader(@NonNull String string2) {
        this.mNavigationModelFactory = this.getModelFactoryForEdition(string2);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @NonNull
    BaseNavigationModelFactory getModelFactoryForEdition(String var1_1) {
        var2_2 = -1;
        switch (var1_1.hashCode()) {
            case 95407437: {
                if (var1_1.equals("de-de")) {
                    var2_2 = 0;
                    ** break;
                }
                ** GOTO lbl56
            }
            case 96599000: {
                if (var1_1.equals("en-au")) {
                    var2_2 = 1;
                    ** break;
                }
                ** GOTO lbl56
            }
            case 96599042: {
                if (var1_1.equals("en-ca")) {
                    var2_2 = 2;
                    ** break;
                }
                ** GOTO lbl56
            }
            case 96599241: {
                if (var1_1.equals("en-in")) {
                    var2_2 = 3;
                    ** break;
                }
                ** GOTO lbl56
            }
            case 96599610: {
                if (var1_1.equals("en-uk")) {
                    var2_2 = 4;
                    ** break;
                }
                ** GOTO lbl56
            }
            case 96599618: {
                if (var1_1.equals("en-us")) {
                    var2_2 = 5;
                    ** break;
                }
                ** GOTO lbl56
            }
            case 3246: {
                if (var1_1.equals("es")) {
                    var2_2 = 6;
                    ** break;
                }
                ** GOTO lbl56
            }
            case 96748077: {
                if (var1_1.equals("es-es")) {
                    var2_2 = 7;
                    ** break;
                }
                ** GOTO lbl56
            }
            case 96748330: {
                if (var1_1.equals("es-mx")) {
                    var2_2 = 8;
                    ** break;
                }
                ** GOTO lbl56
            }
            case 97641837: {
                if (var1_1.equals("fr-fr")) {
                    var2_2 = 9;
                    ** break;
                }
                ** GOTO lbl56
            }
            case 100829596: {
                if (var1_1.equals("ja-jp")) {
                    var2_2 = 10;
                }
            }
lbl56: // 24 sources:
            default: {
                ** GOTO lbl61
            }
            case 106936505: 
        }
        if (var1_1.equals("pt-br")) {
            var2_2 = 11;
        }
lbl61: // 4 sources:
        switch (var2_2) {
            default: {
                LogUtil.e(FeedListLoader.TAG, "Unable to match edition to handler. Defaulting to EN-US");
                return new EnUSNavigationModelFactory();
            }
            case 0: {
                return new DeDENavigationModelFactory();
            }
            case 1: {
                return new EnAUNavigationModelFactory();
            }
            case 2: {
                return new EnCANavigationModelFactory();
            }
            case 3: {
                return new EnINNavigationModelFactory();
            }
            case 4: {
                return new EnUKNavigationModelFactory();
            }
            case 5: {
                return new EnUSNavigationModelFactory();
            }
            case 6: {
                return new EsNavigationModelFactory();
            }
            case 7: {
                return new EsESNavigationModelFactory();
            }
            case 8: {
                return new EsMXNavigationModelFactory();
            }
            case 9: {
                return new FrFRNavigationModelFactory();
            }
            case 10: {
                return new JaJPNavigationModelFactory();
            }
            case 11: 
        }
        return new PtBRNavigationModelFactory();
    }

    @Override
    public NavigationModel getNavigationModel() {
        return this.mNavigationModelFactory.createNavigationModel();
    }
}

