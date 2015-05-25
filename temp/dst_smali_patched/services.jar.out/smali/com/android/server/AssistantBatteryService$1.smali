.class Lcom/android/server/AssistantBatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "AssistantBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssistantBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AssistantBatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/AssistantBatteryService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    const-string v3, "plugged"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/AssistantBatteryService;->batteryPlugg:I
    invoke-static {v2, v3}, Lcom/android/server/AssistantBatteryService;->access$002(Lcom/android/server/AssistantBatteryService;I)I

    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    const-string v3, "health"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/AssistantBatteryService;->health:I
    invoke-static {v2, v3}, Lcom/android/server/AssistantBatteryService;->access$102(Lcom/android/server/AssistantBatteryService;I)I

    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    const-string v3, "status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/AssistantBatteryService;->batteryStatus:I
    invoke-static {v2, v3}, Lcom/android/server/AssistantBatteryService;->access$202(Lcom/android/server/AssistantBatteryService;I)I

    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    const-string v3, "level"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/AssistantBatteryService;->batteryLevel:I
    invoke-static {v2, v3}, Lcom/android/server/AssistantBatteryService;->access$302(Lcom/android/server/AssistantBatteryService;I)I

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->batteryStatus:I
    invoke-static {v3}, Lcom/android/server/AssistantBatteryService;->access$200(Lcom/android/server/AssistantBatteryService;)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->batteryStatus:I
    invoke-static {v3}, Lcom/android/server/AssistantBatteryService;->access$200(Lcom/android/server/AssistantBatteryService;)I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    const/4 v3, -0x1

    # setter for: Lcom/android/server/AssistantBatteryService;->recordHealth:I
    invoke-static {v2, v3}, Lcom/android/server/AssistantBatteryService;->access$402(Lcom/android/server/AssistantBatteryService;I)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
    invoke-static {v2}, Lcom/android/server/AssistantBatteryService;->access$500(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v2, "level"

    iget-object v3, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->batteryLevel:I
    invoke-static {v3}, Lcom/android/server/AssistantBatteryService;->access$300(Lcom/android/server/AssistantBatteryService;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
    invoke-static {v2}, Lcom/android/server/AssistantBatteryService;->access$500(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
