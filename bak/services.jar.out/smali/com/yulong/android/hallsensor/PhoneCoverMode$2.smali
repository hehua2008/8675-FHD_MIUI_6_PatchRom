.class Lcom/yulong/android/hallsensor/PhoneCoverMode$2;
.super Ljava/lang/Object;
.source "PhoneCoverMode.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/hallsensor/PhoneCoverMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;


# direct methods
.method constructor <init>(Lcom/yulong/android/hallsensor/PhoneCoverMode;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$2;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 101
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 89
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 90
    .local v0, "lux":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 91
    .local v1, "time":J
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$2;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->isNear:Z
    invoke-static {v3}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$000(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$2;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mJudgePhoneCoverModeEnable:Z
    invoke-static {v3}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$100(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$2;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$200(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_0

    .line 92
    const-string v3, "PhoneCoverMode"

    const-string v4, "go to sleep by phone cover "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v3, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$2;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # getter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$300(Lcom/yulong/android/hallsensor/PhoneCoverMode;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 95
    :cond_0
    return-void
.end method
