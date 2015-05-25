.class Lcom/android/server/ylWatchdog$6;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0

    .prologue
    .line 1882
    iput-object p1, p0, Lcom/android/server/ylWatchdog$6;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1884
    const-string v2, "ylWatchdog"

    const-string v3, "Performing low-level shutdown...mShutTimeoutThread"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const-wide/16 v2, 0x3a98

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    :goto_0
    iget-object v2, p0, Lcom/android/server/ylWatchdog$6;->this$0:Lcom/android/server/ylWatchdog;

    # getter for: Lcom/android/server/ylWatchdog;->mIsShutTimeout:Z
    invoke-static {v2}, Lcom/android/server/ylWatchdog;->access$900(Lcom/android/server/ylWatchdog;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1910
    :goto_1
    return-void

    .line 1888
    :catch_0
    move-exception v1

    .line 1890
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1897
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "ylWatchdog"

    const-string v3, "Shutdown timeout!! Force Low-level Shutdown!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object v2, p0, Lcom/android/server/ylWatchdog$6;->this$0:Lcom/android/server/ylWatchdog;

    # getter for: Lcom/android/server/ylWatchdog;->mReboot:Z
    invoke-static {v2}, Lcom/android/server/ylWatchdog;->access$1000(Lcom/android/server/ylWatchdog;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1901
    const-string v2, "ylWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ylWatchdog$6;->this$0:Lcom/android/server/ylWatchdog;

    # getter for: Lcom/android/server/ylWatchdog;->mRebootReason:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/ylWatchdog;->access$1100(Lcom/android/server/ylWatchdog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :try_start_1
    iget-object v2, p0, Lcom/android/server/ylWatchdog$6;->this$0:Lcom/android/server/ylWatchdog;

    # getter for: Lcom/android/server/ylWatchdog;->mRebootReason:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ylWatchdog;->access$1100(Lcom/android/server/ylWatchdog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1904
    :catch_1
    move-exception v0

    .line 1905
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ylWatchdog"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1908
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    goto :goto_1
.end method
