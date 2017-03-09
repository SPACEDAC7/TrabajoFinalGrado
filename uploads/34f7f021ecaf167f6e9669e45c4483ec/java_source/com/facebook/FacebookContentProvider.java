/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentProvider
 *  android.content.ContentValues
 *  android.database.Cursor
 *  android.net.Uri
 *  android.os.ParcelFileDescriptor
 *  android.util.Log
 *  android.util.Pair
 */
package com.facebook;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.Pair;
import com.facebook.internal.NativeAppCallAttachmentStore;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.UUID;

public class FacebookContentProvider
extends ContentProvider {
    private static final String ATTACHMENT_URL_BASE = "content://com.facebook.app.FacebookContentProvider";
    private static final String TAG = FacebookContentProvider.class.getName();

    public static String getAttachmentUrl(String string2, UUID uUID, String string3) {
        return String.format("%s%s/%s/%s", "content://com.facebook.app.FacebookContentProvider", string2, uUID.toString(), string3);
    }

    public int delete(Uri uri, String string2, String[] arrstring) {
        return 0;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public boolean onCreate() {
        return true;
    }

    public ParcelFileDescriptor openFile(Uri parcelFileDescriptor, String string2) throws FileNotFoundException {
        if ((parcelFileDescriptor = this.parseCallIdAndAttachmentName((Uri)parcelFileDescriptor)) == null) {
            throw new FileNotFoundException();
        }
        try {
            parcelFileDescriptor = ParcelFileDescriptor.open((File)NativeAppCallAttachmentStore.openAttachment((UUID)parcelFileDescriptor.first, (String)parcelFileDescriptor.second), (int)268435456);
            return parcelFileDescriptor;
        }
        catch (FileNotFoundException var1_2) {
            Log.e((String)TAG, (String)("Got unexpected exception:" + var1_2));
            throw var1_2;
        }
    }

    Pair<UUID, String> parseCallIdAndAttachmentName(Uri object) {
        Object object2;
        try {
            object2 = object.getPath().substring(1).split("/");
        }
        catch (Exception var1_2) {
            return null;
        }
        object = object2[0];
        object2 = object2[1];
        object = new Pair((Object)UUID.fromString((String)object), object2);
        return object;
    }

    public Cursor query(Uri uri, String[] arrstring, String string2, String[] arrstring2, String string3) {
        return null;
    }

    public int update(Uri uri, ContentValues contentValues, String string2, String[] arrstring) {
        return 0;
    }
}

