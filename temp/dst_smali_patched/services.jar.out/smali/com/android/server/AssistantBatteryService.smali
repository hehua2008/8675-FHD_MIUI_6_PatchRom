.class public Lcom/android/server/AssistantBatteryService;
.super Ljava/lang/Object;
.source "AssistantBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AssistantBatteryService$LowPowerToast;,
        Lcom/android/server/AssistantBatteryService$AutoCloseDialog;,
        Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CHARGEMODE_CHANGED:Ljava/lang/String; = "yulong.intent.action.CHARGEMODE_CHANGED"

.field private static final ARRARY_BUFFER_SIZE:I = 0xa

.field private static final CHARGEMODEABNORMAL_ID:I = 0x12ec0b2

.field private static final CHARGEMODENORMAL_ID:I = 0x12f8019

.field private static final MSG_UPDATE:I = 0x1

.field private static final NOTIFICATION_ID:I = 0x12f34c6

.field private static final TAG:Ljava/lang/String; = "AssistantBatteryService"


# instance fields
.field private AcOnlineStartTime:J

.field private CHARGING_ABNORMAL_MODE:I

.field private CHARGING_AC_MODE:I

.field private CHARGING_COLD_MODE:I

.field private CHARGING_OVERHEAT_MODE:I

.field private CHARGING_OVERVOLTAGE_MODE:I

.field private CHARGING_USB_MODE:I

.field private batteryLevel:I

.field private batteryPlugg:I

.field private batteryStatus:I

.field private chargeModeFile:Ljava/lang/String;

.field private default_mode:Ljava/lang/String;

.field private distanceTime:I

.field private fast_mode:Ljava/lang/String;

.field private health:I

.field private isLocacleChange:Z

.field private isNeedToShowDialog:Z

.field private mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

.field private mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mChargeModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mKeyguardChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerManager:Landroid/os/PowerManager;

.field private normalModeHasSent:Z

.field private normal_mode:Ljava/lang/String;

.field private notificationHasSent:Z

.field private recordChargeMode:Ljava/lang/String;

.field private recordHealth:I

.field private recordLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/sys/class/power_supply/charge_mode"

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->chargeModeFile:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    iput-object v2, p0, Lcom/android/server/AssistantBatteryService;->recordChargeMode:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const-string v0, "15"

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->fast_mode:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->normal_mode:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->default_mode:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_AC_MODE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_USB_MODE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_ABNORMAL_MODE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_COLD_MODE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERHEAT_MODE:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERVOLTAGE_MODE:I

    iput-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->distanceTime:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordLevel:I

    iput-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->isLocacleChange:Z

    iput-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z

    new-instance v0, Lcom/android/server/AssistantBatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$1;-><init>(Lcom/android/server/AssistantBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/AssistantBatteryService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$2;-><init>(Lcom/android/server/AssistantBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->mKeyguardChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/AssistantBatteryService$3;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$3;-><init>(Lcom/android/server/AssistantBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->mChargeModeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/AssistantBatteryService$4;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$4;-><init>(Lcom/android/server/AssistantBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/AssistantBatteryService$5;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$5;-><init>(Lcom/android/server/AssistantBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->mPowerChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/AssistantBatteryService;->init()V

    return-void
.end method

.method private abnormalBatteryUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Lcom/android/server/AssistantBatteryService;->batteryPlugg:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/AssistantBatteryService;->batteryPlugg:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    iget v1, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    iget v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERHEAT_MODE:I

    invoke-direct {p0, v0}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    iput-boolean v2, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    iget v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_COLD_MODE:I

    invoke-direct {p0, v0}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    iput-boolean v2, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    iget v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERVOLTAGE_MODE:I

    invoke-direct {p0, v0}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    iput-boolean v2, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    iget-boolean v0, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    const v0, 0x12f34c6

    invoke-direct {p0, v0}, Lcom/android/server/AssistantBatteryService;->cancelChargeModeNotification(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/android/server/AssistantBatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->batteryPlugg:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/server/AssistantBatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/AssistantBatteryService;->abnormalBatteryUpdate()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/AssistantBatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->health:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AssistantBatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->batteryStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/AssistantBatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->batteryStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/AssistantBatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->batteryLevel:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/AssistantBatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->batteryLevel:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/AssistantBatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/AssistantBatteryService;Lcom/android/server/AssistantBatteryService$AutoCloseDialog;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    .prologue
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/AssistantBatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/AssistantBatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/AssistantBatteryService;->isLocacleChange:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/AssistantBatteryService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AssistantBatteryService;->toastIfLowPower(I)V

    return-void
.end method

.method private cancelChargeModeNotification(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, "notificationManger":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/AssistantBatteryService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "AssistantBatteryService"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/AssistantBatteryService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/android/server/AssistantBatteryService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    iget-object v4, p0, Lcom/android/server/AssistantBatteryService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;-><init>(Lcom/android/server/AssistantBatteryService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AssistantBatteryService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v2, "localeFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AssistantBatteryService;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "yulong.intent.action.CHARGEMODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "chargeFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AssistantBatteryService;->mChargeModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private onShowLowPowerToast(I)V
    .locals 3
    .param p1, "toastLevel"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const-string v2, "persist.sys.mutekey.switch"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, p1, v0}, Lcom/android/server/AssistantBatteryService$LowPowerToast;->show(Landroid/content/Context;IZ)Lcom/android/server/AssistantBatteryService$LowPowerToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AssistantBatteryService$LowPowerToast;->show()V

    return-void
.end method

.method private readChargeMode()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v5, 0xa

    new-array v0, v5, [C

    .local v0, "buffer":[C
    const-string v4, "0"

    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService;->chargeModeFile:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v2, "file_name":Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .local v3, "len":I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AssistantBatteryService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "file_name":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendNotification(I)V
    .locals 14
    .param p1, "mode"    # I

    .prologue
    const v13, 0x10406da

    const/4 v12, 0x0

    const v11, 0x10406d5

    const v9, 0x10406d8

    const/4 v10, 0x1

    const/4 v1, -0x1

    .local v1, "id":I
    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108082b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .local v2, "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v3, "mBuilder":Landroid/app/Notification$Builder;
    const v7, 0x108082c

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "yulong.intent.action.CHARGEMODESETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "notificationIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-static {v7, v12, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_AC_MODE:I

    if-ne p1, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const v9, 0x10406d6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v1, 0x12f8019

    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .local v4, "mNotification":Landroid/app/Notification;
    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .local v5, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v7, v1, v4, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    .end local v4    # "mNotification":Landroid/app/Notification;
    .end local v5    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_1
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_USB_MODE:I

    if-ne p1, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const v9, 0x10406d7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v1, 0x12f8019

    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_ABNORMAL_MODE:I

    if-ne p1, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v9, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v1, 0x12ec0b2

    goto/16 :goto_0

    :cond_3
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_COLD_MODE:I

    if-ne p1, v7, :cond_4

    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const v9, 0x10406dc

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v1, 0x12f34c6

    goto/16 :goto_0

    :cond_4
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERHEAT_MODE:I

    if-ne p1, v7, :cond_5

    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const v9, 0x10406db

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v1, 0x12f34c6

    goto/16 :goto_0

    :cond_5
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERVOLTAGE_MODE:I

    if-ne p1, v7, :cond_0

    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const v9, 0x10406dd

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v1, 0x12f34c6

    goto/16 :goto_0
.end method

.method private showCapacityDialog(I)V
    .locals 2
    .param p1, "showCapacityLevel"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    new-instance v1, Lcom/android/server/AssistantBatteryService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AssistantBatteryService$6;-><init>(Lcom/android/server/AssistantBatteryService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showCapacityIfLockScreen(I)V
    .locals 3
    .param p1, "showCapacityLevel"    # I

    .prologue
    iget-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/AssistantBatteryService;->batteryStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/AssistantBatteryService;->batteryStatus:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AssistantBatteryService;->showCapacityDialog(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z

    .end local v0    # "mKeyguardManager":Landroid/app/KeyguardManager;
    :cond_1
    return-void
.end method

.method private toastIfLowPower(I)V
    .locals 1
    .param p1, "toastLevel"    # I

    .prologue
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/AssistantBatteryService;->batteryPlugg:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/AssistantBatteryService;->recordLevel:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AssistantBatteryService;->onShowLowPowerToast(I)V

    :cond_1
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->recordLevel:I

    :cond_2
    return-void
.end method

.method private updateBatteryMode(I)V
    .locals 7
    .param p1, "batteryPlugg"    # I

    .prologue
    const/4 v6, 0x2

    const v5, 0x12f8019

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/AssistantBatteryService;->readChargeMode()Ljava/lang/String;

    move-result-object v0

    .local v0, "chargeMode":Ljava/lang/String;
    if-ne v3, p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AssistantBatteryService;->AcOnlineStartTime:J

    :cond_0
    if-ne v3, p1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->recordChargeMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->isLocacleChange:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->fast_mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v5}, Lcom/android/server/AssistantBatteryService;->cancelChargeModeNotification(I)V

    iput-boolean v4, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    iget v1, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_AC_MODE:I

    invoke-direct {p0, v1}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    iput-boolean v3, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    iput-boolean v4, p0, Lcom/android/server/AssistantBatteryService;->isLocacleChange:Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->recordChargeMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->fast_mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    if-eq v3, p1, :cond_4

    if-ne v6, p1, :cond_5

    :cond_4
    const v1, 0x12ec0b2

    invoke-direct {p0, v1}, Lcom/android/server/AssistantBatteryService;->cancelChargeModeNotification(I)V

    :cond_5
    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->recordChargeMode:Ljava/lang/String;

    if-eq v3, p1, :cond_6

    if-eq v6, p1, :cond_6

    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->fast_mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/AssistantBatteryService;->AcOnlineStartTime:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/android/server/AssistantBatteryService;->distanceTime:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_6

    iget v1, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_ABNORMAL_MODE:I

    invoke-direct {p0, v1}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->normal_mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->default_mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_8
    invoke-direct {p0, v5}, Lcom/android/server/AssistantBatteryService;->cancelChargeModeNotification(I)V

    iput-boolean v4, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    iget v1, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_USB_MODE:I

    invoke-direct {p0, v1}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    iput-boolean v3, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    iput-boolean v4, p0, Lcom/android/server/AssistantBatteryService;->isLocacleChange:Z

    goto :goto_0

    :cond_9
    invoke-direct {p0, v5}, Lcom/android/server/AssistantBatteryService;->cancelChargeModeNotification(I)V

    iput-boolean v4, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    goto :goto_0
.end method
