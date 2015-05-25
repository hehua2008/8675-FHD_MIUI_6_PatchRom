.class Lcom/android/server/MountService$UmsEnableCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UmsEnableCallBack"
.end annotation


# instance fields
.field final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "force"    # Z

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 412
    iput-object p3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    .line 413
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 4

    .prologue
    .line 417
    invoke-super {p0}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    .line 418
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 422
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    # operator-- for: Lcom/android/server/MountService;->mNeedShareTimes:I
    invoke-static {v0}, Lcom/android/server/MountService;->access$410(Lcom/android/server/MountService;)I

    .line 423
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mNeedShareTimes:I
    invoke-static {v0}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/MountService;->mDiskSharing:Z
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$502(Lcom/android/server/MountService;Z)Z

    .line 428
    :cond_0
    return-void
.end method
