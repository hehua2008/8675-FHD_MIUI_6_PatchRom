.class final Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
.super Landroid/os/Handler;
.source "AssistantBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssistantBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AssistantBatteryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AssistantBatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/AssistantBatteryService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->this$0:Lcom/android/server/AssistantBatteryService;

    .line 231
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 232
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 238
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v2, "level"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, "msgLevel":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->this$0:Lcom/android/server/AssistantBatteryService;

    # invokes: Lcom/android/server/AssistantBatteryService;->toastIfLowPower(I)V
    invoke-static {v2, v1}, Lcom/android/server/AssistantBatteryService;->access$900(Lcom/android/server/AssistantBatteryService;I)V

    .line 255
    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->this$0:Lcom/android/server/AssistantBatteryService;

    # invokes: Lcom/android/server/AssistantBatteryService;->abnormalBatteryUpdate()V
    invoke-static {v2}, Lcom/android/server/AssistantBatteryService;->access$1000(Lcom/android/server/AssistantBatteryService;)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
