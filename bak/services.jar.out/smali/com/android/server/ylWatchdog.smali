.class public Lcom/android/server/ylWatchdog;
.super Ljava/lang/Object;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;,
        Lcom/android/server/ylWatchdog$RebootLog;,
        Lcom/android/server/ylWatchdog$RebootByStealthReceiver;,
        Lcom/android/server/ylWatchdog$ScreenOnReceiver;,
        Lcom/android/server/ylWatchdog$ScreenOffReceiver;,
        Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;,
        Lcom/android/server/ylWatchdog$TimeChangedReceiver;,
        Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;,
        Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;,
        Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;,
        Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;
    }
.end annotation


# static fields
.field static final BACKUP_KEY_DATABASES_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.BACKUPDB"

.field static final BOOT_REASON_LOW_MEMORY:Ljava/lang/String; = "lowmem"

.field static final BOOT_REASON_NO_MEMORY:Ljava/lang/String; = "nomem"

.field static final BOOT_REASON_OTA:Ljava/lang/String; = "otabyforce"

.field static final DATABASE_BACKUP_HIBERNATION_DELAY:I = 0x83d60

.field static final DATABASE_BACKUP_START_TIME:I = 0xe4fc

.field private static final EVERY_MORNING_KILLPROCESS_THRESHOLD:I = 0x11800000

.field private static final MAX_BROADCAST_TIME:I = 0xbb8

.field private static final MAX_MOUNTSERVICE_WAIT_TIME:I = 0x1388

.field private static final MAX_SHUTDOWN_DELAY:I = 0x3a98

.field static final MORNING_WATCH_ELAPSED_TIME_LEAST:I = 0x5265c00

.field static final MORNING_WATCH_EVERYDAY_TIME:I = 0x33cc

.field static final MORNING_WATCH_HIBERNATION_DELAY:I = 0xa1220

.field static final MORNING_WATCH_KILLPERSISTENT_DELAY:I = 0xa1220

.field static final MORNING_WATCH_KILLPERSISTENT_TIME:I = 0x32dc

.field static final MORNING_WATCH_MEMORY_LEAST:I = 0x5000000

.field static final MORNING_WATCH_MEMORY_LESS:I = 0x5500000

.field static final MORNING_WATCH_OTABYFORCE_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.OTABYFORCE"

.field static final MORNING_WATCH_OTABYFORCE_DELAY:I = 0xa1220

.field static final MORNING_WATCH_OTABYFORCE_TIME:I = 0x2e2c

.field static final MORNING_WATCH_PERSISTENT_MEMORY_MAX:I = 0x19000000

.field static final MORNING_WATCH_START_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.MWSTART"

.field static final MORNING_WATCH_START_TIME:I = 0x3534

.field static final OTA_FORCE_FILE_PATH:Ljava/lang/String; = "/cache/recovery/otadl.flg"

.field private static PERSISTENT_APP_KILLED:[Ljava/lang/String; = null

.field static final PERSISTENT_MONITOR_MEMORY_MAX:I = 0xc800000

.field static final PERSISTENT_WATCH_START_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.PWSTART"

.field static final REBOOT_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.REBOOT"

.field static final REBOOT_BY_STEALTH_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.REBOOT"

.field static final REBOOT_BY_STEALTH_DELAY:I = 0x6ec760

.field static final REBOOT_BY_STEALTH_MEMORY_LEAST:I = 0x2600000

.field static final REBOOT_BY_STEALTH_PERSISTENT_MEMORY_MAX:I = 0x1a400000

.field private static final REBOOT_LOG:Ljava/lang/String; = "reboot.log"

.field private static final REBOOT_ON_LOWMEM_LOG_MAX_SIZE:J = 0x200L

.field static final TAG:Ljava/lang/String; = "ylWatchdog"

.field static final TERMINATE_ORPHAN_SERVICES_START_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.TOSSTART"

.field private static final TIME_SINCE_BOOT:J = 0x57e40L

.field public static final YLKEYDB_ACTION_PROPERTY:Ljava/lang/String; = "service.ylkeydb.cmd"

.field public static final YLKEYDB_FILE_PROPERTY:Ljava/lang/String; = "service.ylkeydb.file"

.field public static final YLKEYDB_SERVERY_NAME:Ljava/lang/String; = "ylkeydb"

.field private static final YULONG_KILL_PROCESS_ACTION:Ljava/lang/String; = "com.yulong.android.watchdog.killprocess"

.field private static final YULONG_KILL_PROCESS_TIME_ACTION:Ljava/lang/String; = "com.yulong.android.killprocesstime"

.field public static final YULONG_LAST_SHUTDOWN_REASON:Ljava/lang/String; = "persist.sys.yllastshut.reason"

.field public static final YULONG_STEALTH_SHUTDOWN_REANSON:Ljava/lang/String; = "persist.sys.stealth.reason"

.field static final localLOGV:Z = true

.field private static mScreenoffTime:J

.field private static mStartMemMonitor:Z

.field static sylWatchdog:Lcom/android/server/ylWatchdog;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

.field mBattery:Lcom/android/server/BatteryService;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mIsShutTimeout:Z

.field mMorningKillProcessIntent:Landroid/app/PendingIntent;

.field mMorningWatchOTAByForceIntent:Landroid/app/PendingIntent;

.field mMorningWatchStartIntent:Landroid/app/PendingIntent;

.field mPersistentWatchStartIntent:Landroid/app/PendingIntent;

.field mPower:Lcom/android/server/power/PowerManagerService;

.field private mReboot:Z

.field mRebootByStealthIntent:Landroid/app/PendingIntent;

.field private mRebootReason:Ljava/lang/String;

.field mShutTimeoutThread:Ljava/lang/Thread;

.field mWDTimeChangedIntent:Landroid/app/PendingIntent;

.field mWDTimeZoneChangedIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/ylWatchdog;->mScreenoffTime:J

    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.phone"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ylWatchdog;->PERSISTENT_APP_KILLED:[Ljava/lang/String;

    .line 1230
    sput-boolean v3, Lcom/android/server/ylWatchdog;->mStartMemMonitor:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mActionDoneSync:Ljava/lang/Object;

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ylWatchdog;->mReboot:Z

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ylWatchdog;->mIsShutTimeout:Z

    .line 1882
    new-instance v0, Lcom/android/server/ylWatchdog$6;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$6;-><init>(Lcom/android/server/ylWatchdog;)V

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mShutTimeoutThread:Ljava/lang/Thread;

    .line 1064
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 75
    sget-wide v0, Lcom/android/server/ylWatchdog;->mScreenoffTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/ylWatchdog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->isDataServiceWorking()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/ylWatchdog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/ylWatchdog;->mReboot:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/ylWatchdog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/ylWatchdog;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ylWatchdog;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->startKillPersistentProcesses()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->rebootOnLowMemory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->processScreenOffFunc()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->processScreenOnReceiverFunc()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ylWatchdog;Ljava/util/ArrayList;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/ylWatchdog;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->processStealShutdown(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ylWatchdog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ylWatchdog;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/ylWatchdog;->mIsShutTimeout:Z

    return v0
.end method

.method static computeCalendarTime(Ljava/util/Calendar;JJ)J
    .locals 6
    .param p0, "c"    # Ljava/util/Calendar;
    .param p1, "curTime"    # J
    .param p3, "secondsSinceMidnight"    # J

    .prologue
    .line 1486
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1488
    long-to-int v3, p3

    div-int/lit16 v2, v3, 0xe10

    .line 1489
    .local v2, "val":I
    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1490
    mul-int/lit16 v3, v2, 0xe10

    int-to-long v3, v3

    sub-long/2addr p3, v3

    .line 1491
    long-to-int v3, p3

    div-int/lit8 v2, v3, 0x3c

    .line 1492
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1493
    const/16 v3, 0xd

    long-to-int v4, p3

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1494
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1496
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1497
    .local v0, "newTime":J
    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 1500
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1501
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1504
    :cond_0
    return-wide v0
.end method

.method public static getInstance()Lcom/android/server/ylWatchdog;
    .locals 1

    .prologue
    .line 1055
    sget-object v0, Lcom/android/server/ylWatchdog;->sylWatchdog:Lcom/android/server/ylWatchdog;

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Lcom/android/server/ylWatchdog;

    invoke-direct {v0}, Lcom/android/server/ylWatchdog;-><init>()V

    sput-object v0, Lcom/android/server/ylWatchdog;->sylWatchdog:Lcom/android/server/ylWatchdog;

    .line 1059
    :cond_0
    sget-object v0, Lcom/android/server/ylWatchdog;->sylWatchdog:Lcom/android/server/ylWatchdog;

    return-object v0
.end method

.method private getMaxPersistentMemoryValue()I
    .locals 11

    .prologue
    const-wide/32 v9, 0xe1000

    const-wide/32 v7, 0x7e900

    .line 1178
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1179
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1180
    .local v3, "winManage":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1181
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v4, v5

    int-to-long v1, v4

    .line 1182
    .local v1, "mDisplay":J
    const-string v4, "ylWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "W: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    cmp-long v4, v1, v7

    if-gtz v4, :cond_0

    .line 1184
    const/16 v4, 0xbe

    .line 1190
    :goto_0
    return v4

    .line 1185
    :cond_0
    cmp-long v4, v1, v7

    if-lez v4, :cond_1

    cmp-long v4, v1, v9

    if-gtz v4, :cond_1

    .line 1186
    const/16 v4, 0xdc

    goto :goto_0

    .line 1187
    :cond_1
    cmp-long v4, v1, v9

    if-lez v4, :cond_2

    const-wide/32 v4, 0x1fa400

    cmp-long v4, v1, v4

    if-gtz v4, :cond_2

    .line 1188
    const/16 v4, 0x118

    goto :goto_0

    .line 1190
    :cond_2
    const/16 v4, 0x190

    goto :goto_0
.end method

.method private getTotalPssOfPersistentProcesses()J
    .locals 2

    .prologue
    .line 1290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalPssOfPersistentProcesses(Ljava/util/ArrayList;)J
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1299
    .local p1, "persistentIDandMemSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-wide/16 v13, 0x0

    .line 1300
    .local v13, "totalPersistentProcessMem":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v4, "persistentProcessNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v5, "persistentProcessPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    const-string v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1304
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    .line 1307
    .local v11, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 1308
    .local v9, "processCount":I
    :goto_0
    const/4 v10, 0x0

    .local v10, "processIndex":I
    :goto_1
    if-ge v10, v9, :cond_2

    .line 1309
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1311
    .local v7, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v15, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_0

    .line 1312
    iget-object v15, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    iget v15, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1307
    .end local v7    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v9    # "processCount":I
    .end local v10    # "processIndex":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1317
    .restart local v9    # "processCount":I
    .restart local v10    # "processIndex":I
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1318
    .local v6, "persistentProcessPidsCount":I
    new-array v8, v6, [I

    .line 1320
    .local v8, "pids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 1321
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v8, v2

    .line 1320
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1324
    :cond_3
    const/4 v3, 0x0

    .line 1326
    .local v3, "mem":[Landroid/os/Debug$MemoryInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    invoke-interface {v15, v8}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1332
    :goto_3
    if-eqz v3, :cond_5

    .line 1333
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v6, :cond_5

    .line 1334
    const-string v16, "ylWatchdog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Pss used by "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " is "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v17, v3, v2

    invoke-virtual/range {v17 .. v17}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " KB"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    aget-object v15, v3, v2

    invoke-virtual {v15}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v12

    .line 1336
    .local v12, "size":I
    int-to-long v15, v12

    add-long/2addr v13, v15

    .line 1337
    const v15, 0x32000

    if-le v12, v15, :cond_4

    .line 1338
    if-eqz p1, :cond_4

    .line 1339
    aget v15, v8, v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    div-int/lit16 v15, v12, 0x400

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1346
    .end local v12    # "size":I
    :cond_5
    const-string v15, "ylWatchdog"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Pss total used by persistent processes is: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " KB"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const-wide/16 v15, 0x400

    mul-long/2addr v15, v13

    return-wide v15

    .line 1328
    :catch_0
    move-exception v15

    goto/16 :goto_3
.end method

.method private getTotalPssOfProtectedProcesses()V
    .locals 21

    .prologue
    .line 1665
    const-wide/16 v16, 0x0

    .line 1666
    .local v16, "totalProtectedProcessMem":J
    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.yulong.android.backup"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    const-string v19, "com.yulong.logredirect"

    aput-object v19, v11, v18

    const/16 v18, 0x2

    const-string v19, "com.android.bluetooth"

    aput-object v19, v11, v18

    const/16 v18, 0x3

    const-string v19, "com.yulong.android.ota"

    aput-object v19, v11, v18

    const/16 v18, 0x4

    const-string v19, "com.yulong.android.weatherwidget"

    aput-object v19, v11, v18

    const/16 v18, 0x5

    const-string v19, "com.android.providers.contacts"

    aput-object v19, v11, v18

    const/16 v18, 0x6

    const-string v19, "com.yulong.android.dev.gcoption"

    aput-object v19, v11, v18

    .line 1676
    .local v11, "protectedProcess":[Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    .local v13, "protectedProcessNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    .local v14, "protectedProcessPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1682
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    .line 1685
    .local v10, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 1686
    .local v8, "processCount":I
    :goto_0
    const/4 v9, 0x0

    .local v9, "processIndex":I
    :goto_1
    if-ge v9, v8, :cond_3

    .line 1687
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1690
    .local v6, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v12, 0x0

    .local v12, "protectedProcessCount":I
    :goto_2
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_2

    .line 1691
    aget-object v18, v11, v12

    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1692
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    iget v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1685
    .end local v6    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8    # "processCount":I
    .end local v9    # "processIndex":I
    .end local v12    # "protectedProcessCount":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1686
    .restart local v6    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v8    # "processCount":I
    .restart local v9    # "processIndex":I
    .restart local v12    # "protectedProcessCount":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1699
    .end local v6    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v12    # "protectedProcessCount":I
    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1700
    .local v15, "protectedProcessPidsCount":I
    new-array v7, v15, [I

    .line 1702
    .local v7, "pids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v15, :cond_4

    .line 1703
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v7, v4

    .line 1702
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1706
    :cond_4
    const/4 v5, 0x0

    .line 1709
    .local v5, "mem":[Landroid/os/Debug$MemoryInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1714
    :goto_4
    if-eqz v5, :cond_5

    .line 1715
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v15, :cond_5

    .line 1717
    const-string v19, "ylWatchdog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Pss used by "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " is "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v20, v5, v4

    invoke-virtual/range {v20 .. v20}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " KB"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    aget-object v18, v5, v4

    invoke-virtual/range {v18 .. v18}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 1715
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1723
    :cond_5
    const-string v18, "ylWatchdog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Pss total used by protect processes is: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " KB"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    return-void

    .line 1710
    :catch_0
    move-exception v18

    goto/16 :goto_4
.end method

.method private final isDataServiceWorking()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 634
    const-string v2, "yulong.data.inorout"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 635
    .local v0, "dataServiceState":I
    if-eqz v0, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 636
    const/4 v1, 0x1

    .line 654
    :cond_0
    return v1
.end method

.method private final isIccLockEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 661
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager_init()Ljava/lang/Object;

    move-result-object v0

    .line 662
    .local v0, "PhoneModeManager":Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager_getIccLockEnabled(Ljava/lang/Object;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager_getIccLockEnabled(Ljava/lang/Object;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKilledProcess(Ljava/lang/String;)Z
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 1217
    const/4 v4, 0x0

    .line 1218
    .local v4, "result":Z
    sget-object v0, Lcom/android/server/ylWatchdog;->PERSISTENT_APP_KILLED:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1219
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1220
    const/4 v4, 0x1

    .line 1224
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    return v4

    .line 1218
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private processScreenOffFunc()V
    .locals 28

    .prologue
    .line 674
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/ylWatchdog;->mScreenoffTime:J

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ylWatchdog;->mPersistentWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x33cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v5

    .line 688
    .local v5, "triggerTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 689
    const-string v3, "ylWatchdog"

    const-string v4, "set yulong killprocess in ScreenOffReceiver"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v23

    .line 698
    .local v23, "mITelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v23, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    const-string v3, "ylWatchdog"

    const-string v4, "Alarm went off, checking reboot."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v3, "ylWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Last boot reason: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ro.yulong.boot.reason"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/16 v25, 0x1

    .line 711
    .local v25, "phoneStateIdle":Z
    :try_start_0
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    .line 718
    :goto_1
    if-eqz v25, :cond_0

    .line 724
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ylWatchdog;->isDataServiceWorking()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 725
    const-string v3, "ylWatchdog"

    const-string v4, "Data service is detected, cancelling the alarm"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 729
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ylWatchdog;->isIccLockEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 730
    const-string v3, "ylWatchdog"

    const-string v4, "isIccLockEnabled is detected, cancelling the alarm"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 739
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v7, 0x57e40

    cmp-long v3, v3, v7

    if-gez v3, :cond_4

    .line 740
    const-string v3, "ylWatchdog"

    const-string v4, "time since boot is less than 6 mins, do NOT set any alarms."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0xe4fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v9

    .line 747
    .local v9, "nextWouldBeTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0x83d60

    add-long/2addr v3, v7

    cmp-long v3, v9, v3

    if-gez v3, :cond_5

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0x83d60

    add-long v9, v3, v7

    .line 750
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 751
    const-string v3, "ylWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling next backup key databases alarm "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v9, v7

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    long-to-double v7, v7

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v11

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "m from now"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v21

    .line 755
    .local v21, "availableMemory":J
    const-string v3, "ylWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threre is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v7, 0x400

    div-long v7, v21, v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " KB memory availabe!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses()J

    move-result-wide v26

    .line 761
    .local v26, "totalPssOfPersistentProcesses":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ylWatchdog;->getTotalPssOfProtectedProcesses()V

    .line 768
    new-instance v24, Ljava/io/File;

    const-string v3, "/cache/recovery/otadl.flg"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v24, "otaForceFile":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x2e2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v9

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0xa1220

    add-long/2addr v3, v7

    cmp-long v3, v9, v3

    if-gez v3, :cond_6

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0xa1220

    add-long v9, v3, v7

    .line 774
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ylWatchdog;->mMorningWatchOTAByForceIntent:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 775
    const-string v3, "ylWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling next morning watch OTA by force "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v9, v7

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    long-to-double v7, v7

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v11

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "m from now"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ylWatchdog;->isNecessaryToRebootByStealth(J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 785
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v12, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v7, 0x6ec760

    add-long v13, v3, v7

    const-wide/16 v15, -0x1

    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v11 .. v20}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 787
    const-string v3, "ylWatchdog"

    const-string v4, "Scheduling next memcheck alarm for 121.0m from now"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ylWatchdog;->isNecessaryToKillPersistentInTheMorning(J)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x32dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v9

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0xa1220

    add-long/2addr v3, v7

    cmp-long v3, v9, v3

    if-gez v3, :cond_9

    .line 806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0xa1220

    add-long v9, v3, v7

    .line 808
    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ylWatchdog;->mPersistentWatchStartIntent:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 809
    const-string v3, "ylWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling next morning watch alarm "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v9, v7

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    long-to-double v7, v7

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v11

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "m from now"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_a
    const-string v3, "ylWatchdog"

    const-string v4, "run cleandaemon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v3, "ctl.start"

    const-string v4, "cleandaemon"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 789
    :cond_b
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ylWatchdog;->isNecessaryToRebootByStealthInTheMorning(J)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3534

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v9

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0xa1220

    add-long/2addr v3, v7

    cmp-long v3, v9, v3

    if-gez v3, :cond_c

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0xa1220

    add-long v9, v3, v7

    .line 794
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 796
    const-string v3, "ylWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling next morning watch alarm "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v9, v7

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    long-to-double v7, v7

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v11

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "m from now"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 712
    .end local v9    # "nextWouldBeTime":J
    .end local v21    # "availableMemory":J
    .end local v24    # "otaForceFile":Ljava/io/File;
    .end local v26    # "totalPssOfPersistentProcesses":J
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private processScreenOnReceiverFunc()V
    .locals 2

    .prologue
    .line 840
    const-string v0, "ylWatchdog"

    const-string v1, "Screen on, remove the alarms."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/ylWatchdog;->mScreenoffTime:J

    .line 846
    iget-object v0, p0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 847
    iget-object v0, p0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 849
    iget-object v0, p0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 853
    iget-object v0, p0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog;->mMorningWatchOTAByForceIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 859
    iget-object v0, p0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 861
    iget-object v0, p0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog;->mPersistentWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 862
    return-void
.end method

.method private processStealShutdown(Landroid/content/Context;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1742
    new-instance v5, Lcom/android/server/ylWatchdog$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/ylWatchdog$4;-><init>(Lcom/android/server/ylWatchdog;)V

    .line 1750
    .local v5, "br":Landroid/content/BroadcastReceiver;
    const-string v2, "ylWatchdog"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ylWatchdog;->mActionDone:Z

    .line 1754
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ylWatchdog;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1757
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0xbb8

    add-long v18, v2, v6

    .line 1758
    .local v18, "endTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ylWatchdog;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1759
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/ylWatchdog;->mActionDone:Z

    if-nez v2, :cond_0

    .line 1760
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v18, v6

    .line 1761
    .local v13, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_a

    .line 1762
    const-string v2, "ylWatchdog"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    .end local v13    # "delay":J
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    const-string v2, "ylWatchdog"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 1776
    .local v10, "am":Landroid/app/IActivityManager;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ylWatchdog;->mIsShutTimeout:Z

    .line 1777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ylWatchdog;->mShutTimeoutThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1778
    if-eqz v10, :cond_1

    .line 1780
    const/16 v2, 0xbb8

    :try_start_1
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1786
    :cond_1
    :goto_1
    const-string v2, "sensor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/hardware/SensorManager;

    .line 1787
    .local v22, "mSensorManager":Landroid/hardware/SensorManager;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v21

    .line 1788
    .local v21, "mSensor":Landroid/hardware/Sensor;
    if-eqz v21, :cond_2

    .line 1789
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .line 1791
    :cond_2
    const/4 v2, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v21

    .line 1792
    if-eqz v21, :cond_3

    .line 1793
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .line 1795
    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v21

    .line 1796
    if-eqz v21, :cond_4

    .line 1797
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .line 1800
    :cond_4
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 1803
    .local v25, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v11

    .line 1807
    .local v11, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v23

    .line 1811
    .local v23, "mount":Landroid/os/storage/IMountService;
    if-eqz v11, :cond_5

    :try_start_2
    invoke-interface {v11}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_5
    const/4 v12, 0x1

    .line 1812
    .local v12, "bluetoothOff":Z
    :goto_2
    if-nez v12, :cond_6

    .line 1813
    const-string v2, "ylWatchdog"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1823
    :cond_6
    :goto_3
    const/16 v26, 0x1

    .line 1824
    .local v26, "radioOff":Z
    if-eqz v25, :cond_7

    :try_start_3
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_7
    const/16 v26, 0x1

    .line 1825
    :goto_4
    if-nez v26, :cond_8

    .line 1826
    const-string v2, "ylWatchdog"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1836
    :cond_8
    :goto_5
    new-instance v24, Lcom/android/server/ylWatchdog$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ylWatchdog$5;-><init>(Lcom/android/server/ylWatchdog;)V

    .line 1846
    .local v24, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ylWatchdog"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ylWatchdog;->mActionDone:Z

    .line 1850
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x1388

    add-long v16, v2, v6

    .line 1852
    .local v16, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ylWatchdog;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1854
    if-eqz v23, :cond_d

    .line 1855
    :try_start_4
    invoke-interface/range {v23 .. v24}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1863
    :goto_6
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/ylWatchdog;->mActionDone:Z

    if-nez v2, :cond_9

    .line 1864
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v16, v6

    .line 1866
    .restart local v13    # "delay":J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_e

    .line 1867
    const-string v2, "ylWatchdog"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    .end local v13    # "delay":J
    :cond_9
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1879
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ylWatchdog;->mIsShutTimeout:Z

    .line 1880
    return-void

    .line 1767
    .end local v10    # "am":Landroid/app/IActivityManager;
    .end local v11    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .end local v12    # "bluetoothOff":Z
    .end local v16    # "endShutTime":J
    .end local v21    # "mSensor":Landroid/hardware/Sensor;
    .end local v22    # "mSensorManager":Landroid/hardware/SensorManager;
    .end local v23    # "mount":Landroid/os/storage/IMountService;
    .end local v24    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v25    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v26    # "radioOff":Z
    .restart local v13    # "delay":J
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ylWatchdog;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1768
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 1771
    .end local v13    # "delay":J
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 1811
    .restart local v10    # "am":Landroid/app/IActivityManager;
    .restart local v11    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .restart local v21    # "mSensor":Landroid/hardware/Sensor;
    .restart local v22    # "mSensorManager":Landroid/hardware/SensorManager;
    .restart local v23    # "mount":Landroid/os/storage/IMountService;
    .restart local v25    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    const/4 v12, 0x0

    goto :goto_2

    .line 1816
    :catch_1
    move-exception v20

    .line 1817
    .local v20, "ex":Landroid/os/RemoteException;
    const-string v2, "ylWatchdog"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1818
    const/4 v12, 0x1

    .restart local v12    # "bluetoothOff":Z
    goto :goto_3

    .line 1824
    .end local v20    # "ex":Landroid/os/RemoteException;
    .restart local v26    # "radioOff":Z
    :cond_c
    const/16 v26, 0x0

    goto :goto_4

    .line 1829
    :catch_2
    move-exception v20

    .line 1830
    .restart local v20    # "ex":Landroid/os/RemoteException;
    const-string v2, "ylWatchdog"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1831
    const/16 v26, 0x1

    goto :goto_5

    .line 1857
    .end local v20    # "ex":Landroid/os/RemoteException;
    .restart local v16    # "endShutTime":J
    .restart local v24    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :cond_d
    :try_start_8
    const-string v2, "ylWatchdog"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    .line 1859
    :catch_3
    move-exception v15

    .line 1860
    .local v15, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v2, "ylWatchdog"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1877
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v2

    .line 1873
    .restart local v13    # "delay":J
    :cond_e
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ylWatchdog;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    .line 1874
    :catch_4
    move-exception v2

    goto :goto_6

    .line 1781
    .end local v11    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .end local v12    # "bluetoothOff":Z
    .end local v13    # "delay":J
    .end local v16    # "endShutTime":J
    .end local v21    # "mSensor":Landroid/hardware/Sensor;
    .end local v22    # "mSensorManager":Landroid/hardware/SensorManager;
    .end local v23    # "mount":Landroid/os/storage/IMountService;
    .end local v24    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v25    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v26    # "radioOff":Z
    :catch_5
    move-exception v2

    goto/16 :goto_1
.end method

.method private rebootOnLowMemory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 884
    const-string v5, "ylWatchdog"

    const-string v6, "Do not panic, Dear! :)"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v5, "ylWatchdog"

    const-string v6, "The device\'ll reboot on low memory, for better performance."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 907
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v5, "ylWatchdog"

    const-string v6, "Shutdown the Radio(1)..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v2, v4

    .line 910
    .local v2, "radioOff":Z
    :cond_1
    if-nez v2, :cond_2

    .line 911
    const-string v5, "ylWatchdog"

    const-string v6, "Turning off radio..."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z

    .line 913
    const-string v5, "ylWatchdog"

    const-string v6, "Turning off radio over!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :cond_2
    :goto_0
    const-wide/16 v5, 0xbb8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 928
    :goto_1
    new-instance v3, Lcom/android/server/ylWatchdog$RebootLog;

    invoke-direct {v3}, Lcom/android/server/ylWatchdog$RebootLog;-><init>()V

    .line 929
    .local v3, "rebootLog":Lcom/android/server/ylWatchdog$RebootLog;
    if-eqz v3, :cond_3

    .line 930
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reboot on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for better performance."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/ylWatchdog$RebootLog;->write(Ljava/lang/String;)V

    .line 934
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/ylWatchdog;->rebootSystem(Ljava/lang/String;)V

    .line 936
    return v4

    .line 915
    .end local v2    # "radioOff":Z
    .end local v3    # "rebootLog":Lcom/android/server/ylWatchdog$RebootLog;
    :catch_0
    move-exception v0

    .line 916
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v5, "ylWatchdog"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 917
    const/4 v2, 0x1

    .restart local v2    # "radioOff":Z
    goto :goto_0

    .line 922
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private startKillPersistentProcesses()V
    .locals 8

    .prologue
    .line 1198
    iget-object v5, p0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1199
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 1201
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1202
    .local v2, "processCount":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "processIndex":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1203
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1210
    .local v1, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/ylWatchdog;->isKilledProcess(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1211
    const-string v5, "ylWatchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ylwatchdog kill process.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v5}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 1202
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1201
    .end local v1    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "processCount":I
    .end local v3    # "processIndex":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1215
    .restart local v2    # "processCount":I
    .restart local v3    # "processIndex":I
    :cond_2
    return-void
.end method

.method private startPersistentProcessesMemMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1232
    sget-boolean v0, Lcom/android/server/ylWatchdog;->mStartMemMonitor:Z

    if-ne v2, v0, :cond_0

    .line 1287
    :goto_0
    return-void

    .line 1235
    :cond_0
    const-string v0, "ro.debuggable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 1236
    sput-boolean v2, Lcom/android/server/ylWatchdog;->mStartMemMonitor:Z

    goto :goto_0

    .line 1239
    :cond_1
    const-string v0, "libc.debug.malloc"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 1240
    sput-boolean v2, Lcom/android/server/ylWatchdog;->mStartMemMonitor:Z

    goto :goto_0

    .line 1244
    :cond_2
    sput-boolean v2, Lcom/android/server/ylWatchdog;->mStartMemMonitor:Z

    .line 1245
    new-instance v0, Lcom/android/server/ylWatchdog$1;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$1;-><init>(Lcom/android/server/ylWatchdog;)V

    invoke-virtual {v0}, Lcom/android/server/ylWatchdog$1;->start()V

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 1729
    iget-object v1, p0, Lcom/android/server/ylWatchdog;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1730
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ylWatchdog;->mActionDone:Z

    .line 1731
    iget-object v0, p0, Lcom/android/server/ylWatchdog;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1732
    monitor-exit v1

    .line 1733
    return-void

    .line 1732
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getNextWouldBeTime(JJ)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "secondsSinceMidnight"    # J

    .prologue
    .line 1411
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1412
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/ylWatchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v1

    .line 1413
    .local v1, "nextWouldBeTime":J
    return-wide v1
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "battery"    # Lcom/android/server/BatteryService;
    .param p3, "power"    # Lcom/android/server/power/PowerManagerService;
    .param p4, "alarm"    # Lcom/android/server/AlarmManagerService;
    .param p5, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v4, 0x0

    .line 1070
    iput-object p2, p0, Lcom/android/server/ylWatchdog;->mBattery:Lcom/android/server/BatteryService;

    .line 1071
    iput-object p3, p0, Lcom/android/server/ylWatchdog;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 1072
    iput-object p4, p0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 1073
    iput-object p5, p0, Lcom/android/server/ylWatchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 1077
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 1080
    new-instance v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yulong.android.killprocesstime"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1082
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.killprocesstime"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    .line 1095
    new-instance v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$ScreenOffReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1098
    new-instance v0, Lcom/android/server/ylWatchdog$ScreenOnReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$ScreenOnReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1101
    new-instance v0, Lcom/android/server/ylWatchdog$RebootByStealthReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$RebootByStealthReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yulong.android.service.Watchdog.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.service.Watchdog.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    .line 1111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.service.Watchdog.MWSTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    .line 1113
    new-instance v0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yulong.android.service.Watchdog.MWSTART"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mWDTimeChangedIntent:Landroid/app/PendingIntent;

    .line 1123
    new-instance v0, Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$TimeChangedReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mWDTimeZoneChangedIntent:Landroid/app/PendingIntent;

    .line 1128
    new-instance v0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.service.Watchdog.OTABYFORCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mMorningWatchOTAByForceIntent:Landroid/app/PendingIntent;

    .line 1140
    new-instance v0, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$MorningWatchOTAByForceReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yulong.android.service.Watchdog.OTABYFORCE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1147
    iput-object p1, p0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    .line 1152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.service.Watchdog.PWSTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mPersistentWatchStartIntent:Landroid/app/PendingIntent;

    .line 1154
    new-instance v0, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yulong.android.service.Watchdog.PWSTART"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.service.Watchdog.BACKUPDB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    .line 1164
    new-instance v0, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yulong.android.service.Watchdog.BACKUPDB"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1167
    const-string v0, "service.ylkeydb.cmd"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v0, "ctl.start"

    const-string v1, "ylkeydb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->startPersistentProcessesMemMonitor()V

    .line 1172
    return-void
.end method

.method isNecessaryToKillPersistentInTheMorning(J)Z
    .locals 6
    .param p1, "totalPssOfPersistentProcesses"    # J

    .prologue
    const/4 v3, 0x0

    .line 1389
    const-string v4, "ro.monkey"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1390
    const-string v4, "ylWatchdog"

    const-string v5, "Do not kill any application when running monkey test."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_0
    :goto_0
    return v3

    .line 1398
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->getMaxPersistentMemoryValue()I

    move-result v0

    .line 1399
    .local v0, "maxPersistentMem":I
    mul-int/lit16 v4, v0, 0x400

    mul-int/lit16 v4, v4, 0x400

    int-to-long v1, v4

    .line 1401
    .local v1, "maxPersistentMemInB":J
    cmp-long v4, p1, v1

    if-lez v4, :cond_0

    .line 1402
    const-string v3, "ylWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "totalPssOfPersistentProcesses"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B more than"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B , Ready to reboot, this in the morning"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v3, 0x1

    goto :goto_0
.end method

.method isNecessaryToRebootByStealth(J)Z
    .locals 3
    .param p1, "availableMemory"    # J

    .prologue
    .line 1358
    const-wide/32 v0, 0x2600000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1359
    const-string v0, "ylWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "availableMemory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "less than"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x2600000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B , Ready to reboot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v0, 0x1

    .line 1362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNecessaryToRebootByStealthInTheMorning(J)Z
    .locals 5
    .param p1, "availableMemory"    # J

    .prologue
    const/4 v0, 0x0

    .line 1370
    const-string v1, "ro.monkey"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1383
    :cond_0
    :goto_0
    return v0

    .line 1377
    :cond_1
    const-wide/32 v1, 0x5000000

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2

    const-wide/32 v1, 0x5500000

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1380
    :cond_2
    const-string v0, "ylWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "availableMemory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B , Ready to reboot, this in the morning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const/4 v0, 0x1

    goto :goto_0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/android/server/ylWatchdog;->mRebootReason:Ljava/lang/String;

    .line 1622
    iget-object v2, p0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1623
    .local v0, "nPowerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "Shutdown"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1625
    .local v1, "nWakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1627
    const-string v2, "persist.sys.yllastshut.reason"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v2, "persist.sys.stealth.reason"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    new-instance v2, Lcom/android/server/ylWatchdog$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/ylWatchdog$2;-><init>(Lcom/android/server/ylWatchdog;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/ylWatchdog$2;->start()V

    .line 1658
    return-void
.end method
