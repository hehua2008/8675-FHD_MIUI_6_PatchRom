.class Lcom/yulong/android/hallsensor/HallSensorObserver$1;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.HallSensor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    iget-object v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I
    invoke-static {v2}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$000(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "name"

    const-string v2, "hall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendHallSensorIntent + state is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$000(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  name is hall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$200(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I
    invoke-static {v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$000(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v1

    if-nez v1, :cond_1

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_HALLSENSOR_STATE_AWAY recordGloveState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->recordGloveState:I
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$300(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I
    invoke-static {v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$000(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    iget-object v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$200(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glove_state"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->recordGloveState:I
    invoke-static {v1, v2}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$302(Lcom/yulong/android/hallsensor/HallSensorObserver;I)I

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_HALLSENSOR_STATE_NEAR recordGloveState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->recordGloveState:I
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$300(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mBootCompleted:Z
    invoke-static {v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$400(Lcom/yulong/android/hallsensor/HallSensorObserver;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$500(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/os/PowerManager;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$200(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    # setter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2, v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$502(Lcom/yulong/android/hallsensor/HallSensorObserver;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    :cond_2
    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$500(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hallsensor wake up "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$500(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " Hallsensor  userActivity "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
