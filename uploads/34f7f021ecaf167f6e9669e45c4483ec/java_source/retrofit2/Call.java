/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  okhttp3.Request
 *  retrofit2.Response
 */
package retrofit2;

import java.io.IOException;
import okhttp3.Request;
import retrofit2.Callback;
import retrofit2.Response;

public interface Call<T>
extends Cloneable {
    public void cancel();

    public Call<T> clone();

    public void enqueue(Callback<T> var1);

    public Response<T> execute() throws IOException;

    public boolean isCanceled();

    public boolean isExecuted();

    public Request request();
}

