.class public Lcom/yulong/android/hallsensor/HallSensorObserver;
.super Landroid/os/UEventObserver;
.source "HallSensorObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ARRARY_BUFFER_SIZE:I = 0x400

.field static final GLOVE_MODE:Ljava/lang/String; = "glove"

.field private static final HALLSENSOR_SWITCH_PROPERITES:Ljava/lang/String; = "persist.sys.hallsensor.switch"

.field private static final HALL_SENSOR_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/hall/name"

.field private static final HALL_SENSOR_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/hall/state"

.field private static final HALL_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/hall"

.field static final INVALID_MODE:Ljava/lang/String; = "invalid"

.field private static final MSG_DO_WINDOWS_SWITCH_STATE:I = 0x67

.field private static final MSG_HALLSENSOR_STATE_AWAY:I = 0x65

.field private static final MSG_HALLSENSOR_STATE_NEAR:I = 0x66

.field private static final MSG_SEND_HALL_SENSOR_INTENT:I = 0x68

.field static final NORMAL_MODE:Ljava/lang/String; = "normal"

.field private static final PROXIMITY_NEGATIVE:I = 0x5

.field private static final PROXIMITY_POSITIVE:I = 0x3

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field static final SENSOR_PATH:Ljava/lang/String; = "/sys/devices/virtual/lightprox_class/lightprox/prox_hall"

.field private static final TAG:Ljava/lang/String;

.field static final TW_PATH:Ljava/lang/String; = "/sys/class/touchscreen/touchscreen_dev/mode"

.field static final WINDOW_MODE:Ljava/lang/String; = "window"


# instance fields
.field private hallSensorState:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private lastEventTime:J

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBootCompleted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mHallSensorState:I

.field private final mHandler:Landroid/os/Handler;

.field mHomeIntent:Landroid/content/Intent;

.field private mJudgeHallSensor:Z

.field private mJudgeProximitySensor:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private recordGloveState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/yulong/android/hallsensor/HallSensorObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 98
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 65
    iput-boolean v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mBootCompleted:Z

    .line 82
    iput-boolean v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximitySensorEnabled:Z

    .line 86
    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximity:I

    .line 87
    iput v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I

    .line 89
    iput-boolean v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeProximitySensor:Z

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeHallSensor:Z

    .line 92
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->handler:Landroid/os/Handler;

    .line 94
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->lastEventTime:J

    .line 251
    new-instance v1, Lcom/yulong/android/hallsensor/HallSensorObserver$1;

    invoke-direct {v1, p0}, Lcom/yulong/android/hallsensor/HallSensorObserver$1;-><init>(Lcom/yulong/android/hallsensor/HallSensorObserver;)V

    iput-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    .line 401
    new-instance v1, Lcom/yulong/android/hallsensor/HallSensorObserver$2;

    invoke-direct {v1, p0}, Lcom/yulong/android/hallsensor/HallSensorObserver$2;-><init>(Lcom/yulong/android/hallsensor/HallSensorObserver;)V

    iput-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 465
    new-instance v1, Lcom/yulong/android/hallsensor/HallSensorObserver$3;

    invoke-direct {v1, p0}, Lcom/yulong/android/hallsensor/HallSensorObserver$3;-><init>(Lcom/yulong/android/hallsensor/HallSensorObserver;)V

    iput-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 100
    iput-object p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;

    .line 102
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHomeIntent:Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHomeIntent:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 119
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 122
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mActivityManager:Landroid/app/ActivityManager;

    .line 125
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximitySensor:Landroid/hardware/Sensor;

    .line 128
    new-instance v0, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;

    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;-><init>(Lcom/yulong/android/hallsensor/HallSensorObserver;Landroid/os/Handler;)V

    .line 129
    .local v0, "settingsObserver":Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;
    invoke-virtual {v0}, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->RegisterObserverAndUpdateSettings()V

    .line 131
    const-string v1, "DEVPATH=/devices/virtual/switch/hall"

    invoke-virtual {p0, v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->startObserving(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/hallsensor/HallSensorObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;

    .prologue
    .line 51
    iget v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yulong/android/hallsensor/HallSensorObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;

    .prologue
    .line 51
    iget v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->recordGloveState:I

    return v0
.end method

.method static synthetic access$302(Lcom/yulong/android/hallsensor/HallSensorObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->recordGloveState:I

    return p1
.end method

.method static synthetic access$400(Lcom/yulong/android/hallsensor/HallSensorObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/yulong/android/hallsensor/HallSensorObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/yulong/android/hallsensor/HallSensorObserver;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;
    .param p1, "x1"    # Landroid/os/PowerManager;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yulong/android/hallsensor/HallSensorObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeHallSensor:Z

    return v0
.end method

.method static synthetic access$602(Lcom/yulong/android/hallsensor/HallSensorObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeHallSensor:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yulong/android/hallsensor/HallSensorObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yulong/android/hallsensor/HallSensorObserver;->initHallSensor()V

    return-void
.end method

.method static synthetic access$800(Lcom/yulong/android/hallsensor/HallSensorObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeProximitySensor:Z

    return v0
.end method

.method static synthetic access$802(Lcom/yulong/android/hallsensor/HallSensorObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/HallSensorObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeProximitySensor:Z

    return p1
.end method

.method private initHallSensor()V
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 135
    new-array v0, v8, [C

    .line 137
    .local v0, "buffer":[C
    const-string v5, ""

    .line 138
    .local v5, "newName":Ljava/lang/String;
    const/4 v6, 0x1

    .line 141
    .local v6, "newState":I
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v8, "/sys/class/switch/hall/state"

    invoke-direct {v3, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, "file_state":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v0, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 143
    .local v4, "len":I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->hallSensorState:Ljava/lang/String;

    .line 145
    iget-object v8, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->hallSensorState:Ljava/lang/String;

    const-string v9, "near"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    .line 147
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 149
    new-instance v2, Ljava/io/FileReader;

    const-string v8, "/sys/class/switch/hall/name"

    invoke-direct {v2, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, "file_name":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v2, v0, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 151
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 155
    sget-object v8, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hall sensor init newState is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/hallsensor/HallSensorObserver;->update(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    .end local v2    # "file_name":Ljava/io/FileReader;
    .end local v3    # "file_state":Ljava/io/FileReader;
    .end local v4    # "len":I
    :goto_1
    return-void

    .restart local v3    # "file_state":Ljava/io/FileReader;
    .restart local v4    # "len":I
    :cond_0
    move v6, v7

    .line 145
    goto :goto_0

    .line 159
    .end local v3    # "file_state":Ljava/io/FileReader;
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "hall"

    invoke-direct {p0, v8, v7}, Lcom/yulong/android/hallsensor/HallSensorObserver;->update(Ljava/lang/String;I)V

    .line 161
    sget-object v7, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    const-string v8, "This kernel does not have hall sensor "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "hall"

    invoke-direct {p0, v8, v7}, Lcom/yulong/android/hallsensor/HallSensorObserver;->update(Ljava/lang/String;I)V

    .line 164
    sget-object v7, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    const-string v8, "This Exception ......"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 477
    if-eqz p1, :cond_1

    .line 478
    iget-boolean v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximitySensorEnabled:Z

    .line 480
    sget-object v0, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-boolean v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 487
    iput-boolean v4, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximitySensorEnabled:Z

    .line 488
    sget-object v0, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private startReadPorximitySensorState()I
    .locals 11

    .prologue
    .line 424
    :try_start_0
    sget-object v7, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    const-string v8, " start ReadPorximity Sensor State "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 427
    .local v5, "mRecordTime":J
    new-instance v3, Ljava/io/FileWriter;

    const-string v7, "/sys/devices/virtual/lightprox_class/lightprox/prox_hall"

    invoke-direct {v3, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 428
    .local v3, "fileWrite":Ljava/io/FileWriter;
    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 431
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/yulong/android/hallsensor/HallSensorObserver;->setProximitySensorEnabled(Z)V

    .line 433
    const/16 v7, 0x200

    new-array v0, v7, [C

    .line 434
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v7, "/sys/devices/virtual/lightprox_class/lightprox/prox_hall"

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 435
    .local v2, "fileRead":Ljava/io/FileReader;
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 437
    .local v4, "len":I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximity:I

    .line 439
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 441
    sget-object v7, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read ok, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mProximity is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximity:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0    # "buffer":[C
    .end local v2    # "fileRead":Ljava/io/FileReader;
    .end local v3    # "fileWrite":Ljava/io/FileWriter;
    .end local v4    # "len":I
    .end local v5    # "mRecordTime":J
    :goto_0
    iget v7, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximity:I

    return v7

    .line 443
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Ljava/io/IOException;
    const/4 v7, 0x5

    iput v7, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mProximity:I

    .line 445
    sget-object v7, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    const-string v8, " read /sys/devices/virtual/lightprox_class/lightprox/prox_hall failed "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopReadPorximitySensorState()V
    .locals 3

    .prologue
    .line 452
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/yulong/android/hallsensor/HallSensorObserver;->setProximitySensorEnabled(Z)V

    .line 455
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sys/devices/virtual/lightprox_class/lightprox/prox_hall"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 456
    .local v1, "fileWrite":Ljava/io/FileWriter;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v1    # "fileWrite":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized update(Ljava/lang/String;I)V
    .locals 3
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .prologue
    const/4 v2, 0x1

    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    if-nez p2, :cond_1

    .line 199
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I

    .line 203
    const-string v0, "persist.sys.hallsensor.switch"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    const-string v1, " SystemProperties 0 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_1
    if-ne p2, v2, :cond_0

    .line 212
    :try_start_1
    const-string v0, "yulong.phone.callstate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeProximitySensor:Z

    if-eqz v0, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/yulong/android/hallsensor/HallSensorObserver;->startReadPorximitySensorState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I

    .line 220
    const-string v0, "persist.sys.hallsensor.switch"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    const-string v1, " SystemProperties 1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    :goto_1
    invoke-direct {p0}, Lcom/yulong/android/hallsensor/HallSensorObserver;->stopReadPorximitySensorState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I

    .line 229
    sget-object v0, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    const-string v1, "Proximity Sensor NEGATIVE, do nothing "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I

    .line 240
    const-string v0, "persist.sys.hallsensor.switch"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    const-string v1, " SystemProperties 1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/4 v4, 0x0

    .line 172
    const/4 v3, 0x1

    .line 173
    .local v3, "switchState":I
    :try_start_0
    const-string v5, "SWITCH_NAME"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "switchName":Ljava/lang/String;
    const-string v5, "hall"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    const-string v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "eventState":Ljava/lang/String;
    const-string v5, "near"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 179
    :goto_0
    iget-boolean v5, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeHallSensor:Z

    if-eqz v5, :cond_0

    .line 180
    invoke-direct {p0, v2, v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->update(Ljava/lang/String;I)V

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/yulong/android/hallsensor/HallSensorObserver;->lastEventTime:J

    .line 182
    sget-object v5, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUEvent switchState is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "eventState":Ljava/lang/String;
    .end local v2    # "switchName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "eventState":Ljava/lang/String;
    .restart local v2    # "switchName":Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 177
    goto :goto_0

    .line 186
    .end local v1    # "eventState":Ljava/lang/String;
    .end local v2    # "switchName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "hall"

    invoke-direct {p0, v5, v4}, Lcom/yulong/android/hallsensor/HallSensorObserver;->update(Ljava/lang/String;I)V

    .line 188
    sget-object v4, Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
