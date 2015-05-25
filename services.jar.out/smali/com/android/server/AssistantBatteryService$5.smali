.class Lcom/android/server/AssistantBatteryService$5;
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
    .line 215
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$5;->this$0:Lcom/android/server/AssistantBatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$5;->this$0:Lcom/android/server/AssistantBatteryService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z
    invoke-static {v0, v1}, Lcom/android/server/AssistantBatteryService;->access$702(Lcom/android/server/AssistantBatteryService;Z)Z

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$5;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    invoke-static {v0}, Lcom/android/server/AssistantBatteryService;->access$600(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$5;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    invoke-static {v0}, Lcom/android/server/AssistantBatteryService;->access$600(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$5;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    invoke-static {v0}, Lcom/android/server/AssistantBatteryService;->access$600(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->dissmissDialog()V

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$5;->this$0:Lcom/android/server/AssistantBatteryService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z
    invoke-static {v0, v1}, Lcom/android/server/AssistantBatteryService;->access$702(Lcom/android/server/AssistantBatteryService;Z)Z

    goto :goto_0
.end method
