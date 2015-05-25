.class Lcom/android/server/power/PowerManagerService$6;
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
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->isAdjustScreenBrightMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->getCurrentScreenbrightness()I

    move-result v2

    const/16 v3, 0x4b

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->getCurrentScreenbrightness()I

    move-result v2

    const v3, 0x10e002d

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->getCurrentScreenbrightness()I

    move-result v0

    .local v0, "currentBrightness":I
    div-int/lit8 v2, v0, 0x16

    sub-int v1, v0, v2

    .local v1, "targetValueAdjustToBe":I
    const/16 v2, 0x46

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v2, v2, Lcom/android/server/power/PowerManagerService;->mOverrideBrightWhenAdjustBright:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBackLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$6100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    # operator++ for: Lcom/android/server/power/PowerManagerService;->mCountAdjustLCDTimeAtApp:I
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$6208()I

    :cond_1
    # getter for: Lcom/android/server/power/PowerManagerService;->mCountAdjustLCDTimeAtApp:I
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$6200()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v2, v2, Lcom/android/server/power/PowerManagerService;->mOverrideBrightWhenAdjustBright:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mAdjustLcdHandlerAtApp:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mAdjustLcdRunnableAtApp:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$6300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "currentBrightness":I
    .end local v1    # "targetValueAdjustToBe":I
    :cond_2
    return-void
.end method
