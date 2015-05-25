.class Lcom/android/server/BatteryService$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBooted:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v0

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    packed-switch v0, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 409
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v0

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->recoardBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v0

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    const/16 v1, 0xd48

    if-gt v0, v1, :cond_1

    .line 411
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shutdownIfNoPowerLocked:It is not charging.Battery level is less than 5.BatteryVoltage is lt 3.4V."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->shutdownConfirm(Z)V
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;Z)V

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    # setter for: Lcom/android/server/BatteryService;->recoardBatteryLevel:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$302(Lcom/android/server/BatteryService;I)I

    goto :goto_0

    .line 422
    :pswitch_1
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shutdownIfNoPowerLocked:It is not charging.Battery level is 0."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->shutdownConfirm(Z)V
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;Z)V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v0

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 428
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shutdownIfNoPowerLocked:mBooted is false,lowLevelShutdown."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
