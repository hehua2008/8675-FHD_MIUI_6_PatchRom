.class Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver$1;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;

    iget-object v2, v2, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    # invokes: Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses()J
    invoke-static {v2}, Lcom/android/server/ylWatchdog;->access$200(Lcom/android/server/ylWatchdog;)J

    move-result-wide v0

    .line 407
    .local v0, "totalPssOfPersistentProcesses":J
    iget-object v2, p0, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;

    iget-object v2, v2, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/ylWatchdog;->isNecessaryToKillPersistentInTheMorning(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    const-string v2, "ylWatchdog"

    const-string v3, "MorningWatchStartReceiver, The alarm is cancelled for there\'s enough memory available"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    monitor-exit p0

    .line 414
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;

    iget-object v2, v2, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    # invokes: Lcom/android/server/ylWatchdog;->startKillPersistentProcesses()V
    invoke-static {v2}, Lcom/android/server/ylWatchdog;->access$300(Lcom/android/server/ylWatchdog;)V

    .line 412
    const-string v2, "ylWatchdog"

    const-string v3, "start kill persistent processes"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    monitor-exit p0

    goto :goto_0

    .end local v0    # "totalPssOfPersistentProcesses":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
