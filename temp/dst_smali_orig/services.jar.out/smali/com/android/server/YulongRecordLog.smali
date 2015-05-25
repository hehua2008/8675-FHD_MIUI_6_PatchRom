.class public abstract Lcom/android/server/YulongRecordLog;
.super Ljava/lang/Object;
.source "YulongRecordLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YulongRecordLog"


# instance fields
.field private final filename:Ljava/lang/String;

.field private final filepath:Ljava/lang/String;

.field protected logFile:Ljava/io/File;

.field private final logMaxSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v0, "/persist"

    const-string v1, "ylrecord.log"

    const-wide/32 v2, 0x100000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/YulongRecordLog;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const-string v0, "ylrecord.log"

    const-wide/32 v1, 0x100000

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/YulongRecordLog;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/YulongRecordLog;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "logFileMaxSize"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/YulongRecordLog;->filepath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/YulongRecordLog;->filename:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/YulongRecordLog;->logMaxSize:J

    invoke-direct {p0}, Lcom/android/server/YulongRecordLog;->createLogFile()Ljava/io/File;

    return-void
.end method

.method private final createLogFile()Ljava/io/File;
    .locals 6

    .prologue
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/YulongRecordLog;->filepath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "recordLogDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/YulongRecordLog;->filename:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    const-string v2, "YulongRecordLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log name for recording : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    iget-object v2, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/YulongRecordLog;->logMaxSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    iget-object v2, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b6

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v2, "YulongRecordLog"

    const-string v3, "Failed to create log name for recording reboot type "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final record(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "YulongRecordLog"

    const-string v1, "file is null or not exists."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/YulongRecordLog;->logMaxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-direct {p0}, Lcom/android/server/YulongRecordLog;->createLogFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/YulongRecordLog;->logFile:Ljava/io/File;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/YulongRecordLog;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract write(Ljava/lang/String;)V
.end method
