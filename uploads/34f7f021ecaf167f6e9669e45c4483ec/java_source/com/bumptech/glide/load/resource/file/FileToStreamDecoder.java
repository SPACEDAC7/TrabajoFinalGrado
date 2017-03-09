/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.resource.file;

import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class FileToStreamDecoder<T>
implements ResourceDecoder<File, T> {
    private static final FileOpener DEFAULT_FILE_OPENER = new FileOpener();
    private final FileOpener fileOpener;
    private ResourceDecoder<InputStream, T> streamDecoder;

    public FileToStreamDecoder(ResourceDecoder<InputStream, T> resourceDecoder) {
        this(resourceDecoder, DEFAULT_FILE_OPENER);
    }

    FileToStreamDecoder(ResourceDecoder<InputStream, T> resourceDecoder, FileOpener fileOpener) {
        this.streamDecoder = resourceDecoder;
        this.fileOpener = fileOpener;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    public Resource<T> decode(File object, int n2, int n3) throws IOException {
        Resource<T> resource;
        Object object2 = null;
        try {
            object2 = object = this.fileOpener.open((File)object);
            resource = this.streamDecoder.decode((InputStream)object, n2, n3);
            if (object == null) return resource;
        }
        catch (Throwable var1_2) {
            if (object2 == null) throw var1_2;
            try {
                object2.close();
            }
            catch (IOException iOException) {
                throw var1_2;
            }
            throw var1_2;
        }
        object.close();
        return resource;
        {
            catch (IOException iOException) {
                return resource;
            }
        }
    }

    @Override
    public String getId() {
        return "";
    }

    static class FileOpener {
        FileOpener() {
        }

        public InputStream open(File file) throws FileNotFoundException {
            return new FileInputStream(file);
        }
    }

}

