/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.session.MediaController
 *  android.media.session.MediaController$TransportControls
 *  android.net.Uri
 *  android.os.Bundle
 */
package android.support.v4.media.session;

import android.media.session.MediaController;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.MediaControllerCompatApi21;

class MediaControllerCompatApi23 {
    MediaControllerCompatApi23() {
    }

    public static class TransportControls
    extends MediaControllerCompatApi21.TransportControls {
        public static void playFromUri(Object object, Uri uri, Bundle bundle) {
            ((MediaController.TransportControls)object).playFromUri(uri, bundle);
        }
    }

}

