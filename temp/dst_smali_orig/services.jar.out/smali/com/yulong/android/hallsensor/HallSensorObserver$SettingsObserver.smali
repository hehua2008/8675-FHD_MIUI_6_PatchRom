.class Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HallSensorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/hallsensor/HallSensorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;


# direct methods
.method public constructor <init>(Lcom/yulong/android/hallsensor/HallSensorObserver;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$200(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v4, "judge_hall_prox_enable"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeProximitySensor:Z
    invoke-static {v3, v0}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$802(Lcom/yulong/android/hallsensor/HallSensorObserver;Z)Z

    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v4, "judge_hall_sensor_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    # setter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeHallSensor:Z
    invoke-static {v0, v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$602(Lcom/yulong/android/hallsensor/HallSensorObserver;Z)Z

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsObserver : mJudgeProximitySensor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeProximitySensor:Z
    invoke-static {v2}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$800(Lcom/yulong/android/hallsensor/HallSensorObserver;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method RegisterObserverAndUpdateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "judge_hall_prox_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "judge_hall_sensor_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->updateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/hallsensor/HallSensorObserver$SettingsObserver;->updateSettings()V

    return-void
.end method
