/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.graphics.BitmapFactory
 *  android.graphics.BitmapFactory$Options
 *  android.graphics.Canvas
 *  android.graphics.ColorFilter
 *  android.graphics.ColorMatrix
 *  android.graphics.ColorMatrixColorFilter
 *  android.graphics.Matrix
 *  android.graphics.Paint
 *  android.graphics.Rect
 *  android.graphics.RectF
 *  android.graphics.pdf.PdfDocument
 *  android.graphics.pdf.PdfDocument$Page
 *  android.graphics.pdf.PdfDocument$PageInfo
 *  android.net.Uri
 *  android.os.AsyncTask
 *  android.os.Bundle
 *  android.os.CancellationSignal
 *  android.os.CancellationSignal$OnCancelListener
 *  android.os.ParcelFileDescriptor
 *  android.print.PageRange
 *  android.print.PrintAttributes
 *  android.print.PrintAttributes$Builder
 *  android.print.PrintAttributes$Margins
 *  android.print.PrintAttributes$MediaSize
 *  android.print.PrintAttributes$Resolution
 *  android.print.PrintDocumentAdapter
 *  android.print.PrintDocumentAdapter$LayoutResultCallback
 *  android.print.PrintDocumentAdapter$WriteResultCallback
 *  android.print.PrintDocumentInfo
 *  android.print.PrintDocumentInfo$Builder
 *  android.print.PrintJob
 *  android.print.PrintManager
 *  android.print.pdf.PrintedPdfDocument
 *  android.util.Log
 */
package android.support.v4.print;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import android.print.PrintJob;
import android.print.PrintManager;
import android.print.pdf.PrintedPdfDocument;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class PrintHelperKitkat {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    private static final String LOG_TAG = "PrintHelperKitkat";
    private static final int MAX_PRINT_SIZE = 3500;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    int mColorMode = 2;
    final Context mContext;
    BitmapFactory.Options mDecodeOptions = null;
    protected boolean mIsMinMarginsHandlingCorrect = true;
    private final Object mLock = new Object();
    int mOrientation;
    protected boolean mPrintActivityRespectsOrientation = true;
    int mScaleMode = 2;

    PrintHelperKitkat(Context context) {
        this.mContext = context;
    }

    static /* synthetic */ Bitmap access$100(PrintHelperKitkat printHelperKitkat, Bitmap bitmap, int n2) {
        return printHelperKitkat.convertBitmapForColorMode(bitmap, n2);
    }

    static /* synthetic */ Matrix access$200(PrintHelperKitkat printHelperKitkat, int n2, int n3, RectF rectF, int n4) {
        return printHelperKitkat.getMatrix(n2, n3, rectF, n4);
    }

    static /* synthetic */ boolean access$600(Bitmap bitmap) {
        return PrintHelperKitkat.isPortrait(bitmap);
    }

    private Bitmap convertBitmapForColorMode(Bitmap bitmap, int n2) {
        if (n2 != 1) {
            return bitmap;
        }
        Bitmap bitmap2 = Bitmap.createBitmap((int)bitmap.getWidth(), (int)bitmap.getHeight(), (Bitmap.Config)Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter((ColorFilter)new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        canvas.setBitmap(null);
        return bitmap2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private Matrix getMatrix(int n2, int n3, RectF rectF, int n4) {
        Matrix matrix = new Matrix();
        float f2 = rectF.width() / (float)n2;
        f2 = n4 == 2 ? Math.max(f2, rectF.height() / (float)n3) : Math.min(f2, rectF.height() / (float)n3);
        matrix.postScale(f2, f2);
        matrix.postTranslate((rectF.width() - (float)n2 * f2) / 2.0f, (rectF.height() - (float)n3 * f2) / 2.0f);
        return matrix;
    }

    private static boolean isPortrait(Bitmap bitmap) {
        if (bitmap.getWidth() <= bitmap.getHeight()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private Bitmap loadBitmap(Uri object, BitmapFactory.Options options) throws FileNotFoundException {
        if (object == null) throw new IllegalArgumentException("bad argument to loadBitmap");
        if (this.mContext == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        Object object2 = null;
        try {
            object2 = object = this.mContext.getContentResolver().openInputStream((Uri)object);
            options = BitmapFactory.decodeStream((InputStream)object, (Rect)null, (BitmapFactory.Options)options);
            if (object == null) return options;
        }
        catch (Throwable var1_3) {
            if (object2 == null) throw var1_3;
            try {
                object2.close();
            }
            catch (IOException iOException) {
                Log.w((String)"PrintHelperKitkat", (String)"close fail ", (Throwable)iOException);
                throw var1_3;
            }
            throw var1_3;
        }
        try {
            object.close();
            return options;
        }
        catch (IOException var1_2) {
            Log.w((String)"PrintHelperKitkat", (String)"close fail ", (Throwable)var1_2);
            return options;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private Bitmap loadConstrainedBitmap(Uri object, int n2) throws FileNotFoundException {
        if (n2 <= 0) throw new IllegalArgumentException("bad argument to getScaledBitmap");
        if (object == null) throw new IllegalArgumentException("bad argument to getScaledBitmap");
        if (this.mContext == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        Object object2 = new BitmapFactory.Options();
        object2.inJustDecodeBounds = true;
        this.loadBitmap((Uri)object, (BitmapFactory.Options)object2);
        int n3 = object2.outWidth;
        int n4 = object2.outHeight;
        if (n3 <= 0) return null;
        if (n4 <= 0) {
            return null;
        }
        int n5 = 1;
        for (int i2 = Math.max((int)n3, (int)n4); i2 > n2; i2 >>>= 1, n5 <<= 1) {
        }
        if (n5 <= 0) return null;
        if (Math.min(n3, n4) / n5 <= 0) return null;
        object2 = this.mLock;
        // MONITORENTER : object2
        this.mDecodeOptions = new BitmapFactory.Options();
        this.mDecodeOptions.inMutable = true;
        this.mDecodeOptions.inSampleSize = n5;
        BitmapFactory.Options options = this.mDecodeOptions;
        // MONITOREXIT : object2
        try {
            object2 = this.loadBitmap((Uri)object, options);
            return object2;
        }
        finally {
            object = this.mLock;
            // MONITORENTER : object
            this.mDecodeOptions = null;
            // MONITOREXIT : object
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void writeBitmap(final PrintAttributes printAttributes, final int n2, final Bitmap bitmap, final ParcelFileDescriptor parcelFileDescriptor, final CancellationSignal cancellationSignal, final PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
        final PrintAttributes printAttributes2 = this.mIsMinMarginsHandlingCorrect ? printAttributes : this.copyAttributes(printAttributes).setMinMargins(new PrintAttributes.Margins(0, 0, 0, 0)).build();
        new AsyncTask<Void, Void, Throwable>(){

            /*
             * Unable to fully structure code
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             * Lifted jumps to return sites
             */
            protected /* varargs */ Throwable doInBackground(Void ... var1_1) {
                block20 : {
                    if (cancellationSignal.isCanceled()) {
                        return null;
                    }
                    var3_6 = new PrintedPdfDocument(PrintHelperKitkat.this.mContext, printAttributes2);
                    var2_8 = PrintHelperKitkat.access$100(PrintHelperKitkat.this, bitmap, printAttributes2.getColorMode());
                    var7_9 = cancellationSignal.isCanceled();
                    if (var7_9 != false) return null;
                    {
                        catch (Throwable var1_2) {
                            return var1_2;
                        }
                    }
                    try {
                        var4_10 = var3_6.startPage(1);
                        if (PrintHelperKitkat.this.mIsMinMarginsHandlingCorrect) {
                            var1_1 = new RectF(var4_10.getInfo().getContentRect());
                        } else {
                            var5_11 = new PrintedPdfDocument(PrintHelperKitkat.this.mContext, printAttributes);
                            var6_12 = var5_11.startPage(1);
                            var1_1 = new RectF(var6_12.getInfo().getContentRect());
                            var5_11.finishPage(var6_12);
                            var5_11.close();
                        }
                        var5_11 = PrintHelperKitkat.access$200(PrintHelperKitkat.this, var2_8.getWidth(), var2_8.getHeight(), var1_1, n2);
                        if (!PrintHelperKitkat.this.mIsMinMarginsHandlingCorrect) {
                            var5_11.postTranslate(var1_1.left, var1_1.top);
                            var4_10.getCanvas().clipRect(var1_1);
                        }
                        var4_10.getCanvas().drawBitmap(var2_8, (Matrix)var5_11, null);
                        var3_6.finishPage(var4_10);
                        var7_9 = cancellationSignal.isCanceled();
                        ** if (!var7_9) goto lbl35
                    }
                    catch (Throwable var1_3) {
                        var3_6.close();
                        var3_6 = parcelFileDescriptor;
                        if (var3_6 == null) ** GOTO lbl54
                        parcelFileDescriptor.close();
lbl44: // 1 sources:
                        var3_6.writeTo((OutputStream)new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                        var3_6.close();
                        var1_1 = parcelFileDescriptor;
                        if (var1_1 == null) break block20;
                        ** try [egrp 9[TRYBLOCK] [18 : 350->357)] { 
lbl-1000: // 1 sources:
                        {
                            parcelFileDescriptor.close();
                            break block20;
                        }
                        catch (IOException var3_7) {}
lbl54: // 3 sources:
                        if (var2_8 == bitmap) throw var1_3;
                        var2_8.recycle();
                        throw var1_3;
                    }
lbl-1000: // 1 sources:
                    {
                        var3_6.close();
                        var1_1 = parcelFileDescriptor;
                        if (var1_1 == null) ** GOTO lbl63
                        parcelFileDescriptor.close();
                    }
lbl35: // 1 sources:
                    ** GOTO lbl44
lbl57: // 1 sources:
                    catch (IOException var1_4) {}
                }
                if (var2_8 == bitmap) return null;
                var2_8.recycle();
                return null;
                catch (IOException var1_5) {}
lbl63: // 3 sources:
                if (var2_8 == bitmap) return null;
                var2_8.recycle();
                return null;
            }

            protected void onPostExecute(Throwable throwable) {
                if (cancellationSignal.isCanceled()) {
                    writeResultCallback.onWriteCancelled();
                    return;
                }
                if (throwable == null) {
                    writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                    return;
                }
                Log.e((String)"PrintHelperKitkat", (String)"Error writing printed content", (Throwable)throwable);
                writeResultCallback.onWriteFailed(null);
            }
        }.execute((Object[])new Void[0]);
    }

    protected PrintAttributes.Builder copyAttributes(PrintAttributes printAttributes) {
        PrintAttributes.Builder builder = new PrintAttributes.Builder().setMediaSize(printAttributes.getMediaSize()).setResolution(printAttributes.getResolution()).setMinMargins(printAttributes.getMinMargins());
        if (printAttributes.getColorMode() != 0) {
            builder.setColorMode(printAttributes.getColorMode());
        }
        return builder;
    }

    public int getColorMode() {
        return this.mColorMode;
    }

    public int getOrientation() {
        if (this.mOrientation == 0) {
            return 1;
        }
        return this.mOrientation;
    }

    public int getScaleMode() {
        return this.mScaleMode;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void printBitmap(final String string2, final Bitmap bitmap, final OnPrintFinishCallback onPrintFinishCallback) {
        if (bitmap == null) {
            return;
        }
        final int n2 = this.mScaleMode;
        PrintManager printManager = (PrintManager)this.mContext.getSystemService("print");
        PrintAttributes.MediaSize mediaSize = PrintHelperKitkat.isPortrait(bitmap) ? PrintAttributes.MediaSize.UNKNOWN_PORTRAIT : PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
        mediaSize = new PrintAttributes.Builder().setMediaSize(mediaSize).setColorMode(this.mColorMode).build();
        printManager.print(string2, new PrintDocumentAdapter(){
            private PrintAttributes mAttributes;

            public void onFinish() {
                if (onPrintFinishCallback != null) {
                    onPrintFinishCallback.onFinish();
                }
            }

            /*
             * Enabled aggressive block sorting
             */
            public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
                boolean bl = true;
                this.mAttributes = printAttributes2;
                cancellationSignal = new PrintDocumentInfo.Builder(string2).setContentType(1).setPageCount(1).build();
                if (printAttributes2.equals((Object)printAttributes)) {
                    bl = false;
                }
                layoutResultCallback.onLayoutFinished((PrintDocumentInfo)cancellationSignal, bl);
            }

            public void onWrite(PageRange[] arrpageRange, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
                PrintHelperKitkat.this.writeBitmap(this.mAttributes, n2, bitmap, parcelFileDescriptor, cancellationSignal, writeResultCallback);
            }
        }, (PrintAttributes)mediaSize);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void printBitmap(final String string2, Uri object, OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException {
        object = new PrintDocumentAdapter((Uri)object, onPrintFinishCallback, this.mScaleMode){
            private PrintAttributes mAttributes;
            Bitmap mBitmap;
            AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;
            final /* synthetic */ OnPrintFinishCallback val$callback;
            final /* synthetic */ int val$fittingMode;
            final /* synthetic */ Uri val$imageFile;

            static /* synthetic */ PrintAttributes access$500( var0) {
                return var0.mAttributes;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            private void cancelLoad() {
                Object object = PrintHelperKitkat.this.mLock;
                synchronized (object) {
                    if (PrintHelperKitkat.this.mDecodeOptions != null) {
                        PrintHelperKitkat.this.mDecodeOptions.requestCancelDecode();
                        PrintHelperKitkat.this.mDecodeOptions = null;
                    }
                    return;
                }
            }

            public void onFinish() {
                super.onFinish();
                this.cancelLoad();
                if (this.mLoadBitmap != null) {
                    this.mLoadBitmap.cancel(true);
                }
                if (this.val$callback != null) {
                    this.val$callback.onFinish();
                }
                if (this.mBitmap != null) {
                    this.mBitmap.recycle();
                    this.mBitmap = null;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             * Converted monitor instructions to comments
             * Lifted jumps to return sites
             */
            public void onLayout(final PrintAttributes printAttributes, final PrintAttributes printAttributes2, final CancellationSignal cancellationSignal, final PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
                boolean bl = true;
                // MONITORENTER : this
                this.mAttributes = printAttributes2;
                // MONITOREXIT : this
                if (cancellationSignal.isCanceled()) {
                    layoutResultCallback.onLayoutCancelled();
                    return;
                }
                if (this.mBitmap == null) {
                    this.mLoadBitmap = new AsyncTask<Uri, Boolean, Bitmap>(){

                        protected /* varargs */ Bitmap doInBackground(Uri ... bitmap) {
                            try {
                                bitmap = PrintHelperKitkat.this.loadConstrainedBitmap(3.this.val$imageFile, 3500);
                                return bitmap;
                            }
                            catch (FileNotFoundException var1_2) {
                                return null;
                            }
                        }

                        protected void onCancelled(Bitmap bitmap) {
                            layoutResultCallback.onLayoutCancelled();
                            3.this.mLoadBitmap = null;
                        }

                        /*
                         * Unable to fully structure code
                         * Enabled aggressive block sorting
                         * Enabled unnecessary exception pruning
                         * Enabled aggressive exception aggregation
                         * Converted monitor instructions to comments
                         * Lifted jumps to return sites
                         */
                        protected void onPostExecute(Bitmap var1_1) {
                            super.onPostExecute((Object)var1_1);
                            var2_2 = var1_1;
                            if (var1_1 == null) ** GOTO lbl17
                            if (!3.this.PrintHelperKitkat.this.mPrintActivityRespectsOrientation) ** GOTO lbl-1000
                            var2_2 = var1_1;
                            if (3.this.PrintHelperKitkat.this.mOrientation == 0) lbl-1000: // 2 sources:
                            {
                                // MONITORENTER : this
                                var3_3 = .access$500(3.this).getMediaSize();
                                // MONITOREXIT : this
                                var2_2 = var1_1;
                                if (var3_3 != null) {
                                    var2_2 = var1_1;
                                    if (var3_3.isPortrait() != PrintHelperKitkat.access$600(var1_1)) {
                                        var2_2 = new Matrix();
                                        var2_2.postRotate(90.0f);
                                        var2_2 = Bitmap.createBitmap((Bitmap)var1_1, (int)0, (int)0, (int)var1_1.getWidth(), (int)var1_1.getHeight(), (Matrix)var2_2, (boolean)true);
                                    }
                                }
                            }
lbl17: // 8 sources:
                            3.this.mBitmap = var2_2;
                            if (var2_2 != null) {
                                var1_1 = new PrintDocumentInfo.Builder(3.this.string2).setContentType(1).setPageCount(1).build();
                                var4_4 = printAttributes2.equals((Object)printAttributes) == false;
                                layoutResultCallback.onLayoutFinished((PrintDocumentInfo)var1_1, var4_4);
                            } else {
                                layoutResultCallback.onLayoutFailed(null);
                            }
                            3.this.mLoadBitmap = null;
                        }

                        protected void onPreExecute() {
                            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener(){

                                public void onCancel() {
                                    3.this.cancelLoad();
                                    1.this.cancel(false);
                                }
                            });
                        }

                    }.execute((Object[])new Uri[0]);
                    return;
                }
                cancellationSignal = new PrintDocumentInfo.Builder(string2).setContentType(1).setPageCount(1).build();
                if (printAttributes2.equals((Object)printAttributes)) {
                    bl = false;
                }
                layoutResultCallback.onLayoutFinished((PrintDocumentInfo)cancellationSignal, bl);
            }

            public void onWrite(PageRange[] arrpageRange, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
                PrintHelperKitkat.this.writeBitmap(this.mAttributes, this.val$fittingMode, this.mBitmap, parcelFileDescriptor, cancellationSignal, writeResultCallback);
            }

        };
        onPrintFinishCallback = (PrintManager)this.mContext.getSystemService("print");
        PrintAttributes.Builder builder = new PrintAttributes.Builder();
        builder.setColorMode(this.mColorMode);
        if (this.mOrientation == 1 || this.mOrientation == 0) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
        } else if (this.mOrientation == 2) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
        }
        onPrintFinishCallback.print(string2, (PrintDocumentAdapter)object, builder.build());
    }

    public void setColorMode(int n2) {
        this.mColorMode = n2;
    }

    public void setOrientation(int n2) {
        this.mOrientation = n2;
    }

    public void setScaleMode(int n2) {
        this.mScaleMode = n2;
    }

    public static interface OnPrintFinishCallback {
        public void onFinish();
    }

}

