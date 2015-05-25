.class public Lorg/codeaurora/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/Performance$TouchInfo;
    }
.end annotation


# static fields
.field public static final ALL_CPUS_PC_DIS:I = 0x101

.field public static final ALL_CPUS_PWR_CLPS_DIS:I = 0x100

.field public static final CPU0_FREQ_NONTURBO_MAX:I = 0x20a

.field public static final CPU0_FREQ_TURBO_MAX:I = 0x2fe

.field public static final CPU0_MAX_FREQ_NONTURBO_MAX:I = 0x150a

.field public static final CPU1_FREQ_NONTURBO_MAX:I = 0x30a

.field public static final CPU1_FREQ_TURBO_MAX:I = 0x3fe

.field public static final CPU1_MAX_FREQ_NONTURBO_MAX:I = 0x160a

.field public static final CPU2_FREQ_NONTURBO_MAX:I = 0x40a

.field public static final CPU2_FREQ_TURBO_MAX:I = 0x4fe

.field public static final CPU2_MAX_FREQ_NONTURBO_MAX:I = 0x170a

.field public static final CPU3_FREQ_NONTURBO_MAX:I = 0x50a

.field public static final CPU3_FREQ_TURBO_MAX:I = 0x5fe

.field public static final CPU3_MAX_FREQ_NONTURBO_MAX:I = 0x180a

.field public static final CPUS_ON_2:I = 0x702

.field public static final CPUS_ON_3:I = 0x703

.field public static final CPUS_ON_LIMIT_1:I = 0x8fe

.field public static final CPUS_ON_LIMIT_2:I = 0x8fd

.field public static final CPUS_ON_LIMIT_3:I = 0x8fc

.field public static final CPUS_ON_MAX:I = 0x7ff

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field public static final SCHED_MIGRATE_COST:I = 0x3f01

.field public static final SCHED_PREFER_IDLE:I = 0x3e01

.field private static final TAG:Ljava/lang/String; = "Perf"

.field private static isFlingEnabled:Z

.field private static mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;


# instance fields
.field private handle:I

.field private mDivFact:I

.field private mFlingBoostDuration:I

.field private mHDragPix:I

.field private mWDragPix:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lorg/codeaurora/Performance;->isFlingEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/Performance;->handle:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/codeaurora/Performance;->mDivFact:I

    iput v1, p0, Lorg/codeaurora/Performance;->mWDragPix:I

    iput v1, p0, Lorg/codeaurora/Performance;->mHDragPix:I

    const/16 v0, 0x5dc

    iput v0, p0, Lorg/codeaurora/Performance;->mFlingBoostDuration:I

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lorg/codeaurora/Performance;->isFlingEnabled:Z

    return p0
.end method

.method private native native_cpu_setoptions(II)I
.end method

.method private native native_deinit()V
.end method

.method private native native_perf_lock_acq(II[I)I
.end method

.method private native native_perf_lock_rel(I)I
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/Performance;->native_deinit()V

    return-void
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 3
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .prologue
    const/4 v0, 0x0

    .local v0, "rc":I
    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v1, p1, p2}, Lorg/codeaurora/Performance;->native_perf_lock_acq(II[I)I

    move-result v1

    iput v1, p0, Lorg/codeaurora/Performance;->handle:I

    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "Perf"

    const-string v2, "REQUEST_SUCCEEDED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "duration"    # I
    .param p4, "list"    # [I

    .prologue
    const/4 v7, -0x1

    .local v7, "rc":I
    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-nez v14, :cond_0

    new-instance v14, Lorg/codeaurora/Performance$TouchInfo;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/codeaurora/Performance$TouchInfo;-><init>(Lorg/codeaurora/Performance;)V

    sput-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .local v3, "actionMasked":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .local v6, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-int v12, v14

    .local v12, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    float-to-int v10, v14

    .local v10, "x":I
    int-to-float v14, v10

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v14, v15

    move-object/from16 v0, p2

    iget v15, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v14, v15

    float-to-int v4, v14

    .local v4, "dx":I
    int-to-float v14, v12

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v14, v15

    move-object/from16 v0, p2

    iget v15, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v14, v15

    float-to-int v5, v14

    .local v5, "dy":I
    const/4 v9, 0x1

    .local v9, "ret":Z
    packed-switch v3, :pswitch_data_0

    move v8, v7

    .end local v7    # "rc":I
    .local v8, "rc":I
    :goto_0
    return v8

    .end local v8    # "rc":I
    .restart local v7    # "rc":I
    :pswitch_0
    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->reset()V
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$100(Lorg/codeaurora/Performance$TouchInfo;)V

    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->setStartXY(II)V
    invoke-static {v14, v4, v5}, Lorg/codeaurora/Performance$TouchInfo;->access$200(Lorg/codeaurora/Performance$TouchInfo;II)V

    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    move-object/from16 v0, p2

    iget v15, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mDivFact:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    div-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mDivFact:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->setFlingWH(II)V
    invoke-static/range {v14 .. v16}, Lorg/codeaurora/Performance$TouchInfo;->access$300(Lorg/codeaurora/Performance$TouchInfo;II)V

    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/codeaurora/Performance;->mWDragPix:I

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mHDragPix:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->setDragWH(II)V
    invoke-static/range {v14 .. v16}, Lorg/codeaurora/Performance$TouchInfo;->access$400(Lorg/codeaurora/Performance$TouchInfo;II)V

    move v8, v7

    .end local v7    # "rc":I
    .restart local v8    # "rc":I
    goto/16 :goto_0

    .end local v8    # "rc":I
    .restart local v7    # "rc":I
    :pswitch_1
    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurX:I
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$500(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v14

    sub-int v11, v4, v14

    .local v11, "xdiff":I
    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurY:I
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$600(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v14

    sub-int v13, v5, v14

    .local v13, "ydiff":I
    if-gez v11, :cond_1

    mul-int/lit8 v11, v11, -0x1

    :cond_1
    if-gez v13, :cond_2

    mul-int/lit8 v13, v13, -0x1

    :cond_2
    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->setXY(II)V
    invoke-static {v14, v4, v5}, Lorg/codeaurora/Performance$TouchInfo;->access$700(Lorg/codeaurora/Performance$TouchInfo;II)V

    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragW:I
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$800(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v14

    if-gt v11, v14, :cond_3

    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragH:I
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$900(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v14

    if-le v13, v14, :cond_4

    :cond_3
    const/4 v9, 0x0

    :cond_4
    const/4 v14, 0x1

    if-ne v9, v14, :cond_9

    move v8, v7

    .end local v7    # "rc":I
    .restart local v8    # "rc":I
    goto/16 :goto_0

    .end local v8    # "rc":I
    .end local v11    # "xdiff":I
    .end local v13    # "ydiff":I
    .restart local v7    # "rc":I
    :pswitch_2
    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurX:I
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$500(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v14

    sub-int v11, v4, v14

    .restart local v11    # "xdiff":I
    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurY:I
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$600(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v14

    sub-int v13, v5, v14

    .restart local v13    # "ydiff":I
    if-gez v11, :cond_5

    mul-int/lit8 v11, v11, -0x1

    :cond_5
    if-gez v13, :cond_6

    mul-int/lit8 v13, v13, -0x1

    :cond_6
    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragW:I
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$800(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v14

    if-gt v11, v14, :cond_7

    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragH:I
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$900(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v14

    if-le v13, v14, :cond_8

    :cond_7
    const/4 v9, 0x0

    :cond_8
    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->reset()V
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$100(Lorg/codeaurora/Performance$TouchInfo;)V

    const/4 v14, 0x1

    if-ne v9, v14, :cond_9

    move v8, v7

    .end local v7    # "rc":I
    .restart local v8    # "rc":I
    goto/16 :goto_0

    .end local v8    # "rc":I
    .end local v11    # "xdiff":I
    .end local v13    # "ydiff":I
    .restart local v7    # "rc":I
    :pswitch_3
    sget-object v14, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->reset()V
    invoke-static {v14}, Lorg/codeaurora/Performance$TouchInfo;->access$100(Lorg/codeaurora/Performance$TouchInfo;)V

    move v8, v7

    .end local v7    # "rc":I
    .restart local v8    # "rc":I
    goto/16 :goto_0

    .end local v8    # "rc":I
    .restart local v7    # "rc":I
    .restart local v11    # "xdiff":I
    .restart local v13    # "ydiff":I
    :cond_9
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/codeaurora/Performance;->handle:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v14, v1, v2}, Lorg/codeaurora/Performance;->native_perf_lock_acq(II[I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lorg/codeaurora/Performance;->handle:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/codeaurora/Performance;->handle:I

    if-nez v14, :cond_a

    const/4 v7, -0x1

    :cond_a
    move v8, v7

    .end local v7    # "rc":I
    .restart local v8    # "rc":I
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public perfLockRelease()I
    .locals 2

    .prologue
    const-string v0, "Perf"

    const-string v1, "perfLockRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v0}, Lorg/codeaurora/Performance;->native_perf_lock_rel(I)I

    move-result v0

    return v0
.end method
