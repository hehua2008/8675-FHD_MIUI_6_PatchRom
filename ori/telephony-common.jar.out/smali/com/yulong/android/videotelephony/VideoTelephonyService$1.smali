.class Lcom/yulong/android/videotelephony/VideoTelephonyService$1;
.super Landroid/os/Handler;
.source "VideoTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/videotelephony/VideoTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;


# direct methods
.method constructor <init>(Lcom/yulong/android/videotelephony/VideoTelephonyService;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->access$000(Lcom/yulong/android/videotelephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 411
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 444
    :goto_0
    return-void

    .line 413
    :sswitch_0
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    const-string v1, "PHONE STATE CHANGED"

    # invokes: Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->access$000(Lcom/yulong/android/videotelephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 417
    :sswitch_1
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    const-string v1, "RINGING... (new)"

    # invokes: Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->access$000(Lcom/yulong/android/videotelephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 421
    :sswitch_2
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    const-string v1, "DISCONNECT"

    # invokes: Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->access$000(Lcom/yulong/android/videotelephony/VideoTelephonyService;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onDisconnected(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 426
    :sswitch_3
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onReceiveCodec(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 429
    :sswitch_4
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    const-string v1, "sendback codec response"

    # invokes: Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->access$000(Lcom/yulong/android/videotelephony/VideoTelephonyService;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :sswitch_5
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onCanSendDataNotice(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 436
    :sswitch_6
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onReceiveStrFromRemote(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 440
    :sswitch_7
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;->this$0:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    # invokes: Lcom/yulong/android/videotelephony/VideoTelephonyService;->onOperationComplete(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->access$100(Lcom/yulong/android/videotelephony/VideoTelephonyService;Landroid/os/Message;)V

    goto :goto_0

    .line 411
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_5
        0x1a -> :sswitch_6
        0x1b -> :sswitch_4
        0x408 -> :sswitch_7
    .end sparse-switch
.end method
