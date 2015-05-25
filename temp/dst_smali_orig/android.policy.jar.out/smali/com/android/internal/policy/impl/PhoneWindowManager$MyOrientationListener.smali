.class Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;
.super Lcom/android/internal/policy/impl/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/16 v3, 0xc9

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVendettaHandler:Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSmartRotation:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVendettaMonitorChecking:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVendettaHandler:Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVendettaHandler:Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    goto :goto_0
.end method
