.class Lcom/android/server/power/PowerManagerService$5;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 4133
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4135
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->isAdjustScreenBrightMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4137
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getCurrentScreenbrightness()I

    move-result v0

    # setter for: Lcom/android/server/power/PowerManagerService;->mcurrentLCDBrightness:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5902(I)I

    .line 4141
    # getter for: Lcom/android/server/power/PowerManagerService;->mcurrentLCDBrightness:I
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$5900()I

    move-result v0

    const/16 v1, 0x4b

    if-ge v0, v1, :cond_0

    # getter for: Lcom/android/server/power/PowerManagerService;->mcurrentLCDBrightness:I
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$5900()I

    move-result v0

    const v1, 0x10e002d

    if-ne v0, v1, :cond_1

    .line 4143
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->adjustLCDBrightnessWhenScreenOn()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;)V

    .line 4146
    :cond_1
    # getter for: Lcom/android/server/power/PowerManagerService;->mCountAdjustLCDTime:I
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$3300()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 4147
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mAdjustLcdHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mAdjustLcdRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4153
    :cond_2
    return-void
.end method
