.class public Lcom/android/internal/widget/FingerScreenshotView;
.super Landroid/view/View;
.source "FingerScreenshotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/FingerScreenshotView$mGestureListener;
    }
.end annotation


# static fields
.field private static final PointerScreenshotChord:Ljava/lang/String; = "yulong.android.intent.action.ShotChord"

.field private static final TAG:Ljava/lang/String; = "PointerScreenshotChordView"


# instance fields
.field private MIN_DISTANCE:I

.field private MIN_VELOCITY:I

.field private canScreenShotChord:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private final mPointerScreenshotRunnable:Ljava/lang/Runnable;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field private ry_pointer3_down:I

.field private ry_pointer3_move:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x320

    iput v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->MIN_DISTANCE:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->MIN_VELOCITY:I

    new-instance v0, Lcom/android/internal/widget/FingerScreenshotView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FingerScreenshotView$1;-><init>(Lcom/android/internal/widget/FingerScreenshotView;)V

    iput-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->mPointerScreenshotRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/widget/FingerScreenshotView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FingerScreenshotView$2;-><init>(Lcom/android/internal/widget/FingerScreenshotView;)V

    iput-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->mScreenshotRunnable:Ljava/lang/Runnable;

    const-string v0, "PointerScreenshotChordView"

    const-string v1, "  PointerScreenshotChordView init "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/internal/widget/FingerScreenshotView$mGestureListener;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/FingerScreenshotView$mGestureListener;-><init>(Lcom/android/internal/widget/FingerScreenshotView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/FingerScreenshotView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FingerScreenshotView;

    .prologue
    iget v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->MIN_VELOCITY:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/FingerScreenshotView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FingerScreenshotView;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->canScreenShotChord:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/FingerScreenshotView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FingerScreenshotView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->mPointerScreenshotRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/FingerScreenshotView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FingerScreenshotView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/FingerScreenshotView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FingerScreenshotView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iput v1, p0, Lcom/android/internal/widget/FingerScreenshotView;->ry_pointer3_down:I

    iput v1, p0, Lcom/android/internal/widget/FingerScreenshotView;->ry_pointer3_move:I

    iput-boolean v1, p0, Lcom/android/internal/widget/FingerScreenshotView;->canScreenShotChord:Z

    iget-object v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/FingerScreenshotView;->mScreenshotRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->ry_pointer3_move:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->ry_pointer3_down:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->ry_pointer3_move:I

    iget v1, p0, Lcom/android/internal/widget/FingerScreenshotView;->ry_pointer3_down:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/FingerScreenshotView;->MIN_DISTANCE:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->ry_pointer3_down:I

    iget v1, p0, Lcom/android/internal/widget/FingerScreenshotView;->ry_pointer3_move:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/FingerScreenshotView;->MIN_DISTANCE:I

    if-le v0, v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->canScreenShotChord:Z

    goto :goto_0

    :sswitch_3
    const-string v0, "yulong.sys.screen.shotchord"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/FingerScreenshotView;->ry_pointer3_down:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_0
        0x8 -> :sswitch_0
        0x205 -> :sswitch_3
        0x206 -> :sswitch_0
    .end sparse-switch
.end method
