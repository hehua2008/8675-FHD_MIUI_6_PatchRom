.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_WAKELOCK:Z = false

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final POWER_STATE_ASLEEP:I = 0x2

.field private static final POWER_STATE_AWAKE:I = 0x1

.field private static final POWER_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private mActualPowerState:I

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedPowerState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private mLastGoToSleepReason:I

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

.field private mScreenOnBlockerAcquired:Z

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mUserActivityPending:Z

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/ScreenOnBlocker;Landroid/view/WindowManagerPolicy;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;
    .param p5, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p6, "screenOnBlocker"    # Lcom/android/server/power/ScreenOnBlocker;
    .param p7, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/high16 v2, 0x50000000

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 499
    new-instance v0, Lcom/android/server/power/Notifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 512
    new-instance v0, Lcom/android/server/power/Notifier$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 563
    new-instance v0, Lcom/android/server/power/Notifier$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 121
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 122
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 123
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    .line 124
    iput-object p7, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 126
    new-instance v0, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/power/Notifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/Notifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)Lcom/android/server/power/ScreenOnBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 409
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 410
    return-void
.end method

.method private static getBatteryStatsWakeLockMonitorType(I)I
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 189
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 194
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 192
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private playWirelessChargingStartedSound()V
    .locals 5

    .prologue
    .line 573
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wireless_charging_started_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "soundPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 577
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 578
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 579
    .local v0, "sfx":Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 580
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 581
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 586
    .end local v0    # "sfx":Landroid/media/Ringtone;
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v3}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 587
    return-void
.end method

.method private sendGoToSleepBroadcast(I)V
    .locals 9
    .param p1, "reason"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 545
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->goingToSleep()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 561
    :goto_1
    return-void

    .line 558
    :cond_0
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 559
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_1

    .line 546
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendNextBroadcast()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 429
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 430
    :try_start_0
    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-nez v2, :cond_0

    .line 432
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 433
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    .line 456
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 457
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    .line 458
    .local v1, "powerState":I
    iget v0, p0, Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I

    .line 459
    .local v0, "goToSleepReason":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    const/16 v2, 0xaa5

    invoke-static {v2, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 463
    if-ne v1, v6, :cond_6

    .line 464
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    .line 468
    .end local v0    # "goToSleepReason":I
    .end local v1    # "powerState":I
    :goto_1
    return-void

    .line 434
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-ne v2, v6, :cond_3

    .line 436
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-ne v2, v4, :cond_2

    .line 438
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 439
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 441
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 442
    monitor-exit v3

    goto :goto_1

    .line 446
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-ne v2, v6, :cond_5

    .line 448
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 449
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    goto :goto_0

    .line 451
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 452
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 466
    .restart local v0    # "goToSleepReason":I
    .restart local v1    # "powerState":I
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast(I)V

    goto :goto_1
.end method

.method private sendUserActivity()V
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_0

    .line 415
    monitor-exit v1

    .line 421
    :goto_0
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 418
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendWakeUpBroadcast()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 476
    const/16 v0, 0xaa8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 478
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 481
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 497
    :goto_1
    return-void

    .line 494
    :cond_0
    const/16 v0, 0xaa7

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 495
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_1

    .line 482
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePendingBroadcastLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 395
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    if-eq v1, v2, :cond_1

    .line 399
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 400
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 401
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 402
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 375
    const-string v0, "Display Notifier State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualPowerState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastGoToSleepReason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWakeUpBroadcast="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingGoToSleepBroadcast="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBroadcastedPowerState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedPowerState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBroadcastInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBroadcastStartTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivityPending="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenOnBlockerAcquired="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    monitor-exit v1

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGoToSleepFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 321
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_0
    iget v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eq v0, v2, :cond_1

    .line 323
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 325
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 327
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 331
    :cond_1
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGoToSleepStarted(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x0

    .line 284
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 285
    :try_start_0
    iput p1, p0, Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I

    .line 286
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    const/4 v0, 0x2

    .line 292
    .local v0, "why":I
    iget v1, p0, Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I

    packed-switch v1, :pswitch_data_0

    .line 300
    :goto_0
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 301
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy;->screenTurnedOff(I)V

    .line 304
    return-void

    .line 286
    .end local v0    # "why":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 294
    .restart local v0    # "why":I
    :pswitch_0
    const/4 v0, 0x1

    .line 295
    goto :goto_0

    .line 297
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onScreenBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUserActivity(II)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 349
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_0

    .line 350
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 351
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 352
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 353
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v2

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 344
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 148
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v0

    .line 149
    .local v0, "monitorType":I
    if-eqz p6, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p6, p5, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 160
    .end local v0    # "monitorType":I
    :goto_0
    return-void

    .line 152
    .restart local v0    # "monitorType":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p4, p5, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V

    .line 154
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-interface {v1, v2, v3, p4, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v0    # "monitorType":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 175
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v0

    .line 176
    .local v0, "monitorType":I
    if-eqz p6, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p6, p5, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 186
    .end local v0    # "monitorType":I
    :goto_0
    return-void

    .line 179
    .restart local v0    # "monitorType":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p4, p5, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V

    .line 180
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-interface {v1, v2, v3, p4, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0    # "monitorType":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWakeUpFinished()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onWakeUpStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 253
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    if-eq v0, v2, :cond_1

    .line 255
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/Notifier;->mActualPowerState:I

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 257
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z

    .line 259
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;

    invoke-interface {v0}, Lcom/android/server/power/ScreenOnBlocker;->acquire()V

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 263
    :cond_1
    monitor-exit v1

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWirelessChargingStarted()V
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 367
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 369
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    return-void
.end method
