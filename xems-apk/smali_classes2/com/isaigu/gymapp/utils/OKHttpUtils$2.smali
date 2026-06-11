.class final Lcom/isaigu/gymapp/utils/OKHttpUtils$2;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/utils/OKHttpUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

.field final synthetic val$saveDir:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 290
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    iput-object p2, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$saveDir:Ljava/lang/String;

    iput-object p3, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 294
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    invoke-interface {v0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;->onDownloadFailed()V

    .line 295
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 15
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "is":Ljava/io/InputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 300
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 301
    .local v2, "len":I
    const/4 v3, 0x0

    .line 303
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$saveDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v4, "saveFileDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_17

    .line 305
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 308
    :cond_17
    :try_start_17
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v0, v5

    .line 309
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    .line 310
    .local v5, "total":J
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$url:Ljava/lang/String;

    # invokes: Lcom/isaigu/gymapp/utils/OKHttpUtils;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_49

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-eqz v8, :cond_49

    .line 312
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/io/File;->setWritable(Z)Z

    .line 313
    invoke-virtual {v7, v8}, Ljava/io/File;->setExecutable(Z)Z

    .line 314
    invoke-virtual {v7, v8}, Ljava/io/File;->setReadable(Z)Z

    .line 316
    :cond_49
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v8

    .line 317
    const-wide/16 v8, 0x0

    .line 318
    .local v8, "sum":J
    :goto_51
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v2, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_71

    .line 319
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 320
    int-to-long v10, v2

    add-long/2addr v8, v10

    .line 321
    long-to-float v10, v8

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v10, v10, v11

    long-to-float v11, v5

    div-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float v10, v10, v11

    float-to-int v10, v10

    .line 323
    .local v10, "progress":I
    iget-object v11, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    invoke-interface {v11, v10}, Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;->onDownloading(I)V

    .line 324
    .end local v10    # "progress":I
    goto :goto_51

    .line 325
    :cond_71
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 327
    iget-object v10, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;->onDownloadSuccess(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_7d} :catch_8f
    .catchall {:try_start_17 .. :try_end_7d} :catchall_8d

    .line 333
    .end local v5    # "total":J
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "sum":J
    if-eqz v0, :cond_85

    .line 334
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_85

    .line 335
    :catch_83
    move-exception v5

    goto :goto_86

    .line 336
    :cond_85
    :goto_85
    nop

    .line 338
    :goto_86
    nop

    .line 339
    :try_start_87
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 341
    :cond_8a
    :goto_8a
    goto :goto_a7

    .line 340
    :catch_8b
    move-exception v5

    .line 342
    goto :goto_a7

    .line 332
    :catchall_8d
    move-exception v5

    goto :goto_a8

    .line 328
    :catch_8f
    move-exception v5

    .line 329
    .local v5, "e":Ljava/lang/Exception;
    :try_start_90
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    iget-object v6, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$2;->val$listener:Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;

    invoke-interface {v6}, Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;->onDownloadFailed()V
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_8d

    .line 333
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_a0

    .line 334
    :try_start_9a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_a0

    .line 335
    :catch_9e
    move-exception v5

    goto :goto_a1

    .line 336
    :cond_a0
    :goto_a0
    nop

    .line 338
    :goto_a1
    if-eqz v3, :cond_8a

    .line 339
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_8b

    goto :goto_8a

    .line 343
    :goto_a7
    return-void

    .line 333
    :goto_a8
    if-eqz v0, :cond_b0

    .line 334
    :try_start_aa
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_b0

    .line 335
    :catch_ae
    move-exception v6

    goto :goto_b1

    .line 336
    :cond_b0
    :goto_b0
    nop

    .line 338
    :goto_b1
    if-eqz v3, :cond_b9

    .line 339
    :try_start_b3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_b9

    .line 340
    :catch_b7
    move-exception v6

    goto :goto_ba

    .line 341
    :cond_b9
    :goto_b9
    nop

    .line 342
    :goto_ba
    throw v5
.end method
