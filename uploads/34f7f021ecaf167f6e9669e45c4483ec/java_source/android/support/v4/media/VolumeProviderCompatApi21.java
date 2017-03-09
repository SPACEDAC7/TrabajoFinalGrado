/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.VolumeProvider
 */
package android.support.v4.media;

import android.media.VolumeProvider;

class VolumeProviderCompatApi21 {
    VolumeProviderCompatApi21() {
    }

    public static Object createVolumeProvider(int n2, int n3, int n4, final Delegate delegate) {
        return new VolumeProvider(n2, n3, n4){

            public void onAdjustVolume(int n2) {
                delegate.onAdjustVolume(n2);
            }

            public void onSetVolumeTo(int n2) {
                delegate.onSetVolumeTo(n2);
            }
        };
    }

    public static void setCurrentVolume(Object object, int n2) {
        ((VolumeProvider)object).setCurrentVolume(n2);
    }

    public static interface Delegate {
        public void onAdjustVolume(int var1);

        public void onSetVolumeTo(int var1);
    }

}

