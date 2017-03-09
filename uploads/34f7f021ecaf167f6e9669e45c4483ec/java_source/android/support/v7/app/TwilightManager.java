/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.location.Location
 *  android.location.LocationManager
 *  android.util.Log
 */
package android.support.v7.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.PermissionChecker;
import android.support.v7.app.TwilightCalculator;
import android.util.Log;
import java.util.Calendar;

class TwilightManager {
    private static final int SUNRISE = 6;
    private static final int SUNSET = 22;
    private static final String TAG = "TwilightManager";
    private static TwilightManager sInstance;
    private final Context mContext;
    private final LocationManager mLocationManager;
    private final TwilightState mTwilightState = new TwilightState();

    @VisibleForTesting
    TwilightManager(@NonNull Context context, @NonNull LocationManager locationManager) {
        this.mContext = context;
        this.mLocationManager = locationManager;
    }

    static TwilightManager getInstance(@NonNull Context context) {
        if (sInstance == null) {
            context = context.getApplicationContext();
            sInstance = new TwilightManager(context, (LocationManager)context.getSystemService("location"));
        }
        return sInstance;
    }

    /*
     * Enabled aggressive block sorting
     */
    private Location getLastKnownLocation() {
        Location location = null;
        Location location2 = null;
        if (PermissionChecker.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            location = this.getLastKnownLocationForProvider("network");
        }
        if (PermissionChecker.checkSelfPermission(this.mContext, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location2 = this.getLastKnownLocationForProvider("gps");
        }
        if (location2 != null && location != null) {
            if (location2.getTime() > location.getTime()) return location2;
            return location;
        }
        if (location2 == null) return location;
        return location2;
    }

    private Location getLastKnownLocationForProvider(String string2) {
        if (this.mLocationManager != null) {
            try {
                if (this.mLocationManager.isProviderEnabled(string2)) {
                    string2 = this.mLocationManager.getLastKnownLocation(string2);
                    return string2;
                }
            }
            catch (Exception var1_2) {
                Log.d((String)"TwilightManager", (String)"Failed to get last known location", (Throwable)var1_2);
            }
        }
        return null;
    }

    private boolean isStateValid() {
        if (this.mTwilightState != null && this.mTwilightState.nextUpdate > System.currentTimeMillis()) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    static void setInstance(TwilightManager twilightManager) {
        sInstance = twilightManager;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateState(@NonNull Location location) {
        TwilightState twilightState = this.mTwilightState;
        long l2 = System.currentTimeMillis();
        TwilightCalculator twilightCalculator = TwilightCalculator.getInstance();
        twilightCalculator.calculateTwilight(l2 - 86400000, location.getLatitude(), location.getLongitude());
        long l3 = twilightCalculator.sunset;
        twilightCalculator.calculateTwilight(l2, location.getLatitude(), location.getLongitude());
        boolean bl = twilightCalculator.state == 1;
        long l4 = twilightCalculator.sunrise;
        long l5 = twilightCalculator.sunset;
        twilightCalculator.calculateTwilight(86400000 + l2, location.getLatitude(), location.getLongitude());
        long l6 = twilightCalculator.sunrise;
        if (l4 == -1 || l5 == -1) {
            l2 += 43200000;
        } else {
            l2 = l2 > l5 ? 0 + l6 : (l2 > l4 ? 0 + l5 : 0 + l4);
            l2 += 60000;
        }
        twilightState.isNight = bl;
        twilightState.yesterdaySunset = l3;
        twilightState.todaySunrise = l4;
        twilightState.todaySunset = l5;
        twilightState.tomorrowSunrise = l6;
        twilightState.nextUpdate = l2;
    }

    boolean isNight() {
        TwilightState twilightState = this.mTwilightState;
        if (this.isStateValid()) {
            return twilightState.isNight;
        }
        Location location = this.getLastKnownLocation();
        if (location != null) {
            this.updateState(location);
            return twilightState.isNight;
        }
        Log.i((String)"TwilightManager", (String)"Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int n2 = Calendar.getInstance().get(11);
        if (n2 < 6 || n2 >= 22) {
            return true;
        }
        return false;
    }

    private static class TwilightState {
        boolean isNight;
        long nextUpdate;
        long todaySunrise;
        long todaySunset;
        long tomorrowSunrise;
        long yesterdaySunset;

        TwilightState() {
        }
    }

}

