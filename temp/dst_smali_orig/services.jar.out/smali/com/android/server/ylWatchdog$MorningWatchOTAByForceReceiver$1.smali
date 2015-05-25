.class Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mMorningWatchOTAByForceIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mPersistentWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->this$0:Lcom/android/server/ylWatchdog;

    # invokes: Lcom/android/server/ylWatchdog;->isDataServiceWorking()Z
    invoke-static {v0}, Lcom/android/server/ylWatchdog;->access$100(Lcom/android/server/ylWatchdog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ylWatchdog"

    const-string v1, "MorningWatchOTAByForceReceiver, The alarm is cancelled for the data service is active"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver$1;->this$1:Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;->this$0:Lcom/android/server/ylWatchdog;

    const-string v1, "otabyforce"

    invoke-virtual {v0, v1}, Lcom/android/server/ylWatchdog;->rebootSystem(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
