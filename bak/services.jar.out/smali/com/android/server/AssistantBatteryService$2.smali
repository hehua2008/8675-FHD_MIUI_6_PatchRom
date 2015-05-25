.class Lcom/android/server/AssistantBatteryService$2;
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
    .line 187
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$2;->this$0:Lcom/android/server/AssistantBatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 189
    const-string v0, "AssistantBatteryService"

    const-string v1, " ACTION_USER_PRESENT Receiver "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$2;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    invoke-static {v0}, Lcom/android/server/AssistantBatteryService;->access$600(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$2;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    invoke-static {v0}, Lcom/android/server/AssistantBatteryService;->access$600(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$2;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    invoke-static {v0}, Lcom/android/server/AssistantBatteryService;->access$600(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->dissmissDialog()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$2;->this$0:Lcom/android/server/AssistantBatteryService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z
    invoke-static {v0, v1}, Lcom/android/server/AssistantBatteryService;->access$702(Lcom/android/server/AssistantBatteryService;Z)Z

    .line 194
    return-void
.end method
