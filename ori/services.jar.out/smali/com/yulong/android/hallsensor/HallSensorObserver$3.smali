.class Lcom/yulong/android/hallsensor/HallSensorObserver$3;
.super Ljava/lang/Object;
.source "HallSensorObserver.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/hallsensor/HallSensorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;


# direct methods
.method constructor <init>(Lcom/yulong/android/hallsensor/HallSensorObserver;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$3;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 473
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 468
    return-void
.end method
