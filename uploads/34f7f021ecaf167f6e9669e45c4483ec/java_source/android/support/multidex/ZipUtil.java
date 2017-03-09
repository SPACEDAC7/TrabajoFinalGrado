/*
 * Decompiled with CFR 0_115.
 */
package android.support.multidex;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

final class ZipUtil {
    private static final int BUFFER_SIZE = 16384;
    private static final int ENDHDR = 22;
    private static final int ENDSIG = 101010256;

    ZipUtil() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static long computeCrcOfCentralDir(RandomAccessFile randomAccessFile, CentralDirectory arrby) throws IOException {
        CRC32 cRC32 = new CRC32();
        long l2 = arrby.size;
        randomAccessFile.seek(arrby.offset);
        int n2 = (int)Math.min(16384, l2);
        arrby = new byte[16384];
        n2 = randomAccessFile.read(arrby, 0, n2);
        while (n2 != -1) {
            cRC32.update(arrby, 0, n2);
            if ((l2 -= (long)n2) == 0) {
                return cRC32.getValue();
            }
            n2 = randomAccessFile.read(arrby, 0, (int)Math.min(16384, l2));
        }
        return cRC32.getValue();
    }

    static CentralDirectory findCentralDirectory(RandomAccessFile randomAccessFile) throws IOException, ZipException {
        long l2;
        long l3 = randomAccessFile.length() - 22;
        if (l3 < 0) {
            throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
        }
        long l4 = l2 = l3 - 65536;
        if (l2 < 0) {
            l4 = 0;
        }
        int n2 = Integer.reverseBytes(101010256);
        do {
            randomAccessFile.seek(l3);
            if (randomAccessFile.readInt() == n2) {
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                CentralDirectory centralDirectory = new CentralDirectory();
                centralDirectory.size = (long)Integer.reverseBytes(randomAccessFile.readInt()) & 0xFFFFFFFFL;
                centralDirectory.offset = (long)Integer.reverseBytes(randomAccessFile.readInt()) & 0xFFFFFFFFL;
                return centralDirectory;
            }
            l3 = l2 = l3 - 1;
        } while (l2 >= l4);
        throw new ZipException("End Of Central Directory signature not found");
    }

    static long getZipCrc(File object) throws IOException {
        object = new RandomAccessFile((File)object, "r");
        try {
            long l2 = ZipUtil.computeCrcOfCentralDir((RandomAccessFile)object, ZipUtil.findCentralDirectory((RandomAccessFile)object));
            return l2;
        }
        finally {
            object.close();
        }
    }

    static class CentralDirectory {
        long offset;
        long size;

        CentralDirectory() {
        }
    }

}

