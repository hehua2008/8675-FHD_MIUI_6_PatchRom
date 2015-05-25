.class Lcom/android/internal/widget/FingerScreenshotView$mGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FingerScreenshotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FingerScreenshotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "mGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FingerScreenshotView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FingerScreenshotView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FingerScreenshotView$mGestureListener;->this$0:Lcom/android/internal/widget/FingerScreenshotView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/FingerScreenshotView$mGestureListener;->this$0:Lcom/android/internal/widget/FingerScreenshotView;

    # getter for: Lcom/android/internal/widget/FingerScreenshotView;->MIN_VELOCITY:I
    invoke-static {v1}, Lcom/android/internal/widget/FingerScreenshotView;->access$000(Lcom/android/internal/widget/FingerScreenshotView;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView$mGestureListener;->this$0:Lcom/android/internal/widget/FingerScreenshotView;

    # getter for: Lcom/android/internal/widget/FingerScreenshotView;->canScreenShotChord:Z
    invoke-static {v0}, Lcom/android/internal/widget/FingerScreenshotView;->access$100(Lcom/android/internal/widget/FingerScreenshotView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView$mGestureListener;->this$0:Lcom/android/internal/widget/FingerScreenshotView;

    # getter for: Lcom/android/internal/widget/FingerScreenshotView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/FingerScreenshotView;->access$300(Lcom/android/internal/widget/FingerScreenshotView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/FingerScreenshotView$mGestureListener;->this$0:Lcom/android/internal/widget/FingerScreenshotView;

    # getter for: Lcom/android/internal/widget/FingerScreenshotView;->mPointerScreenshotRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/widget/FingerScreenshotView;->access$200(Lcom/android/internal/widget/FingerScreenshotView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
