.class Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneCoverMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/hallsensor/PhoneCoverMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;


# direct methods
.method public constructor <init>(Lcom/yulong/android/hallsensor/PhoneCoverMode;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    .line 109
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 110
    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->ct:Landroid/content/Context;
    invoke-static {p1}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$400(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 111
    return-void
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v3, "judge_hall_sensor_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mJudgePhoneCoverModeEnable:Z
    invoke-static {v1, v0}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$102(Lcom/yulong/android/hallsensor/PhoneCoverMode;Z)Z

    .line 127
    const-string v0, "PhoneCoverMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsObserver : mJudgePhoneCoverModeEnable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mJudgePhoneCoverModeEnable:Z
    invoke-static {v2}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$100(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mJudgePhoneCoverModeEnable:Z
    invoke-static {v0}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$100(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "PhoneCoverMode"

    const-string v1, " registerListener by mJudgePhoneCoverModeEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$700(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverProximityListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$500(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mProximity:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$600(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 131
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$700(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverLightListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$800(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mlight:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$900(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/Sensor;

    move-result-object v2

    const v3, 0xf4240

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v0, "PhoneCoverMode"

    const-string v1, " unregisterListener by mJudgePhoneCoverModeEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$700(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverProximityListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$500(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 135
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$700(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPhoneCoverLightListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$800(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method


# virtual methods
.method RegisterObserverAndUpdateSettings()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "PhoneCoverMode"

    const-string v1, "SettingsObserver:RegisterObserverAndUpdateSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "judge_hall_sensor_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    invoke-direct {p0}, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->updateSettings()V

    .line 118
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/yulong/android/hallsensor/PhoneCoverMode$SettingsObserver;->updateSettings()V

    .line 122
    return-void
.end method
