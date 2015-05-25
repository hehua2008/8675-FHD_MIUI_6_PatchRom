.class Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog$TimeChangedReceiver;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 552
    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 555
    const-string v0, "ylWatchdog"

    const-string v1, "TimeChangedReceiver, remove mMorningWatchStartIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mPersistentWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 564
    const-string v0, "ylWatchdog"

    const-string v1, "TimeChangedReceiver, remove mPersistentWatchStartIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 569
    const-string v0, "ylWatchdog"

    const-string v1, "TimeChangedReceiver, remove mBackupKeyDatabaseIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 573
    iget-object v0, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x33cc

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v2

    .line 574
    .local v2, "triggerTime":J
    iget-object v0, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v8, v8, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v8, v8, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 575
    const-string v0, "ylWatchdog"

    const-string v1, "set yulong killprocess in TimeChangedReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$TimeChangedReceiver$1;->this$1:Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$TimeChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mMorningWatchOTAByForceIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 583
    monitor-exit p0

    return-void

    .line 584
    .end local v2    # "triggerTime":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
