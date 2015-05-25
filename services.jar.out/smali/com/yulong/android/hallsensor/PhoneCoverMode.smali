.class public Lcom/yulong/android/hallsensor/PhoneCoverMode;
.super Landroid/content/BroadcastReceiver;
.source "PhoneCoverMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;
    }
.end annotation


# static fields
.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PhoneCoverMode"


# instance fields
.field private ct:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isNear:Z

.field private mJudgePhoneCoverModeEnable:Z

.field private mPhoneCoverLightListener:Landroid/hardware/SensorEventListener;

.field private mPhoneCoverMode:Lcom/yulong/android/hallsensor/PhoneCoverMode;

.field private mPhoneCoverProximityListener:Landroid/hardware/SensorEventListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximity:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mlight:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->ct:Landroid/content/Context;

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mJudgePhoneCoverModeEnable:Z

    .line 34
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->handler:Landroid/os/Handler;

    .line 70
    new-instance v1, Lcom/yulong/android/hallsensor/PhoneCoverMode$1;

    invoke-direct {v1, p0}, Lcom/yulong/android/hallsensor/PhoneCoverMode$1;-><init>(Lcom/yulong/android/hallsensor/PhoneCoverMode;)V

    iput-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverProximityListener:Landroid/hardware/SensorEventListener;

    .line 85
    new-instance v1, Lcom/yulong/android/hallsensor/PhoneCoverMode$2;

    invoke-direct {v1, p0}, Lcom/yulong/android/hallsensor/PhoneCoverMode$2;-><init>(Lcom/yulong/android/hallsensor/PhoneCoverMode;)V

    iput-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverLightListener:Landroid/hardware/SensorEventListener;

    .line 37
    iput-object p1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->ct:Landroid/content/Context;

    .line 38
    iput-object p0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverMode:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .line 39
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPowerManager:Landroid/os/PowerManager;

    .line 40
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 41
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;

    .line 42
    new-instance v0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;

    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;-><init>(Lcom/yulong/android/hallsensor/PhoneCoverMode;Landroid/os/Handler;)V

    .line 43
    .local v0, "mSettingsObserver":Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;
    invoke-virtual {v0}, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->RegisterObserverAndUpdateSettings()V

    .line 44
    invoke-virtual {p0}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->addFilter()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->isNear:Z

    return v0
.end method

.method static synthetic access$002(Lcom/yulong/android/hallsensor/PhoneCoverMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->isNear:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mJudgePhoneCoverModeEnable:Z

    return v0
.end method

.method static synthetic access$102(Lcom/yulong/android/hallsensor/PhoneCoverMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mJudgePhoneCoverModeEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->ct:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverProximityListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mProximity:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverLightListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mlight:Landroid/hardware/Sensor;

    return-object v0
.end method


# virtual methods
.method public addFilter()V
    .locals 4

    .prologue
    .line 63
    const-string v1, "PhoneCoverMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFilter():mJudgePhoneCoverModeEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mJudgePhoneCoverModeEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->ct:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverMode:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    const-string v1, "PhoneCoverMode"

    const-string v2, "get phoneCover broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mProximity:Landroid/hardware/Sensor;

    .line 51
    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mlight:Landroid/hardware/Sensor;

    .line 52
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mJudgePhoneCoverModeEnable:Z

    if-eqz v1, :cond_2

    .line 53
    const-string v1, "PhoneCoverMode"

    const-string v2, "SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mProximity:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 55
    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverLightListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mlight:Landroid/hardware/Sensor;

    const v4, 0xf4240

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mJudgePhoneCoverModeEnable:Z

    if-nez v1, :cond_1

    .line 57
    :cond_3
    const-string v1, "PhoneCoverMode"

    const-string v2, "SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 59
    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method
