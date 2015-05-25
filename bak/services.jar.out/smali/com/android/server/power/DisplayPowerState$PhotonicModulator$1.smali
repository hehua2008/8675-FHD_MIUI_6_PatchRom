.class Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 416
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1300(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 417
    :try_start_0
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1400(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v2

    .line 418
    .local v2, "on":Z
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1500(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v7

    if-eq v2, v7, :cond_1

    move v3, v4

    .line 419
    .local v3, "onChanged":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1600(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v0

    .line 420
    .local v0, "backlight":I
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1700(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v7

    if-eq v0, v7, :cond_2

    move v1, v4

    .line 421
    .local v1, "backlightChanged":Z
    :goto_2
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 422
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z
    invoke-static {v4, v5}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 423
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v4, v4, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # invokes: Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerState;->access$2500(Lcom/android/server/power/DisplayPowerState;)V

    .line 466
    return-void

    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v3    # "onChanged":Z
    :cond_1
    move v3, v5

    .line 418
    goto :goto_1

    .restart local v0    # "backlight":I
    .restart local v3    # "onChanged":Z
    :cond_2
    move v1, v5

    .line 420
    goto :goto_2

    .line 425
    .restart local v1    # "backlightChanged":Z
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v7, v2}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1502(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 426
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v7, v0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1702(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I

    .line 428
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # setter for: Lcom/android/server/power/DisplayPowerState;->recordBackLight:I
    invoke-static {v7, v0}, Lcom/android/server/power/DisplayPowerState;->access$1902(Lcom/android/server/power/DisplayPowerState;I)I

    .line 429
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating screen state: on="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 436
    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating screen state: on="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 440
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2000(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/power/DisplayBlanker;->unblankAllDisplays()V

    .line 442
    :cond_5
    if-eqz v1, :cond_8

    .line 446
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->initState:Z
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2100(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->bootReason1:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2200(Lcom/android/server/power/DisplayPowerState;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->bootReason1:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2200(Lcom/android/server/power/DisplayPowerState;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "excep_press_poweron"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->bootReason2:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2300(Lcom/android/server/power/DisplayPowerState;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->bootReason2:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2300(Lcom/android/server/power/DisplayPowerState;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "syscrash"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 449
    :cond_7
    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reboot reason exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->bootReason1:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$2200(Lcom/android/server/power/DisplayPowerState;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->bootReason2:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$2300(Lcom/android/server/power/DisplayPowerState;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # setter for: Lcom/android/server/power/DisplayPowerState;->initState:Z
    invoke-static {v6, v5}, Lcom/android/server/power/DisplayPowerState;->access$2102(Lcom/android/server/power/DisplayPowerState;Z)Z

    .line 459
    :cond_8
    :goto_3
    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 460
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2000(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/power/DisplayBlanker;->blankAllDisplays()V

    goto/16 :goto_0

    .line 429
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v2    # "on":Z
    .end local v3    # "onChanged":Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 452
    .restart local v0    # "backlight":I
    .restart local v1    # "backlightChanged":Z
    .restart local v2    # "on":Z
    .restart local v3    # "onChanged":Z
    :cond_9
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # setter for: Lcom/android/server/power/DisplayPowerState;->initState:Z
    invoke-static {v6, v5}, Lcom/android/server/power/DisplayPowerState;->access$2102(Lcom/android/server/power/DisplayPowerState;Z)Z

    .line 453
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2400(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_3
.end method
