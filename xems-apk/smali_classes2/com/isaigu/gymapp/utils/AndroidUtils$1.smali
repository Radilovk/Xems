.class final Lcom/isaigu/gymapp/utils/AndroidUtils$1;
.super Ljava/lang/Thread;
.source "AndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/utils/AndroidUtils;->installSlient(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$abspath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/AndroidUtils$1;->val$abspath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pm install -r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/utils/AndroidUtils$1;->val$abspath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "cmd":Ljava/lang/String;
    const/4 v1, 0x0

    .line 196
    .local v1, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 197
    .local v2, "os":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .line 198
    .local v3, "successResult":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 199
    .local v4, "errorResult":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v5, "successMsg":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v6, "errorMsg":Ljava/lang/StringBuilder;
    :try_start_21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "/system/xbin/su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    move-object v1, v7

    .line 204
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v7

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 206
    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 207
    const-string v7, "exit\n"

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 210
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 212
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v7

    .line 213
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v7

    .line 215
    :goto_6b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "s":Ljava/lang/String;
    if-eqz v7, :cond_76

    .line 216
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 218
    :cond_76
    :goto_76
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    if-eqz v7, :cond_81

    .line 219
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_80} :catch_9a
    .catchall {:try_start_21 .. :try_end_80} :catchall_98

    goto :goto_76

    .line 225
    .end local v8    # "s":Ljava/lang/String;
    :cond_81
    nop

    .line 226
    :try_start_82
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 228
    if-eqz v1, :cond_8a

    .line 229
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 231
    :cond_8a
    nop

    .line 232
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 234
    nop

    .line 235
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_92} :catch_93

    .line 239
    :cond_92
    :goto_92
    goto :goto_b3

    .line 237
    :catch_93
    move-exception v7

    .line 238
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    .end local v7    # "e":Ljava/lang/Exception;
    goto :goto_b3

    .line 224
    :catchall_98
    move-exception v7

    goto :goto_e8

    .line 221
    :catch_9a
    move-exception v7

    .line 222
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_9b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_98

    .line 225
    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_a3

    .line 226
    :try_start_a0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 228
    :cond_a3
    if-eqz v1, :cond_a8

    .line 229
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 231
    :cond_a8
    if-eqz v3, :cond_ad

    .line 232
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 234
    :cond_ad
    if-eqz v4, :cond_92

    .line 235
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b2} :catch_93

    goto :goto_92

    .line 241
    :goto_b3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6210\u529f\u6d88\u606f\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u9519\u8bef\u6d88\u606f: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    return-void

    .line 225
    :goto_e8
    if-eqz v2, :cond_f0

    .line 226
    :try_start_ea
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_f0

    .line 237
    :catch_ee
    move-exception v8

    goto :goto_100

    .line 228
    :cond_f0
    :goto_f0
    if-eqz v1, :cond_f5

    .line 229
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 231
    :cond_f5
    if-eqz v3, :cond_fa

    .line 232
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 234
    :cond_fa
    if-eqz v4, :cond_104

    .line 235
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ff} :catch_ee

    goto :goto_104

    .line 238
    .local v8, "e":Ljava/lang/Exception;
    :goto_100
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_105

    .line 239
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_104
    :goto_104
    nop

    .line 240
    :goto_105
    throw v7
.end method
