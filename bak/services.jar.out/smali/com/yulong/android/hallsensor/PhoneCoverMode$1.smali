.class Lcom/yulong/android/hallsensor/PhoneCoverMode$1;
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
    .line 70
    iput-object p1, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$1;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 83
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    float-to-double v0, v3

    .line 75
    .local v0, "distance":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_0

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpg-double v3, v0, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    .line 76
    .local v2, "mSensorBeCovered":Z
    :cond_0
    iget-object v3, p0, Lcom/yulong/android/hallsensor/PhoneCoverMode$1;->this$0:Lcom/yulong/android/hallsensor/PhoneCoverMode;

    # setter for: Lcom/yulong/android/hallsensor/PhoneCoverMode;->isNear:Z
    invoke-static {v3, v2}, Lcom/yulong/android/hallsensor/PhoneCoverMode;->access$002(Lcom/yulong/android/hallsensor/PhoneCoverMode;Z)Z

    .line 77
    return-void
.end method
