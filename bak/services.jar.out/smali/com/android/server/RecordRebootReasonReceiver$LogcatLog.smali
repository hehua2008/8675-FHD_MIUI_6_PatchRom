.class final Lcom/android/server/RecordRebootReasonReceiver$LogcatLog;
.super Lcom/android/server/YulongRecordLog;
.source "RecordRebootReasonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecordRebootReasonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LogcatLog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecordRebootReasonReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/RecordRebootReasonReceiver;)V
    .locals 6

    .prologue
    .line 190
    const-string v2, "/persist/logcrash"

    const-string v3, "zygotecrash.gz"

    const-wide/32 v4, 0x100000

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/RecordRebootReasonReceiver$LogcatLog;-><init>(Lcom/android/server/RecordRebootReasonReceiver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lcom/android/server/RecordRebootReasonReceiver;Ljava/lang/String;)V
    .locals 6
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v3, "zygotecrash.gz"

    const-wide/32 v4, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/RecordRebootReasonReceiver$LogcatLog;-><init>(Lcom/android/server/RecordRebootReasonReceiver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/android/server/RecordRebootReasonReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 202
    const-wide/32 v4, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/RecordRebootReasonReceiver$LogcatLog;-><init>(Lcom/android/server/RecordRebootReasonReceiver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lcom/android/server/RecordRebootReasonReceiver;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fileMaxSize"    # J

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/RecordRebootReasonReceiver$LogcatLog;->this$0:Lcom/android/server/RecordRebootReasonReceiver;

    .line 194
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/YulongRecordLog;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 195
    return-void
.end method

.method private renameFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .param p1, "tracesDir"    # Ljava/io/File;
    .param p2, "tracesFile"    # Ljava/io/File;

    .prologue
    .line 248
    const/4 v3, 0x0

    .line 249
    .local v3, "lastTracesFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 250
    .local v1, "curTracesFile":Ljava/io/File;
    const/16 v0, 0xa

    .line 251
    .local v0, "N":I
    const-string v5, "RecordRebootReasonReceiver"

    const-string v6, "ready to rename.."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 253
    const-string v5, "zygotecrash%02d.gz"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1    # "curTracesFile":Ljava/io/File;
    invoke-direct {v1, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    .restart local v1    # "curTracesFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 262
    :cond_0
    :goto_1
    move-object v3, v1

    .line 252
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 265
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    return v5
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, "input":Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 212
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v8, Ljava/lang/ProcessBuilder;

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/system/bin/logcat"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "-v"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "time"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "-b"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "events"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "-b"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "system"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "-b"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "main"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "-t"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "50000"

    aput-object v11, v9, v10

    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 215
    .local v4, "logcat":Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :goto_1
    :try_start_3
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 222
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .local v7, "out":Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v5

    .local v5, "num":I
    if-lez v5, :cond_2

    .line 223
    invoke-virtual {v7, v5}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 227
    .end local v5    # "num":I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 229
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v4    # "logcat":Ljava/lang/Process;
    .local v1, "e1":Ljava/io/IOException;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    :goto_3
    :try_start_6
    const-string v8, "RecordRebootReasonReceiver"

    const-string v9, "error: "

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 233
    if-eqz v2, :cond_0

    .line 234
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 236
    :cond_0
    if-eqz v6, :cond_1

    .line 237
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 244
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_4
    iget-object v8, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-direct {p0, v8, v9}, Lcom/android/server/RecordRebootReasonReceiver$LogcatLog;->renameFile(Ljava/io/File;Ljava/io/File;)Z

    .line 245
    return-void

    .line 225
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "logcat":Ljava/lang/Process;
    .restart local v5    # "num":I
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :cond_2
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 233
    if-eqz v3, :cond_3

    .line 234
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 236
    :cond_3
    if-eqz v7, :cond_4

    .line 237
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_4
    :goto_5
    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 242
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 232
    .end local v4    # "logcat":Ljava/lang/Process;
    .end local v5    # "num":I
    :catchall_0
    move-exception v8

    .line 233
    :goto_6
    if-eqz v2, :cond_5

    .line 234
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 236
    :cond_5
    if-eqz v6, :cond_6

    .line 237
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 232
    :cond_6
    :goto_7
    throw v8

    .line 239
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 240
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "logcat":Ljava/lang/Process;
    .restart local v5    # "num":I
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v0

    .line 240
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 232
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "num":I
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_6

    .end local v2    # "input":Ljava/io/InputStreamReader;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 227
    .end local v4    # "logcat":Ljava/lang/Process;
    :catch_4
    move-exception v1

    goto :goto_3

    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "logcat":Ljava/lang/Process;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 216
    :catch_6
    move-exception v8

    goto :goto_1

    .line 215
    :catch_7
    move-exception v8

    goto/16 :goto_0
.end method
