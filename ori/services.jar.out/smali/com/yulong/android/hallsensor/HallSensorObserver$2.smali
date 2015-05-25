.class Lcom/yulong/android/hallsensor/HallSensorObserver$2;
.super Landroid/content/BroadcastReceiver;
.source "HallSensorObserver.java"


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
    .line 401
    iput-object p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$2;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$2;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    const/4 v2, 0x1

    # setter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$402(Lcom/yulong/android/hallsensor/HallSensorObserver;Z)Z

    .line 407
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$2;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mJudgeHallSensor:Z
    invoke-static {v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$600(Lcom/yulong/android/hallsensor/HallSensorObserver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$2;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # invokes: Lcom/yulong/android/hallsensor/HallSensorObserver;->initHallSensor()V
    invoke-static {v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$700(Lcom/yulong/android/hallsensor/HallSensorObserver;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
