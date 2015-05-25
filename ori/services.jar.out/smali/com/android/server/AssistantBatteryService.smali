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

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "/sys/class/power_supply/charge_mode"

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->chargeModeFile:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    .line 84
    iput-object v2, p0, Lcom/android/server/AssistantBatteryService;->recordChargeMode:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    .line 87
    const-string v0, "15"

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->fast_mode:Ljava/lang/String;

    .line 88
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->normal_mode:Ljava/lang/String;

    .line 89
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->default_mode:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_AC_MODE:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_USB_MODE:I

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_ABNORMAL_MODE:I

    .line 94
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_COLD_MODE:I

    .line 95
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERHEAT_MODE:I

    .line 96
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERVOLTAGE_MODE:I

    .line 98
    iput-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    .line 100
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->distanceTime:I

    .line 106
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordLevel:I

    .line 108
    iput-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->isLocacleChange:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z

    .line 157
    new-instance v0, Lcom/android/server/AssistantBatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$1;-><init>(Lcom/android/server/AssistantBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Lcom/android/server/AssistantBatteryService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$2;-><init>(Lcom/android/server/AssistantBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->mKeyguardChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/android/server/AssistantBatteryService$3;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$3;-><init>(Lcom/android/server/AssistantBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->mChargeModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v0, Lcom/android/server/AssistantBatteryService$4;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$4;-><init>(Lcom/android/server/AssistantBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v0, Lcom/android/server/AssistantBatteryService$5;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$5;-><init>(Lcom/android/server/AssistantBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->mPowerChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    .line 122
    invoke-direct {p0}, Lcom/android/server/AssistantBatteryService;->init()V

    .line 123
    return-void
.end method

.method private abnormalBatteryUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 551
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->batteryPlugg:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/AssistantBatteryService;->batteryPlugg:I

    if-ne v0, v1, :cond_1

    .line 553
    :cond_0
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    iget v1, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    if-eq v0, v1, :cond_1

    .line 554
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    packed-switch v0, :pswitch_data_0

    .line 581
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 556
    :pswitch_1
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    .line 557
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERHEAT_MODE:I

    invoke-direct {p0, v0}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    .line 558
    iput-boolean v2, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    goto :goto_0

    .line 561
    :pswitch_2
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    .line 562
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_COLD_MODE:I

    invoke-direct {p0, v0}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    .line 563
    iput-boolean v2, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    goto :goto_0

    .line 566
    :pswitch_3
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    .line 567
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERVOLTAGE_MODE:I

    invoke-direct {p0, v0}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    .line 568
    iput-boolean v2, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    goto :goto_0

    .line 572
    :pswitch_4
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->health:I

    iput v0, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    .line 573
    iget-boolean v0, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    if-eqz v0, :cond_1

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AssistantBatteryService;->notificationHasSent:Z

    .line 575
    const v0, 0x12f34c6

    invoke-direct {p0, v0}, Lcom/android/server/AssistantBatteryService;->cancelChargeModeNotification(I)V

    goto :goto_0

    .line 554
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
    .line 70
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->batteryPlugg:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/server/AssistantBatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/AssistantBatteryService;->abnormalBatteryUpdate()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/AssistantBatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->health:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AssistantBatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->batteryStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/AssistantBatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->batteryStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/AssistantBatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->batteryLevel:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/AssistantBatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->batteryLevel:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/AssistantBatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->recordHealth:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/AssistantBatteryService;Lcom/android/server/AssistantBatteryService$AutoCloseDialog;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/AssistantBatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/AssistantBatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/server/AssistantBatteryService;->isLocacleChange:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/AssistantBatteryService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/AssistantBatteryService;->toastIfLowPower(I)V

    return-void
.end method

.method private cancelChargeModeNotification(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 719
    .local v0, "notificationManger":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 720
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 127
    iget-object v3, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/AssistantBatteryService;->mPowerManager:Landroid/os/PowerManager;

    .line 129
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "AssistantBatteryService"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/AssistantBatteryService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 130
    iget-object v3, p0, Lcom/android/server/AssistantBatteryService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v3, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    iget-object v4, p0, Lcom/android/server/AssistantBatteryService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;-><init>(Lcom/android/server/AssistantBatteryService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    .line 133
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AssistantBatteryService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, "localeFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AssistantBatteryService;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "yulong.intent.action.CHARGEMODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "chargeFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AssistantBatteryService;->mChargeModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method private onShowLowPowerToast(I)V
    .locals 3
    .param p1, "toastLevel"    # I

    .prologue
    const/4 v0, 0x0

    .line 546
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

    .line 547
    return-void
.end method

.method private readChargeMode()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v5, 0xa

    .line 723
    new-array v0, v5, [C

    .line 724
    .local v0, "buffer":[C
    const-string v4, "0"

    .line 727
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService;->chargeModeFile:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 728
    .local v2, "file_name":Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 729
    .local v3, "len":I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 730
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

    .line 731
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 739
    .end local v2    # "file_name":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_0
    return-object v4

    .line 732
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 735
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 737
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

    .line 585
    const/4 v1, -0x1

    .line 587
    .local v1, "id":I
    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108082b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 590
    .local v2, "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 592
    .local v3, "mBuilder":Landroid/app/Notification$Builder;
    const v7, 0x108082c

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 595
    new-instance v6, Landroid/content/Intent;

    const-string v7, "yulong.intent.action.CHARGEMODESETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v6, "notificationIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    invoke-static {v7, v12, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 600
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_AC_MODE:I

    if-ne p1, v7, :cond_1

    .line 602
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

    .line 608
    const v1, 0x12f8019

    .line 665
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 666
    .local v4, "mNotification":Landroid/app/Notification;
    iget-object v7, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 667
    .local v5, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v7, v1, v4, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 669
    return-void

    .line 610
    .end local v4    # "mNotification":Landroid/app/Notification;
    .end local v5    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_1
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_USB_MODE:I

    if-ne p1, v7, :cond_2

    .line 612
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

    .line 618
    const v1, 0x12f8019

    goto :goto_0

    .line 620
    :cond_2
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_ABNORMAL_MODE:I

    if-ne p1, v7, :cond_3

    .line 622
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

    .line 631
    const v1, 0x12ec0b2

    goto/16 :goto_0

    .line 633
    :cond_3
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_COLD_MODE:I

    if-ne p1, v7, :cond_4

    .line 635
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

    .line 641
    const v1, 0x12f34c6

    goto/16 :goto_0

    .line 643
    :cond_4
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERHEAT_MODE:I

    if-ne p1, v7, :cond_5

    .line 645
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

    .line 651
    const v1, 0x12f34c6

    goto/16 :goto_0

    .line 653
    :cond_5
    iget v7, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_OVERVOLTAGE_MODE:I

    if-ne p1, v7, :cond_0

    .line 655
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

    .line 661
    const v1, 0x12f34c6

    goto/16 :goto_0
.end method

.method private showCapacityDialog(I)V
    .locals 2
    .param p1, "showCapacityLevel"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    new-instance v1, Lcom/android/server/AssistantBatteryService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AssistantBatteryService$6;-><init>(Lcom/android/server/AssistantBatteryService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method private showCapacityIfLockScreen(I)V
    .locals 3
    .param p1, "showCapacityLevel"    # I

    .prologue
    .line 269
    iget-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 271
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    iget v1, p0, Lcom/android/server/AssistantBatteryService;->batteryStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/AssistantBatteryService;->batteryStatus:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AssistantBatteryService;->showCapacityDialog(I)V

    .line 275
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z

    .line 279
    .end local v0    # "mKeyguardManager":Landroid/app/KeyguardManager;
    :cond_1
    return-void
.end method

.method private toastIfLowPower(I)V
    .locals 1
    .param p1, "toastLevel"    # I

    .prologue
    .line 459
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget v0, p0, Lcom/android/server/AssistantBatteryService;->batteryPlugg:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/AssistantBatteryService;->recordLevel:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    .line 464
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AssistantBatteryService;->onShowLowPowerToast(I)V

    .line 466
    :cond_1
    iput p1, p0, Lcom/android/server/AssistantBatteryService;->recordLevel:I

    .line 468
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

    .line 672
    invoke-direct {p0}, Lcom/android/server/AssistantBatteryService;->readChargeMode()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "chargeMode":Ljava/lang/String;
    if-ne v3, p1, :cond_0

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AssistantBatteryService;->AcOnlineStartTime:J

    .line 677
    :cond_0
    if-ne v3, p1, :cond_9

    .line 679
    iget-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->recordChargeMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/AssistantBatteryService;->isLocacleChange:Z

    if-eqz v1, :cond_2

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->fast_mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 681
    invoke-direct {p0, v5}, Lcom/android/server/AssistantBatteryService;->cancelChargeModeNotification(I)V

    .line 682
    iput-boolean v4, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    .line 683
    iget v1, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_AC_MODE:I

    invoke-direct {p0, v1}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    .line 684
    iput-boolean v3, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    .line 685
    iput-boolean v4, p0, Lcom/android/server/AssistantBatteryService;->isLocacleChange:Z

    .line 699
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

    .line 702
    :cond_4
    const v1, 0x12ec0b2

    invoke-direct {p0, v1}, Lcom/android/server/AssistantBatteryService;->cancelChargeModeNotification(I)V

    .line 705
    :cond_5
    iput-object v0, p0, Lcom/android/server/AssistantBatteryService;->recordChargeMode:Ljava/lang/String;

    .line 707
    if-eq v3, p1, :cond_6

    if-eq v6, p1, :cond_6

    .line 709
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

    .line 711
    iget v1, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_ABNORMAL_MODE:I

    invoke-direct {p0, v1}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    .line 714
    :cond_6
    return-void

    .line 686
    :cond_7
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->normal_mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/AssistantBatteryService;->default_mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/server/AssistantBatteryService;->cancelChargeModeNotification(I)V

    .line 688
    iput-boolean v4, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    .line 689
    iget v1, p0, Lcom/android/server/AssistantBatteryService;->CHARGING_USB_MODE:I

    invoke-direct {p0, v1}, Lcom/android/server/AssistantBatteryService;->sendNotification(I)V

    .line 690
    iput-boolean v3, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    .line 691
    iput-boolean v4, p0, Lcom/android/server/AssistantBatteryService;->isLocacleChange:Z

    goto :goto_0

    .line 695
    :cond_9
    invoke-direct {p0, v5}, Lcom/android/server/AssistantBatteryService;->cancelChargeModeNotification(I)V

    .line 696
    iput-boolean v4, p0, Lcom/android/server/AssistantBatteryService;->normalModeHasSent:Z

    goto :goto_0
.end method
