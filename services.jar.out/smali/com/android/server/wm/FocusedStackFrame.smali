.class Lcom/android/server/wm/FocusedStackFrame;
.super Ljava/lang/Object;
.source "FocusedStackFrame.java"


# static fields
.field private static final ALPHA:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "FocusedStackFrame"

.field private static final THICKNESS:I = 0xa


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mLastBounds:Landroid/graphics/Rect;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTmpDrawRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .locals 8
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    .line 45
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    .line 46
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    .line 50
    const/4 v7, 0x0

    .line 56
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "FocusedStackFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 60
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 61
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 65
    return-void

    .line 62
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v1

    move-object v0, v7

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private draw(Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "color"    # I

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 70
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    if-nez v0, :cond_0

    .line 102
    :goto_1
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 82
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 85
    .local v1, "h":I
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v6, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 86
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 87
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 89
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v1, -0xa

    invoke-virtual {v3, v6, v7, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 90
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 91
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 93
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v2, -0xa

    add-int/lit8 v5, v1, -0xa

    invoke-virtual {v3, v4, v7, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 95
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 97
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v1, -0xa

    invoke-virtual {v3, v6, v4, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 98
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 99
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 101
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 75
    .end local v1    # "h":I
    .end local v2    # "w":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 74
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private positionSurface(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 108
    return-void
.end method


# virtual methods
.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 151
    return-void
.end method

.method public setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 155
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 119
    :cond_0
    if-eqz p1, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_0
.end method
