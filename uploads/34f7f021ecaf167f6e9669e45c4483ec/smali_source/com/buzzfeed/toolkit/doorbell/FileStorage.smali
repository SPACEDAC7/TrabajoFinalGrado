.class Lcom/buzzfeed/toolkit/doorbell/FileStorage;
.super Ljava/lang/Object;
.source "FileStorage.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/doorbell/PoundStorage;


# static fields
.field private static final FILE_DIR:Ljava/lang/String; = "buzzfeed_pound"


# instance fields
.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/doorbell/FileStorage;->mFileName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 78
    :cond_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getStorageFile()Ljava/io/File;
    .registers 7

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "buzzfeed_pound"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 63
    .local v1, "success":Z
    if-nez v1, :cond_19

    .line 64
    const/4 v2, 0x0

    .line 68
    .end local v1    # "success":Z
    :goto_18
    return-object v2

    :cond_19
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buzzfeed_pound"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/buzzfeed/toolkit/doorbell/FileStorage;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_18
.end method

.method private static getStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 84
    .local v0, "fin":Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/doorbell/FileStorage;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 87
    return-object v1
.end method

.method private static isExternalStorageWritable()Z
    .registers 2

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 30
    :try_start_1
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/doorbell/FileStorage;->getStorageFile()Ljava/io/File;

    move-result-object v1

    .line 31
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_14

    .line 37
    .end local v1    # "file":Ljava/io/File;
    :cond_13
    :goto_13
    return-object v2

    .line 34
    .restart local v1    # "file":Ljava/io/File;
    :cond_14
    invoke-static {v1}, Lcom/buzzfeed/toolkit/doorbell/FileStorage;->getStringFromFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v2

    goto :goto_13

    .line 36
    .end local v1    # "file":Ljava/io/File;
    :catch_19
    move-exception v0

    .line 37
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_13
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 24
    invoke-static {}, Lcom/buzzfeed/toolkit/doorbell/FileStorage;->isExternalStorageWritable()Z

    move-result v0

    return v0
.end method

.method public saveText(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/doorbell/FileStorage;->getStorageFile()Ljava/io/File;

    move-result-object v1

    .line 46
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_19

    .line 47
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 48
    .local v0, "fOut":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 49
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 51
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 56
    .end local v0    # "fOut":Ljava/io/FileOutputStream;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    :cond_19
    :goto_19
    return-void

    .line 53
    :catch_1a
    move-exception v3

    goto :goto_19
.end method
