.class final Lcom/crashlytics/android/core/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 90
    const/4 v1, 0x0

    .line 93
    :goto_7
    return-object v1

    :cond_8
    const-string v1, "(\r\n|\n|\u000c)"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static writeStackTrace(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "writer":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_15
    .catchall {:try_start_1 .. :try_end_b} :catchall_27

    .line 38
    .end local v1    # "writer":Ljava/io/PrintWriter;
    .local v2, "writer":Ljava/io/PrintWriter;
    :try_start_b
    invoke-static {p1, v2}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTrace(Ljava/lang/Throwable;Ljava/io/Writer;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_31
    .catchall {:try_start_b .. :try_end_e} :catchall_2e

    .line 42
    const-string v3, "Failed to close stack trace writer."

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v1, v2

    .line 44
    .end local v2    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "writer":Ljava/io/PrintWriter;
    :goto_14
    return-void

    .line 39
    :catch_15
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :goto_16
    :try_start_16
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Failed to create PrintWriter"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_27

    .line 42
    const-string v3, "Failed to close stack trace writer."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_14

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_27
    move-exception v3

    :goto_28
    const-string v4, "Failed to close stack trace writer."

    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3

    .end local v1    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "writer":Ljava/io/PrintWriter;
    :catchall_2e
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "writer":Ljava/io/PrintWriter;
    goto :goto_28

    .line 39
    .end local v1    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "writer":Ljava/io/PrintWriter;
    :catch_31
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "writer":Ljava/io/PrintWriter;
    goto :goto_16
.end method

.method private static writeStackTrace(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .registers 8
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "writer":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_10
    .catchall {:try_start_1 .. :try_end_6} :catchall_22

    .line 50
    .end local v1    # "writer":Ljava/io/PrintWriter;
    .local v2, "writer":Ljava/io/PrintWriter;
    :try_start_6
    invoke-static {p0, v2}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTrace(Ljava/lang/Throwable;Ljava/io/Writer;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_2c
    .catchall {:try_start_6 .. :try_end_9} :catchall_29

    .line 54
    const-string v3, "Failed to close stack trace writer."

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v1, v2

    .line 56
    .end local v2    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "writer":Ljava/io/PrintWriter;
    :goto_f
    return-void

    .line 51
    :catch_10
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    :goto_11
    :try_start_11
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Failed to create PrintWriter"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_22

    .line 54
    const-string v3, "Failed to close stack trace writer."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_f

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_22
    move-exception v3

    :goto_23
    const-string v4, "Failed to close stack trace writer."

    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3

    .end local v1    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "writer":Ljava/io/PrintWriter;
    :catchall_29
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "writer":Ljava/io/PrintWriter;
    goto :goto_23

    .line 51
    .end local v1    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "writer":Ljava/io/PrintWriter;
    :catch_2c
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "writer":Ljava/io/PrintWriter;
    goto :goto_11
.end method

.method private static writeStackTrace(Ljava/lang/Throwable;Ljava/io/Writer;)V
    .registers 13
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 60
    const/4 v4, 0x1

    .line 62
    .local v4, "first":Z
    :goto_1
    if-eqz p0, :cond_7e

    .line 63
    :try_start_3
    invoke-static {p0}, Lcom/crashlytics/android/core/ExceptionUtils;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "message":Ljava/lang/String;
    if-eqz v7, :cond_67

    .line 66
    :goto_9
    if-eqz v4, :cond_6a

    const-string v1, ""

    .line 67
    .local v1, "causedBy":Ljava/lang/String;
    :goto_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_40
    if-ge v5, v6, :cond_6d

    aget-object v3, v0, v5

    .line 72
    .local v3, "element":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tat "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 64
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v1    # "causedBy":Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_67
    const-string v7, ""

    goto :goto_9

    .line 66
    :cond_6a
    const-string v1, "Caused by: "

    goto :goto_d

    .line 75
    .restart local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .restart local v1    # "causedBy":Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_6d
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_70} :catch_72

    move-result-object p0

    .line 76
    goto :goto_1

    .line 77
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v1    # "causedBy":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "message":Ljava/lang/String;
    :catch_72
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string v9, "CrashlyticsCore"

    const-string v10, "Could not write stack trace"

    invoke-interface {v8, v9, v10, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7e
    return-void
.end method

.method public static writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .registers 2
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 25
    if-eqz p1, :cond_5

    .line 26
    invoke-static {p0, p1}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTrace(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 28
    :cond_5
    return-void
.end method
