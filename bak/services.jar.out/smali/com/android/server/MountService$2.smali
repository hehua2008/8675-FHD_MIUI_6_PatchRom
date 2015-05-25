.class Lcom/android/server/MountService$2;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "configChanged":Z
    iget-object v2, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string v3, "connected"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/android/server/MountService;->mUsbConnected:Z
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1302(Lcom/android/server/MountService;Z)Z

    .line 699
    iget-object v2, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string v3, "mass_storage"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/android/server/MountService;->mConfigUMS:Z
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1402(Lcom/android/server/MountService;Z)Z

    .line 700
    const-string v2, "configured"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 701
    iget-object v2, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mUsbConnected:Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConfigUMS:Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    # invokes: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v2, v1}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Z)V

    .line 702
    iget-object v1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mUsbConnected:Z
    invoke-static {v1}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConfigUMS:Z
    invoke-static {v1}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 703
    :cond_1
    new-instance v1, Lcom/android/server/MountService$2$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$2$1;-><init>(Lcom/android/server/MountService$2;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$2$1;->start()V

    .line 741
    :cond_2
    return-void
.end method
