.class Lcom/android/server/ylWatchdog$MorningWatchStartReceiver$1;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    iget-object v2, v2, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v2, v2, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    iget-object v3, v3, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v3, v3, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    iget-object v2, v2, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v2, v2, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    iget-object v3, v3, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v3, v3, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v0

    .local v0, "availableMemory":J
    iget-object v2, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    iget-object v2, v2, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/ylWatchdog;->isNecessaryToRebootByStealthInTheMorning(J)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ylWatchdog"

    const-string v3, "MorningWatchStartReceiver, The alarm is cancelled for there\'s enough memory available"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    iget-object v2, v2, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    # invokes: Lcom/android/server/ylWatchdog;->isDataServiceWorking()Z
    invoke-static {v2}, Lcom/android/server/ylWatchdog;->access$100(Lcom/android/server/ylWatchdog;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ylWatchdog"

    const-string v3, "MorningWatchStartReceiver, The alarm is cancelled for the data service is active"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    .end local v0    # "availableMemory":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "availableMemory":J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    iget-object v2, v2, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    const-string v3, "lowmem"

    # invokes: Lcom/android/server/ylWatchdog;->rebootOnLowMemory(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/server/ylWatchdog;->access$400(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
