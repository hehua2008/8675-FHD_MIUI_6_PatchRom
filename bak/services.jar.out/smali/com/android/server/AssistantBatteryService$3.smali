.class Lcom/android/server/AssistantBatteryService$3;
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
    .line 197
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$3;->this$0:Lcom/android/server/AssistantBatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    const-string v1, "AssistantBatteryService"

    const-string v2, " ChargeMode Changed Receiver "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$3;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
    invoke-static {v1}, Lcom/android/server/AssistantBatteryService;->access$500(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 201
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$3;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
    invoke-static {v1}, Lcom/android/server/AssistantBatteryService;->access$500(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method
