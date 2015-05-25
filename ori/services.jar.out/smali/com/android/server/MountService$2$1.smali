.class Lcom/android/server/MountService$2$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$2;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$2;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 707
    const/4 v1, 0x0

    .line 708
    .local v1, "i":I
    :try_start_0
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqure is sharing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v4, v4, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mDiskSharing:Z
    invoke-static {v4}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 712
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "looping:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    add-int/lit8 v1, v1, 0x1

    .line 715
    iget-object v2, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v2, v2, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mUsbConnected:Z
    invoke-static {v2}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v2, v2, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConfigUMS:Z
    invoke-static {v2}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 732
    :cond_1
    :goto_0
    return-void

    .line 719
    :cond_2
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    .line 724
    :goto_1
    iget-object v2, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v2, v2, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v2}, Lcom/android/server/MountService;->isUsbMassStorageEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 725
    const-string v2, "MountService"

    const-string v3, "setUsbMassStorageEnabled false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v2, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v2, v2, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "MountService"

    const-string v3, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 722
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v2, v2, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mDiskSharing:Z
    invoke-static {v2}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method
