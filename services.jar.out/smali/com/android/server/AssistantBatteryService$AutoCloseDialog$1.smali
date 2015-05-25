.class Lcom/android/server/AssistantBatteryService$AutoCloseDialog$1;
.super Ljava/lang/Object;
.source "AssistantBatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->show(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;


# direct methods
.method constructor <init>(Lcom/android/server/AssistantBatteryService$AutoCloseDialog;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog$1;->this$0:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog$1;->this$0:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    # getter for: Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->access$1200(Lcom/android/server/AssistantBatteryService$AutoCloseDialog;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog$1;->this$0:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    # getter for: Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->access$1200(Lcom/android/server/AssistantBatteryService$AutoCloseDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
