.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 1406
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1407
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 1411
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    .local v3, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)I

    move-result v8

    # invokes: Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I
    invoke-static {v2, v8}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;I)I

    move-result v22

    .line 1418
    .local v22, "result":I
    const-string v2, "AlarmManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waitForAlarm result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1423
    const/high16 v2, 0x10000

    and-int v2, v2, v22

    if-eqz v2, :cond_0

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1430
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_SET"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v20, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1436
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 1437
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1438
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1458
    .local v4, "nowELAPSED":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;JJ)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)V

    .line 1461
    const-string v2, "sys.quickboot.enable"

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->filtQuickBootAlarms(Ljava/util/ArrayList;)V
    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;)V

    .line 1466
    :cond_1
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_7

    .line 1467
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$Alarm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    .local v14, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_1
    const-string v2, "AlarmManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sending alarm/alarm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", alarm.operation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    # getter for: Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1100()Landroid/content/Intent;

    move-result-object v2

    const-string v11, "android.intent.extra.ALARM_COUNT"

    iget v12, v14, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v9, v14, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1483
    :cond_2
    new-instance v19, Lcom/android/server/AlarmManagerService$InFlight;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v9, v14, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v10, v14, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v8, v9, v10}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;I)V

    .line 1485
    .local v19, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # operator++ for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1408(Lcom/android/server/AlarmManagerService;)I

    .line 1487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v8, Ljava/lang/Integer;

    iget v9, v14, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1489
    .local v15, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v2, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 1490
    iget v2, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v2, :cond_5

    .line 1491
    const/4 v2, 0x1

    iput v2, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1492
    iput-wide v4, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 1496
    :goto_2
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v17, v0

    .line 1497
    .local v17, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 1498
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v2, :cond_6

    .line 1499
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1500
    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 1504
    :goto_3
    iget v2, v14, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v8, 0x2

    if-eq v2, v8, :cond_3

    iget v2, v14, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v2, :cond_3

    iget v2, v14, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v8, 0x4

    if-ne v2, v8, :cond_4

    .line 1507
    :cond_3
    iget v2, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 1508
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 1509
    iget-object v2, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V

    .line 1466
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_4
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 1494
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_5
    iget v2, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1512
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_0
    move-exception v16

    .line 1513
    .local v16, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    iget-wide v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_4

    .line 1517
    const-string v2, "AlarmManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PendingIntent.CanceledException/alarm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v0, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    .line 1519
    .local v21, "p":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v2

    new-instance v8, Lcom/android/server/AlarmManagerService$AlarmThread$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Lcom/android/server/AlarmManagerService$AlarmThread$1;-><init>(Lcom/android/server/AlarmManagerService$AlarmThread;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v8}, Lcom/android/server/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 1532
    .end local v4    # "nowELAPSED":J
    .end local v6    # "nowRTC":J
    .end local v14    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v16    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v18    # "i":I
    .end local v21    # "p":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1502
    .restart local v4    # "nowELAPSED":J
    .restart local v6    # "nowRTC":J
    .restart local v14    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v18    # "i":I
    .restart local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_6
    :try_start_3
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1528
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v19    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v16

    .line 1529
    .local v16, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v2, "AlarmManagerService"

    const-string v8, "Failure sending alarm."

    move-object/from16 v0, v16

    invoke-static {v2, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1532
    .end local v14    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v16    # "e":Ljava/lang/RuntimeException;
    :cond_7
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
