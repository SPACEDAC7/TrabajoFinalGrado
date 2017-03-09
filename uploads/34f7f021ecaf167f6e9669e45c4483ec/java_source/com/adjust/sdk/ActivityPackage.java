/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

import com.adjust.sdk.ActivityKind;
import com.adjust.sdk.Util;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public class ActivityPackage
implements Serializable {
    private static final ObjectStreamField[] serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("path", String.class), new ObjectStreamField("clientSdk", String.class), new ObjectStreamField("parameters", Map.class), new ObjectStreamField("activityKind", ActivityKind.class), new ObjectStreamField("suffix", String.class), new ObjectStreamField("callbackParameters", Map.class), new ObjectStreamField("partnerParameters", Map.class)};
    private static final long serialVersionUID = -35935556512024097L;
    private ActivityKind activityKind = ActivityKind.UNKNOWN;
    private Map<String, String> callbackParameters;
    private String clientSdk;
    private transient int hashCode;
    private Map<String, String> parameters;
    private Map<String, String> partnerParameters;
    private String path;
    private int retries;
    private String suffix;

    public ActivityPackage(ActivityKind activityKind) {
        this.activityKind = activityKind;
    }

    private void readObject(ObjectInputStream object) throws ClassNotFoundException, IOException {
        object = object.readFields();
        this.path = Util.readStringField((ObjectInputStream.GetField)object, "path", null);
        this.clientSdk = Util.readStringField((ObjectInputStream.GetField)object, "clientSdk", null);
        this.parameters = Util.readObjectField((ObjectInputStream.GetField)object, "parameters", null);
        this.activityKind = Util.readObjectField((ObjectInputStream.GetField)object, "activityKind", ActivityKind.UNKNOWN);
        this.suffix = Util.readStringField((ObjectInputStream.GetField)object, "suffix", null);
        this.callbackParameters = Util.readObjectField((ObjectInputStream.GetField)object, "callbackParameters", null);
        this.partnerParameters = Util.readObjectField((ObjectInputStream.GetField)object, "partnerParameters", null);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
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
        object = (ActivityPackage)object;
        if (!Util.equalString(this.path, object.path)) {
            return false;
        }
        if (!Util.equalString(this.clientSdk, object.clientSdk)) {
            return false;
        }
        if (!Util.equalObject(this.parameters, object.parameters)) {
            return false;
        }
        if (!Util.equalEnum(this.activityKind, object.activityKind)) {
            return false;
        }
        if (!Util.equalString(this.suffix, object.suffix)) {
            return false;
        }
        if (!Util.equalObject(this.callbackParameters, object.callbackParameters)) {
            return false;
        }
        if (Util.equalObject(this.partnerParameters, object.partnerParameters)) return true;
        return false;
    }

    public ActivityKind getActivityKind() {
        return this.activityKind;
    }

    public Map<String, String> getCallbackParameters() {
        return this.callbackParameters;
    }

    public String getClientSdk() {
        return this.clientSdk;
    }

    public String getExtendedString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(String.format(Locale.US, "Path:      %s\n", this.path));
        stringBuilder.append(String.format(Locale.US, "ClientSdk: %s\n", this.clientSdk));
        if (this.parameters != null) {
            stringBuilder.append("Parameters:");
            for (Map.Entry<String, String> entry : new TreeMap<String, String>(this.parameters).entrySet()) {
                stringBuilder.append(String.format(Locale.US, "\n\t%-16s %s", entry.getKey(), entry.getValue()));
            }
        }
        return stringBuilder.toString();
    }

    protected String getFailureMessage() {
        return String.format(Locale.US, "Failed to track %s%s", this.activityKind.toString(), this.suffix);
    }

    public Map<String, String> getParameters() {
        return this.parameters;
    }

    public Map<String, String> getPartnerParameters() {
        return this.partnerParameters;
    }

    public String getPath() {
        return this.path;
    }

    public int getRetries() {
        return this.retries;
    }

    public String getSuffix() {
        return this.suffix;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = 17;
            this.hashCode = this.hashCode * 37 + Util.hashString(this.path);
            this.hashCode = this.hashCode * 37 + Util.hashString(this.clientSdk);
            this.hashCode = this.hashCode * 37 + Util.hashObject(this.parameters);
            this.hashCode = this.hashCode * 37 + Util.hashEnum(this.activityKind);
            this.hashCode = this.hashCode * 37 + Util.hashString(this.suffix);
            this.hashCode = this.hashCode * 37 + Util.hashObject(this.callbackParameters);
            this.hashCode = this.hashCode * 37 + Util.hashObject(this.partnerParameters);
        }
        return this.hashCode;
    }

    public int increaseRetries() {
        ++this.retries;
        return this.retries;
    }

    public void setCallbackParameters(Map<String, String> map) {
        this.callbackParameters = map;
    }

    public void setClientSdk(String string2) {
        this.clientSdk = string2;
    }

    public void setParameters(Map<String, String> map) {
        this.parameters = map;
    }

    public void setPartnerParameters(Map<String, String> map) {
        this.partnerParameters = map;
    }

    public void setPath(String string2) {
        this.path = string2;
    }

    public void setSuffix(String string2) {
        this.suffix = string2;
    }

    public String toString() {
        return String.format(Locale.US, "%s%s", this.activityKind.toString(), this.suffix);
    }
}

