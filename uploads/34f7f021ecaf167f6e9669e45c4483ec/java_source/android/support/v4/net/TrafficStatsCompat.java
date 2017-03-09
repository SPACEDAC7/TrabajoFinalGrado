/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.v4.net;

import android.os.Build;
import android.support.v4.net.TrafficStatsCompatApi24;
import android.support.v4.net.TrafficStatsCompatIcs;
import java.net.DatagramSocket;
import java.net.Socket;
import java.net.SocketException;

public final class TrafficStatsCompat {
    private static final TrafficStatsCompatImpl IMPL = "N".equals(Build.VERSION.CODENAME) ? new Api24TrafficStatsCompatImpl() : (Build.VERSION.SDK_INT >= 14 ? new IcsTrafficStatsCompatImpl() : new BaseTrafficStatsCompatImpl());

    private TrafficStatsCompat() {
    }

    public static void clearThreadStatsTag() {
        IMPL.clearThreadStatsTag();
    }

    public static int getThreadStatsTag() {
        return IMPL.getThreadStatsTag();
    }

    public static void incrementOperationCount(int n2) {
        IMPL.incrementOperationCount(n2);
    }

    public static void incrementOperationCount(int n2, int n3) {
        IMPL.incrementOperationCount(n2, n3);
    }

    public static void setThreadStatsTag(int n2) {
        IMPL.setThreadStatsTag(n2);
    }

    public static void tagDatagramSocket(DatagramSocket datagramSocket) throws SocketException {
        IMPL.tagDatagramSocket(datagramSocket);
    }

    public static void tagSocket(Socket socket) throws SocketException {
        IMPL.tagSocket(socket);
    }

    public static void untagDatagramSocket(DatagramSocket datagramSocket) throws SocketException {
        IMPL.untagDatagramSocket(datagramSocket);
    }

    public static void untagSocket(Socket socket) throws SocketException {
        IMPL.untagSocket(socket);
    }

    static class Api24TrafficStatsCompatImpl
    extends IcsTrafficStatsCompatImpl {
        Api24TrafficStatsCompatImpl() {
        }

        @Override
        public void tagDatagramSocket(DatagramSocket datagramSocket) throws SocketException {
            TrafficStatsCompatApi24.tagDatagramSocket(datagramSocket);
        }

        @Override
        public void untagDatagramSocket(DatagramSocket datagramSocket) throws SocketException {
            TrafficStatsCompatApi24.untagDatagramSocket(datagramSocket);
        }
    }

    static class BaseTrafficStatsCompatImpl
    implements TrafficStatsCompatImpl {
        private ThreadLocal<SocketTags> mThreadSocketTags;

        BaseTrafficStatsCompatImpl() {
            this.mThreadSocketTags = new ThreadLocal<SocketTags>(){

                @Override
                protected SocketTags initialValue() {
                    return new SocketTags();
                }
            };
        }

        @Override
        public void clearThreadStatsTag() {
            this.mThreadSocketTags.get().statsTag = -1;
        }

        @Override
        public int getThreadStatsTag() {
            return this.mThreadSocketTags.get().statsTag;
        }

        @Override
        public void incrementOperationCount(int n2) {
        }

        @Override
        public void incrementOperationCount(int n2, int n3) {
        }

        @Override
        public void setThreadStatsTag(int n2) {
            this.mThreadSocketTags.get().statsTag = n2;
        }

        @Override
        public void tagDatagramSocket(DatagramSocket datagramSocket) {
        }

        @Override
        public void tagSocket(Socket socket) {
        }

        @Override
        public void untagDatagramSocket(DatagramSocket datagramSocket) {
        }

        @Override
        public void untagSocket(Socket socket) {
        }

        private static class SocketTags {
            public int statsTag = -1;

            SocketTags() {
            }
        }

    }

    static class IcsTrafficStatsCompatImpl
    implements TrafficStatsCompatImpl {
        IcsTrafficStatsCompatImpl() {
        }

        @Override
        public void clearThreadStatsTag() {
            TrafficStatsCompatIcs.clearThreadStatsTag();
        }

        @Override
        public int getThreadStatsTag() {
            return TrafficStatsCompatIcs.getThreadStatsTag();
        }

        @Override
        public void incrementOperationCount(int n2) {
            TrafficStatsCompatIcs.incrementOperationCount(n2);
        }

        @Override
        public void incrementOperationCount(int n2, int n3) {
            TrafficStatsCompatIcs.incrementOperationCount(n2, n3);
        }

        @Override
        public void setThreadStatsTag(int n2) {
            TrafficStatsCompatIcs.setThreadStatsTag(n2);
        }

        @Override
        public void tagDatagramSocket(DatagramSocket datagramSocket) throws SocketException {
            TrafficStatsCompatIcs.tagDatagramSocket(datagramSocket);
        }

        @Override
        public void tagSocket(Socket socket) throws SocketException {
            TrafficStatsCompatIcs.tagSocket(socket);
        }

        @Override
        public void untagDatagramSocket(DatagramSocket datagramSocket) throws SocketException {
            TrafficStatsCompatIcs.untagDatagramSocket(datagramSocket);
        }

        @Override
        public void untagSocket(Socket socket) throws SocketException {
            TrafficStatsCompatIcs.untagSocket(socket);
        }
    }

    static interface TrafficStatsCompatImpl {
        public void clearThreadStatsTag();

        public int getThreadStatsTag();

        public void incrementOperationCount(int var1);

        public void incrementOperationCount(int var1, int var2);

        public void setThreadStatsTag(int var1);

        public void tagDatagramSocket(DatagramSocket var1) throws SocketException;

        public void tagSocket(Socket var1) throws SocketException;

        public void untagDatagramSocket(DatagramSocket var1) throws SocketException;

        public void untagSocket(Socket var1) throws SocketException;
    }

}

