.class Lcom/android/server/MountService$6;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$volume:Landroid/os/storage/StorageVolume;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$6;->val$volume:Landroid/os/storage/StorageVolume;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1198
    const/16 v1, 0xc8

    .line 1199
    .local v1, "retries":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mDiskUnmounting:Z
    invoke-static {v2}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 1200
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1201
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VolumeDiskRemoved:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1204
    :cond_0
    if-lez v1, :cond_1

    .line 1205
    iget-object v2, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$6;->val$volume:Landroid/os/storage/StorageVolume;

    const-string v4, "removed"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1206
    iget-object v2, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const-string v3, "android.intent.action.MEDIA_REMOVED"

    iget-object v4, p0, Lcom/android/server/MountService$6;->val$volume:Landroid/os/storage/StorageVolume;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :cond_1
    :goto_1
    return-void

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "MountService"

    const-string v3, "Failed to mount media on insertion"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
