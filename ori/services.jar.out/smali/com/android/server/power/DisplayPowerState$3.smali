.class Lcom/android/server/power/DisplayPowerState$3;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 325
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # setter for: Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z
    invoke-static {v1, v0}, Lcom/android/server/power/DisplayPowerState;->access$102(Lcom/android/server/power/DisplayPowerState;Z)Z

    .line 327
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$200(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$300(Lcom/android/server/power/DisplayPowerState;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$400(Lcom/android/server/power/DisplayPowerState;)I

    move-result v0

    .line 328
    .local v0, "brightness":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$500(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerState;->access$200(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->setState(ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const-string v1, "DisplayPowerState"

    const-string v2, "Screen ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z
    invoke-static {v1, v2}, Lcom/android/server/power/DisplayPowerState;->access$602(Lcom/android/server/power/DisplayPowerState;Z)Z

    .line 333
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # invokes: Lcom/android/server/power/DisplayPowerState;->invokeCleanListenerIfNeeded()V
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$700(Lcom/android/server/power/DisplayPowerState;)V

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_1
    const-string v1, "DisplayPowerState"

    const-string v2, "Screen not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
