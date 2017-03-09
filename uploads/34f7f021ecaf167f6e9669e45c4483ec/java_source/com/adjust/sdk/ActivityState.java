/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.Util;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.Locale;

public class ActivityState
implements Serializable,
Cloneable {
    private static int ORDER_ID_MAXCOUNT = 0;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 9039439291143138148L;
    protected String adid = null;
    protected boolean askingAttribution = false;
    protected boolean enabled = true;
    protected int eventCount = 0;
    protected long lastActivity = -1;
    protected long lastInterval = -1;
    private transient ILogger logger = AdjustFactory.getLogger();
    protected LinkedList<String> orderIds = null;
    protected String pushToken = null;
    protected int sessionCount = 0;
    protected long sessionLength = -1;
    protected int subsessionCount = -1;
    protected long timeSpent = -1;
    protected boolean updatePackages = false;
    protected String uuid = Util.createUuid();

    static {
        ORDER_ID_MAXCOUNT = 10;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("uuid", String.class), new ObjectStreamField("enabled", Boolean.TYPE), new ObjectStreamField("askingAttribution", Boolean.TYPE), new ObjectStreamField("eventCount", Integer.TYPE), new ObjectStreamField("sessionCount", Integer.TYPE), new ObjectStreamField("subsessionCount", Integer.TYPE), new ObjectStreamField("sessionLength", Long.TYPE), new ObjectStreamField("timeSpent", Long.TYPE), new ObjectStreamField("lastActivity", Long.TYPE), new ObjectStreamField("lastInterval", Long.TYPE), new ObjectStreamField("updatePackages", Boolean.TYPE), new ObjectStreamField("orderIds", LinkedList.class), new ObjectStreamField("pushToken", String.class), new ObjectStreamField("adid", String.class)};
    }

    protected ActivityState() {
    }

    private void readObject(ObjectInputStream object) throws IOException, ClassNotFoundException {
        object = object.readFields();
        this.eventCount = Util.readIntField((ObjectInputStream.GetField)object, "eventCount", 0);
        this.sessionCount = Util.readIntField((ObjectInputStream.GetField)object, "sessionCount", 0);
        this.subsessionCount = Util.readIntField((ObjectInputStream.GetField)object, "subsessionCount", -1);
        this.sessionLength = Util.readLongField((ObjectInputStream.GetField)object, "sessionLength", -1);
        this.timeSpent = Util.readLongField((ObjectInputStream.GetField)object, "timeSpent", -1);
        this.lastActivity = Util.readLongField((ObjectInputStream.GetField)object, "lastActivity", -1);
        this.lastInterval = Util.readLongField((ObjectInputStream.GetField)object, "lastInterval", -1);
        this.uuid = Util.readStringField((ObjectInputStream.GetField)object, "uuid", null);
        this.enabled = Util.readBooleanField((ObjectInputStream.GetField)object, "enabled", true);
        this.askingAttribution = Util.readBooleanField((ObjectInputStream.GetField)object, "askingAttribution", false);
        this.updatePackages = Util.readBooleanField((ObjectInputStream.GetField)object, "updatePackages", false);
        this.orderIds = Util.readObjectField((ObjectInputStream.GetField)object, "orderIds", null);
        this.pushToken = Util.readStringField((ObjectInputStream.GetField)object, "pushToken", null);
        this.adid = Util.readStringField((ObjectInputStream.GetField)object, "adid", null);
        if (this.uuid == null) {
            this.uuid = Util.createUuid();
        }
    }

    private static String stamp(long l2) {
        Calendar.getInstance().setTimeInMillis(l2);
        return String.format(Locale.US, "%02d:%02d:%02d", 11, 12, 13);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
    }

    protected void addOrderId(String string2) {
        if (this.orderIds == null) {
            this.orderIds = new LinkedList();
        }
        if (this.orderIds.size() >= ORDER_ID_MAXCOUNT) {
            this.orderIds.removeLast();
        }
        this.orderIds.addFirst(string2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (object == null) {
            return false;
        }
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (ActivityState)object;
        if (!Util.equalString(this.uuid, object.uuid)) {
            return false;
        }
        if (!Util.equalBoolean(this.enabled, object.enabled)) {
            return false;
        }
        if (!Util.equalBoolean(this.askingAttribution, object.askingAttribution)) {
            return false;
        }
        if (!Util.equalInt(this.eventCount, object.eventCount)) {
            return false;
        }
        if (!Util.equalInt(this.sessionCount, object.sessionCount)) {
            return false;
        }
        if (!Util.equalInt(this.subsessionCount, object.subsessionCount)) {
            return false;
        }
        if (!Util.equalLong(this.sessionLength, object.sessionLength)) {
            return false;
        }
        if (!Util.equalLong(this.timeSpent, object.timeSpent)) {
            return false;
        }
        if (!Util.equalLong(this.lastInterval, object.lastInterval)) {
            return false;
        }
        if (!Util.equalBoolean(this.updatePackages, object.updatePackages)) {
            return false;
        }
        if (!Util.equalObject(this.orderIds, object.orderIds)) {
            return false;
        }
        if (!Util.equalString(this.pushToken, object.pushToken)) {
            return false;
        }
        if (Util.equalString(this.adid, object.adid)) return true;
        return false;
    }

    protected boolean findOrderId(String string2) {
        if (this.orderIds == null) {
            return false;
        }
        return this.orderIds.contains(string2);
    }

    public int hashCode() {
        return ((((((((((((Util.hashString(this.uuid) + 629) * 37 + Util.hashBoolean(this.enabled)) * 37 + Util.hashBoolean(this.askingAttribution)) * 37 + this.eventCount) * 37 + this.sessionCount) * 37 + this.subsessionCount) * 37 + Util.hashLong(this.sessionLength)) * 37 + Util.hashLong(this.timeSpent)) * 37 + Util.hashLong(this.lastInterval)) * 37 + Util.hashBoolean(this.updatePackages)) * 37 + Util.hashObject(this.orderIds)) * 37 + Util.hashString(this.pushToken)) * 37 + Util.hashString(this.adid);
    }

    protected void resetSessionAttributes(long l2) {
        this.subsessionCount = 1;
        this.sessionLength = 0;
        this.timeSpent = 0;
        this.lastActivity = l2;
        this.lastInterval = -1;
    }

    public String toString() {
        return String.format(Locale.US, "ec:%d sc:%d ssc:%d sl:%.1f ts:%.1f la:%s uuid:%s", this.eventCount, this.sessionCount, this.subsessionCount, (double)this.sessionLength / 1000.0, (double)this.timeSpent / 1000.0, ActivityState.stamp(this.lastActivity), this.uuid);
    }
}

