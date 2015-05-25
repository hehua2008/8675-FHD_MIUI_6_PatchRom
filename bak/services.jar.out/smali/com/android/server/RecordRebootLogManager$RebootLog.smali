.class final Lcom/android/server/RecordRebootLogManager$RebootLog;
.super Lcom/android/server/YulongRecordLog;
.source "RecordRebootLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecordRebootLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RebootLog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecordRebootLogManager;


# direct methods
.method public constructor <init>(Lcom/android/server/RecordRebootLogManager;)V
    .locals 6

    .prologue
    .line 55
    const-string v2, "/persist"

    const-string v3, "reboot_type.log"

    const-wide/32 v4, 0x100000

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/RecordRebootLogManager$RebootLog;-><init>(Lcom/android/server/RecordRebootLogManager;Ljava/lang/String;Ljava/lang/String;J)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/server/RecordRebootLogManager;Ljava/lang/String;)V
    .locals 6
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v3, "reboot_type.log"

    const-wide/32 v4, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/RecordRebootLogManager$RebootLog;-><init>(Lcom/android/server/RecordRebootLogManager;Ljava/lang/String;Ljava/lang/String;J)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/server/RecordRebootLogManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 67
    const-wide/32 v4, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/RecordRebootLogManager$RebootLog;-><init>(Lcom/android/server/RecordRebootLogManager;Ljava/lang/String;Ljava/lang/String;J)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/server/RecordRebootLogManager;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fileMaxSize"    # J

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/RecordRebootLogManager$RebootLog;->this$0:Lcom/android/server/RecordRebootLogManager;

    .line 59
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/YulongRecordLog;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 60
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "[yyyy-MM-dd HH:mm:ss]"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reboot reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "strLog":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    if-nez v5, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v5, "RecordRebootLogManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RebootLog.write: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    if-eqz v3, :cond_2

    .line 84
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :cond_2
    if-eqz v3, :cond_3

    .line 91
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v2, v3

    .line 96
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    if-eqz v2, :cond_0

    .line 91
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 93
    :catch_1
    move-exception v1

    .line 94
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 90
    :goto_3
    if-eqz v2, :cond_4

    .line 91
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 89
    :cond_4
    :goto_4
    throw v5

    .line 93
    :catch_2
    move-exception v1

    .line 94
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 93
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .line 94
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 86
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method
