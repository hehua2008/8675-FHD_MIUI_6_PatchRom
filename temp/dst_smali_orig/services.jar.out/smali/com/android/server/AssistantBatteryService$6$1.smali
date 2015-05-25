.class Lcom/android/server/AssistantBatteryService$6$1;
.super Ljava/lang/Object;
.source "AssistantBatteryService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AssistantBatteryService$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AssistantBatteryService$6;


# direct methods
.method constructor <init>(Lcom/android/server/AssistantBatteryService$6;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$6$1;->this$1:Lcom/android/server/AssistantBatteryService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$6$1;->this$1:Lcom/android/server/AssistantBatteryService$6;

    iget-object v0, v0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    invoke-static {v0, v1}, Lcom/android/server/AssistantBatteryService;->access$602(Lcom/android/server/AssistantBatteryService;Lcom/android/server/AssistantBatteryService$AutoCloseDialog;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$6$1;->this$1:Lcom/android/server/AssistantBatteryService$6;

    iget-object v0, v0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/AssistantBatteryService;->isNeedToShowDialog:Z
    invoke-static {v0, v1}, Lcom/android/server/AssistantBatteryService;->access$702(Lcom/android/server/AssistantBatteryService;Z)Z

    return-void
.end method
