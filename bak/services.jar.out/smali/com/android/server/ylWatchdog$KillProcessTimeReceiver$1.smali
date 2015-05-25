.class Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 345
    monitor-enter p0

    .line 349
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # getter for: Lcom/android/server/ylWatchdog;->mScreenoffTime:J
    invoke-static {}, Lcom/android/server/ylWatchdog;->access$000()J

    move-result-wide v5

    sub-long v15, v1, v5

    .line 350
    .local v15, "timescreenoff":J
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v11

    .line 351
    .local v11, "availableMemory":J
    const/4 v14, 0x1

    .line 353
    .local v14, "phoneStateIdle":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x33cc

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v3

    .line 354
    .local v3, "triggerTime":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    iget-object v9, v9, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v9, v9, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 355
    const-string v1, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set yulong killprocess in KillProcessTimeReceiver, availableMemory="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v5, 0x400

    div-long v5, v11, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " KB"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 361
    const-string v1, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KillProcessTimeReceiver onReceive/mITelephony = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    iget-object v5, v5, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v5, v5, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_0

    .line 363
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :goto_0
    return-void

    .line 368
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v14

    .line 369
    const-string v1, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KillProcessTimeReceiver onReceive/phoneStateIdle = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :goto_1
    const-wide/32 v1, 0x1b7740

    cmp-long v1, v15, v1

    if-ltz v1, :cond_1

    const-wide/32 v1, 0x11800000

    cmp-long v1, v11, v1

    if-gez v1, :cond_1

    if-eqz v14, :cond_1

    .line 378
    :try_start_2
    const-string v1, "ylWatchdog"

    const-string v2, "onReceive/send yulong killprocess broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->this$1:Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.yulong.android.watchdog.killprocess"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 382
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 386
    .end local v3    # "triggerTime":J
    .end local v11    # "availableMemory":J
    .end local v14    # "phoneStateIdle":Z
    .end local v15    # "timescreenoff":J
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 370
    .restart local v3    # "triggerTime":J
    .restart local v11    # "availableMemory":J
    .restart local v14    # "phoneStateIdle":Z
    .restart local v15    # "timescreenoff":J
    :catch_0
    move-exception v13

    .line 371
    .local v13, "e":Landroid/os/RemoteException;
    const/4 v14, 0x1

    .line 372
    :try_start_3
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
