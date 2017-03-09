/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 */
package bolts;

import android.net.Uri;
import java.util.Collections;
import java.util.List;

public class AppLink {
    private Uri sourceUrl;
    private List<Target> targets;
    private Uri webUrl;

    public AppLink(Uri list, List<Target> list2, Uri uri) {
        this.sourceUrl = list;
        list = list2;
        if (list2 == null) {
            list = Collections.emptyList();
        }
        this.targets = list;
        this.webUrl = uri;
    }

    public Uri getSourceUrl() {
        return this.sourceUrl;
    }

    public List<Target> getTargets() {
        return Collections.unmodifiableList(this.targets);
    }

    public Uri getWebUrl() {
        return this.webUrl;
    }

    public static class Target {
        private final String appName;
        private final String className;
        private final String packageName;
        private final Uri url;

        public Target(String string2, String string3, Uri uri, String string4) {
            this.packageName = string2;
            this.className = string3;
            this.url = uri;
            this.appName = string4;
        }

        public String getAppName() {
            return this.appName;
        }

        public String getClassName() {
            return this.className;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public Uri getUrl() {
            return this.url;
        }
    }

}

