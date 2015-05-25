.class public Landroid/widget/RigoAnalogClock;
.super Landroid/view/View;
.source "RigoAnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final delayMillis:J = 0x32L

.field private static final yifenzhong:J = 0xea60L

.field private static final yiquan:F = 360.0f


# instance fields
.field private loopHandler:Landroid/os/Handler;

.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mCount:I

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastSecond:I

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mSecondHand:Landroid/graphics/drawable/Drawable;

.field private mSeconds:F

.field private maxCount:I

.field private rat:F

.field private tickRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RigoAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RigoAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mHandler:Landroid/os/Handler;

    .line 285
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->loopHandler:Landroid/os/Handler;

    .line 291
    new-instance v2, Landroid/widget/RigoAnalogClock$1;

    invoke-direct {v2, p0}, Landroid/widget/RigoAnalogClock$1;-><init>(Landroid/widget/RigoAnalogClock;)V

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->tickRunnable:Ljava/lang/Runnable;

    .line 324
    new-instance v2, Landroid/widget/RigoAnalogClock$2;

    invoke-direct {v2, p0}, Landroid/widget/RigoAnalogClock$2;-><init>(Landroid/widget/RigoAnalogClock;)V

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iget-object v2, p0, Landroid/widget/RigoAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 88
    .local v1, "r":Landroid/content/res/Resources;
    sget-object v2, Lcom/android/internal/R$styleable;->RigoAnalogClock:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v2, p0, Landroid/widget/RigoAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 94
    const v2, 0x1080745

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 97
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 98
    iget-object v2, p0, Landroid/widget/RigoAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 99
    const v2, 0x1080746

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 102
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v2, p0, Landroid/widget/RigoAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 104
    const v2, 0x1080747

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 108
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v2, p0, Landroid/widget/RigoAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 110
    const v2, 0x1080748

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 114
    :cond_3
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 116
    iget-object v2, p0, Landroid/widget/RigoAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/RigoAnalogClock;->mDialWidth:I

    .line 117
    iget-object v2, p0, Landroid/widget/RigoAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/RigoAnalogClock;->mDialHeight:I

    .line 118
    return-void
.end method

.method static synthetic access$000(Landroid/widget/RigoAnalogClock;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RigoAnalogClock;

    .prologue
    .line 46
    iget v0, p0, Landroid/widget/RigoAnalogClock;->mCount:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/RigoAnalogClock;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RigoAnalogClock;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Landroid/widget/RigoAnalogClock;->mCount:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/RigoAnalogClock;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RigoAnalogClock;

    .prologue
    .line 46
    iget v0, p0, Landroid/widget/RigoAnalogClock;->maxCount:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RigoAnalogClock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RigoAnalogClock;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/RigoAnalogClock;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RigoAnalogClock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RigoAnalogClock;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/RigoAnalogClock;->loopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/RigoAnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .param p0, "x0"    # Landroid/widget/RigoAnalogClock;
    .param p1, "x1"    # Landroid/text/format/Time;

    .prologue
    .line 46
    iput-object p1, p0, Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$500(Landroid/widget/RigoAnalogClock;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/RigoAnalogClock;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/RigoAnalogClock;->onTimeChanged()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 7

    .prologue
    const/high16 v6, 0x42700000    # 60.0f

    .line 304
    iget-object v4, p0, Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 306
    iget-object v4, p0, Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v4, Landroid/text/format/Time;->hour:I

    .line 307
    .local v1, "hour":I
    iget-object v4, p0, Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v4, Landroid/text/format/Time;->minute:I

    .line 308
    .local v2, "minute":I
    iget-object v4, p0, Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v3, v4, Landroid/text/format/Time;->second:I

    .line 310
    .local v3, "second":I
    int-to-float v4, v3

    iput v4, p0, Landroid/widget/RigoAnalogClock;->mSeconds:F

    .line 311
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/RigoAnalogClock;->mMinutes:F

    .line 312
    int-to-float v4, v1

    iget v5, p0, Landroid/widget/RigoAnalogClock;->mMinutes:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/RigoAnalogClock;->mHour:F

    .line 313
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/RigoAnalogClock;->mChanged:Z

    .line 315
    iget v4, p0, Landroid/widget/RigoAnalogClock;->mLastSecond:I

    iget-object v5, p0, Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->second:I

    if-eq v4, v5, :cond_0

    .line 316
    iget-object v4, p0, Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->second:I

    iput v4, p0, Landroid/widget/RigoAnalogClock;->mLastSecond:I

    .line 317
    iget v4, p0, Landroid/widget/RigoAnalogClock;->mSeconds:F

    div-float v0, v4, v6

    .line 318
    .local v0, "hasPast":F
    iget v4, p0, Landroid/widget/RigoAnalogClock;->maxCount:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/RigoAnalogClock;->mCount:I

    .line 321
    .end local v0    # "hasPast":F
    :cond_0
    iget-object v4, p0, Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v4}, Landroid/widget/RigoAnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    .line 322
    return-void
.end method

.method private run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/widget/RigoAnalogClock;->loopHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/RigoAnalogClock;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 6
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 339
    const/16 v1, 0x81

    .line 340
    .local v1, "flags":I
    iget-object v2, p0, Landroid/widget/RigoAnalogClock;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const/16 v5, 0x81

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/widget/RigoAnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 122
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 124
    iget-boolean v2, p0, Landroid/widget/RigoAnalogClock;->mAttached:Z

    if-nez v2, :cond_0

    .line 125
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RigoAnalogClock;->mAttached:Z

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/widget/RigoAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RigoAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/RigoAnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 139
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 142
    const v2, 0x3e99999a    # 0.3f

    iput v2, p0, Landroid/widget/RigoAnalogClock;->rat:F

    .line 143
    const/16 v2, 0x4b0

    iput v2, p0, Landroid/widget/RigoAnalogClock;->maxCount:I

    .line 147
    invoke-direct {p0}, Landroid/widget/RigoAnalogClock;->onTimeChanged()V

    .line 150
    iget v2, p0, Landroid/widget/RigoAnalogClock;->mSeconds:F

    const/high16 v3, 0x42700000    # 60.0f

    div-float v1, v2, v3

    .line 151
    .local v1, "hasPast":F
    iget v2, p0, Landroid/widget/RigoAnalogClock;->maxCount:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/RigoAnalogClock;->mCount:I

    .line 152
    invoke-direct {p0}, Landroid/widget/RigoAnalogClock;->run()V

    .line 154
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 159
    iget-boolean v0, p0, Landroid/widget/RigoAnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/widget/RigoAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RigoAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    iput-boolean v2, p0, Landroid/widget/RigoAnalogClock;->mAttached:Z

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/widget/RigoAnalogClock;->loopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    iget v0, p0, Landroid/widget/RigoAnalogClock;->mCount:I

    iget v1, p0, Landroid/widget/RigoAnalogClock;->maxCount:I

    if-lt v0, v1, :cond_1

    .line 167
    iput v2, p0, Landroid/widget/RigoAnalogClock;->mCount:I

    .line 170
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 205
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    invoke-direct/range {p0 .. p0}, Landroid/widget/RigoAnalogClock;->onTimeChanged()V

    .line 210
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/RigoAnalogClock;->mChanged:Z

    .line 211
    .local v6, "changed":Z
    if-eqz v6, :cond_0

    .line 212
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/RigoAnalogClock;->mChanged:Z

    .line 215
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RigoAnalogClock;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RigoAnalogClock;->mLeft:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 216
    .local v5, "availableWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RigoAnalogClock;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RigoAnalogClock;->mTop:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 218
    .local v4, "availableHeight":I
    div-int/lit8 v15, v5, 0x2

    .line 219
    .local v15, "x":I
    div-int/lit8 v16, v4, 0x2

    .line 221
    .local v16, "y":I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/RigoAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 222
    .local v7, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 223
    .local v14, "w":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 225
    .local v8, "h":I
    const/4 v12, 0x0

    .line 227
    .local v12, "scaled":Z
    if-lt v5, v14, :cond_1

    if-ge v4, v8, :cond_2

    .line 228
    :cond_1
    const/4 v12, 0x1

    .line 229
    int-to-float v0, v5

    move/from16 v17, v0

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v17, v17, v18

    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 231
    .local v11, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 232
    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v11, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 235
    .end local v11    # "scale":F
    :cond_2
    if-eqz v6, :cond_3

    .line 236
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RigoAnalogClock;->mHour:F

    move/from16 v17, v0

    const/high16 v18, 0x41400000    # 12.0f

    div-float v17, v17, v18

    const/high16 v18, 0x43b40000    # 360.0f

    mul-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 242
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/RigoAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 243
    .local v9, "hourHand":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 244
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 245
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 246
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RigoAnalogClock;->mMinutes:F

    move/from16 v17, v0

    const/high16 v18, 0x42700000    # 60.0f

    div-float v17, v17, v18

    const/high16 v18, 0x43b40000    # 360.0f

    mul-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 254
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RigoAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 255
    .local v10, "minuteHand":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_5

    .line 256
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 257
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 258
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 260
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RigoAnalogClock;->mCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/RigoAnalogClock;->mCount:I

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RigoAnalogClock;->mCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RigoAnalogClock;->rat:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RigoAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 270
    .local v13, "secondHand":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_6

    .line 271
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 272
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 273
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v16

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 279
    if-eqz v12, :cond_7

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 282
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 175
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 176
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 177
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 178
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 180
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 181
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 183
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Landroid/widget/RigoAnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    .line 184
    int-to-float v7, v6

    iget v8, p0, Landroid/widget/RigoAnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 187
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Landroid/widget/RigoAnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_1

    .line 188
    int-to-float v7, v2

    iget v8, p0, Landroid/widget/RigoAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 191
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 193
    .local v3, "scale":F
    iget v7, p0, Landroid/widget/RigoAnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Landroid/widget/RigoAnalogClock;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Landroid/widget/RigoAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Landroid/widget/RigoAnalogClock;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/widget/RigoAnalogClock;->setMeasuredDimension(II)V

    .line 195
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RigoAnalogClock;->mChanged:Z

    .line 201
    return-void
.end method
