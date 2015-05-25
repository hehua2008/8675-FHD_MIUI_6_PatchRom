.class Lcom/android/server/MountService$3;
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
    .line 763
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 768
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "action":Ljava/lang/String;
    const-string v5, "setting"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, "extra":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->getStatbarFlag()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, "tmpflag":Ljava/lang/String;
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Receive boradcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mounted :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v5, "sdcard"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_0

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "unmounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 774
    :cond_0
    const/4 v3, 0x0

    .line 775
    .local v3, "i":I
    const/4 v1, 0x0

    .line 776
    .local v1, "count":I
    iget-object v5, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 777
    iget-object v5, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v5

    array-length v1, v5

    .line 779
    :cond_1
    if-lez v1, :cond_5

    .line 780
    iget-object v5, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    const-string v6, "checking"

    # invokes: Lcom/android/server/MountService;->setStatbarFlag(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Ljava/lang/String;)V

    .line 781
    iget-object v5, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v6, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unmounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 783
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 784
    iget-object v5, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v6, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unmounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 786
    iget-object v5, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v6, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    .line 783
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 789
    :cond_3
    iget-object v5, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v6, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 791
    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 792
    iget-object v5, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v6, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 794
    iget-object v5, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v6, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 791
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 801
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_5
    return-void
.end method
