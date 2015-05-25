.class public Landroid/widget/RigoPlayerProgress;
.super Landroid/view/View;
.source "RigoPlayerProgress.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final ACTION_RIGO_MUSIC_PAUSE:Ljava/lang/String; = "ACTION_RIGO_MUSIC_PAUSE"

.field public static final ACTION_RIGO_MUSIC_START:Ljava/lang/String; = "ACTION_RIGO_MUSIC_START"

.field public static final DURATION:Ljava/lang/String; = "DURATION"

.field public static final PAUSE_POSITION:Ljava/lang/String; = "PAUSE_POSITION"

.field public static final RATE:Ljava/lang/String; = "RATE"

.field public static final SHOWBITMAP:Ljava/lang/String; = "SHOWBITMAP"

.field public static final START_POSITION:Ljava/lang/String; = "START_POSITION"

.field public static final TAG:Ljava/lang/String; = "RigoPlayerProgress"


# instance fields
.field private final MSG_PAUSE:I

.field private final MSG_START:I

.field private album_backBitmap:Landroid/graphics/Bitmap;

.field private album_dot:Landroid/graphics/Bitmap;

.field private album_progressBitmap:Landroid/graphics/Bitmap;

.field private current_position:J

.field private delaytime:I

.field private duration:J

.field private handler:Landroid/os/Handler;

.field private mcontext:Landroid/content/Context;

.field private musicPauseListener:Landroid/content/BroadcastReceiver;

.field private musicStartListener:Landroid/content/BroadcastReceiver;

.field private paint:Landroid/graphics/Paint;

.field private pause_position:J

.field private start_position:J

.field private viewHeigh:F

.field private viewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RigoPlayerProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RigoPlayerProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-wide v2, p0, Landroid/widget/RigoPlayerProgress;->start_position:J

    iput-wide v2, p0, Landroid/widget/RigoPlayerProgress;->duration:J

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/RigoPlayerProgress;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RigoPlayerProgress;->MSG_START:I

    iput v1, p0, Landroid/widget/RigoPlayerProgress;->MSG_PAUSE:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/widget/RigoPlayerProgress;->delaytime:I

    new-instance v0, Landroid/widget/RigoPlayerProgress$1;

    invoke-direct {v0, p0}, Landroid/widget/RigoPlayerProgress$1;-><init>(Landroid/widget/RigoPlayerProgress;)V

    iput-object v0, p0, Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/widget/RigoPlayerProgress;->mcontext:Landroid/content/Context;

    const-string v0, "RigoPlayerProgress"

    const-string v1, "RigoPlayerProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/RigoPlayerProgress;->initCycleProgress()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/RigoPlayerProgress;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;

    .prologue
    iget-wide v0, p0, Landroid/widget/RigoPlayerProgress;->current_position:J

    return-wide v0
.end method

.method static synthetic access$002(Landroid/widget/RigoPlayerProgress;J)J
    .locals 0
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/widget/RigoPlayerProgress;->current_position:J

    return-wide p1
.end method

.method static synthetic access$100(Landroid/widget/RigoPlayerProgress;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;

    .prologue
    iget-wide v0, p0, Landroid/widget/RigoPlayerProgress;->start_position:J

    return-wide v0
.end method

.method static synthetic access$102(Landroid/widget/RigoPlayerProgress;J)J
    .locals 0
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/widget/RigoPlayerProgress;->start_position:J

    return-wide p1
.end method

.method static synthetic access$200(Landroid/widget/RigoPlayerProgress;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;

    .prologue
    iget-wide v0, p0, Landroid/widget/RigoPlayerProgress;->duration:J

    return-wide v0
.end method

.method static synthetic access$202(Landroid/widget/RigoPlayerProgress;J)J
    .locals 0
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/widget/RigoPlayerProgress;->duration:J

    return-wide p1
.end method

.method static synthetic access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;

    .prologue
    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/RigoPlayerProgress;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;

    .prologue
    iget v0, p0, Landroid/widget/RigoPlayerProgress;->delaytime:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RigoPlayerProgress;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/widget/RigoPlayerProgress;->delaytime:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/RigoPlayerProgress;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;

    .prologue
    iget-wide v0, p0, Landroid/widget/RigoPlayerProgress;->pause_position:J

    return-wide v0
.end method

.method static synthetic access$502(Landroid/widget/RigoPlayerProgress;J)J
    .locals 0
    .param p0, "x0"    # Landroid/widget/RigoPlayerProgress;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/widget/RigoPlayerProgress;->pause_position:J

    return-wide p1
.end method

.method private initCycleProgress()V
    .locals 3

    .prologue
    const-string v1, "RigoPlayerProgress"

    const-string v2, "initCycleProgress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/RigoPlayerProgress;->mcontext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/RigoPlayerProgress;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1080749

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RigoPlayerProgress;->album_backBitmap:Landroid/graphics/Bitmap;

    const v1, 0x108074c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RigoPlayerProgress;->album_dot:Landroid/graphics/Bitmap;

    const v1, 0x108074b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RigoPlayerProgress;->album_progressBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/widget/RigoPlayerProgress;->performUpdate()V

    goto :goto_0
.end method

.method private performUpdate()V
    .locals 3

    .prologue
    const-string v0, "RigoPlayerProgress"

    const-string v1, "performUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->album_backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->album_backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/RigoPlayerProgress;->viewHeigh:F

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->album_dot:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RigoPlayerProgress;->bitmapRoom(Landroid/graphics/Bitmap;Ljava/lang/Float;Ljava/lang/Float;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RigoPlayerProgress;->album_dot:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->album_progressBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RigoPlayerProgress;->bitmapRoom(Landroid/graphics/Bitmap;Ljava/lang/Float;Ljava/lang/Float;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RigoPlayerProgress;->album_progressBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private registerMusicPauseListener()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/RigoPlayerProgress;->musicPauseListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RigoPlayerProgress$3;

    invoke-direct {v1, p0}, Landroid/widget/RigoPlayerProgress$3;-><init>(Landroid/widget/RigoPlayerProgress;)V

    iput-object v1, p0, Landroid/widget/RigoPlayerProgress;->musicPauseListener:Landroid/content/BroadcastReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_RIGO_MUSIC_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Landroid/widget/RigoPlayerProgress;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/RigoPlayerProgress;->musicPauseListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerMusicStartListener()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/RigoPlayerProgress;->musicStartListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RigoPlayerProgress$2;

    invoke-direct {v1, p0}, Landroid/widget/RigoPlayerProgress$2;-><init>(Landroid/widget/RigoPlayerProgress;)V

    iput-object v1, p0, Landroid/widget/RigoPlayerProgress;->musicStartListener:Landroid/content/BroadcastReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_RIGO_MUSIC_START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Landroid/widget/RigoPlayerProgress;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/RigoPlayerProgress;->musicStartListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public bitmapRoom(Landroid/graphics/Bitmap;Ljava/lang/Float;Ljava/lang/Float;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "newHeight"    # Ljava/lang/Float;
    .param p3, "newWidth"    # Ljava/lang/Float;

    .prologue
    const/4 v1, 0x0

    const-string v0, "RigoPlayerProgress"

    const-string v2, "bitmapRoom"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .local v4, "srcHeight":I
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v2, v3

    div-float v9, v0, v2

    .local v9, "scaleWidth":F
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v2, v4

    div-float v8, v0, v2

    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .end local v7    # "resizedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .restart local v7    # "resizedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object v7, p1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .local v9, "paint1":Landroid/graphics/Paint;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/4 v7, 0x0

    .local v7, "angle":F
    iget-wide v2, p0, Landroid/widget/RigoPlayerProgress;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-wide v2, p0, Landroid/widget/RigoPlayerProgress;->current_position:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const-wide v2, 0x4076800000000000L    # 360.0

    iget-wide v4, p0, Landroid/widget/RigoPlayerProgress;->current_position:J

    long-to-float v0, v4

    float-to-double v4, v0

    mul-double/2addr v2, v4

    iget-wide v4, p0, Landroid/widget/RigoPlayerProgress;->duration:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v7, v2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    iget v4, p0, Landroid/widget/RigoPlayerProgress;->viewHeigh:F

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v10

    .local v10, "scv":I
    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->album_progressBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/RigoPlayerProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    iget v4, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v1, "rectF":Landroid/graphics/RectF;
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v2, v7, v0

    const/high16 v0, 0x43b40000    # 360.0f

    sub-float v3, v0, v7

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/widget/RigoPlayerProgress;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .local v8, "matrix":Landroid/graphics/Matrix;
    iget v0, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v8, v7, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->album_dot:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/widget/RigoPlayerProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const-string v0, "RigoPlayerProgress"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/RigoPlayerProgress;->registerMusicStartListener()V

    invoke-direct {p0}, Landroid/widget/RigoPlayerProgress;->registerMusicPauseListener()V

    invoke-direct {p0}, Landroid/widget/RigoPlayerProgress;->initCycleProgress()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "RigoPlayerProgress"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/RigoPlayerProgress;->musicStartListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/RigoPlayerProgress;->musicPauseListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Landroid/widget/RigoPlayerProgress;->musicStartListener:Landroid/content/BroadcastReceiver;

    iput-object v3, p0, Landroid/widget/RigoPlayerProgress;->musicPauseListener:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const-string v0, "RigoPlayerProgress"

    const-string v1, "onMeasure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Landroid/widget/RigoPlayerProgress;->viewWidth:F

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/RigoPlayerProgress;->viewHeigh:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RigoPlayerProgress;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const-string v0, "RigoPlayerProgress"

    const-string v1, "onSizeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method
