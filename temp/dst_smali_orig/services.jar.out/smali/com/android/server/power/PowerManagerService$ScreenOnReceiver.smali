.class final Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenOnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-eq v0, v5, :cond_1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->isAdjustScreenBrightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mAdjustBrightnessWhenScreenOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->hasSendAdjustLCDAfterScreenon:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayPowerRequest;

    move-result-object v0

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    # setter for: Lcom/android/server/power/PowerManagerService;->mRecordAdjustedValue:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3402(I)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mRecordTimeWhenScreenOff:J
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$3500()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    # setter for: Lcom/android/server/power/PowerManagerService;->mCountAdjustLCDTime:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$3302(I)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mAdjustLcdHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mAdjustLcdRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->hasSendAdjustLCDAfterScreenon:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffWhenAdjustBrightness:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScreenOnReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mRecordTimePointWhenScreenOff:Z

    const-wide/16 v0, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mRecordTimeWhenScreenOff:J
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3502(J)J

    return-void
.end method
