.class public Lcom/android/server/wm/StackBox;
.super Ljava/lang/Object;
.source "StackBox.java"


# static fields
.field public static final TASK_STACK_GOES_ABOVE:I = 0x4

.field public static final TASK_STACK_GOES_AFTER:I = 0x1

.field public static final TASK_STACK_GOES_BEFORE:I = 0x0

.field public static final TASK_STACK_GOES_BELOW:I = 0x5

.field public static final TASK_STACK_GOES_OVER:I = 0x6

.field public static final TASK_STACK_GOES_UNDER:I = 0x7

.field public static final TASK_STACK_TO_LEFT_OF:I = 0x2

.field public static final TASK_STACK_TO_RIGHT_OF:I = 0x3

.field static sCurrentBoxId:I


# instance fields
.field layoutNeeded:Z

.field mBounds:Landroid/graphics/Rect;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mFirst:Lcom/android/server/wm/StackBox;

.field mParent:Lcom/android/server/wm/StackBox;

.field mSecond:Lcom/android/server/wm/StackBox;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mStackBoxId:I

.field mTmpRect:Landroid/graphics/Rect;

.field mUnderStatusBar:Z

.field mVertical:Z

.field mWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "parent"    # Lcom/android/server/wm/StackBox;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    .line 99
    const-class v1, Lcom/android/server/wm/StackBox;

    monitor-enter v1

    .line 100
    :try_start_0
    sget v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    iput v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iput-object p1, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 104
    iput-object p2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 105
    iput-object p3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 106
    return-void

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v0

    .line 397
    :goto_0
    return v0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v0

    .line 396
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v1

    or-int/2addr v0, v1

    .line 397
    goto :goto_0
.end method

.method close()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    goto :goto_0
.end method

.method contains(I)Z
    .locals 1
    .param p1, "stackBoxId"    # I

    .prologue
    .line 122
    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 447
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 448
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    const-string v0, " mVertical="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 450
    const-string v0, " layoutNeeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFirst="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 454
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSecond="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v1, p1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 165
    :goto_0
    return-object v1

    .line 159
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 162
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method getStackId()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 250
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v0

    goto :goto_0
.end method

.method isDimming()Z
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    .line 415
    :goto_0
    return v0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v0

    .line 414
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v1

    or-int/2addr v0, v1

    .line 415
    goto :goto_0
.end method

.method isFirstChild()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeDirty()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->makeDirty()V

    .line 114
    :cond_0
    return-void
.end method

.method remove()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 256
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 258
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)V

    .line 262
    const/4 v2, 0x0

    .line 281
    :goto_0
    return v2

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 266
    .local v1, "sibling":Lcom/android/server/wm/StackBox;
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 267
    .local v0, "grandparent":Lcom/android/server/wm/StackBox;
    iput-object v0, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 268
    if-nez v0, :cond_2

    .line 271
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)V

    .line 272
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1, v4}, Lcom/android/server/wm/DisplayContent;->addStackBox(Lcom/android/server/wm/StackBox;Z)V

    .line 281
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v2

    goto :goto_0

    .line 265
    .end local v0    # "grandparent":Lcom/android/server/wm/StackBox;
    .end local v1    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_1

    .line 275
    .restart local v0    # "grandparent":Lcom/android/server/wm/StackBox;
    .restart local v1    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_2

    .line 278
    :cond_3
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    goto :goto_2
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    goto :goto_0
.end method

.method resetDimming()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    goto :goto_0
.end method

.method resize(IF)Z
    .locals 2
    .param p1, "stackBoxId"    # I
    .param p2, "weight"    # F

    .prologue
    const/4 v0, 0x1

    .line 285
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v1, p1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :cond_2
    iput p2, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_0
.end method

.method setStackBoxSizes(Landroid/graphics/Rect;Z)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "underStatusBar"    # Z

    .prologue
    const/4 v5, 0x0

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "change":Z
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    if-eq v6, p2, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 339
    iput-boolean p2, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    .line 341
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_3

    .line 342
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    or-int/2addr v0, v5

    .line 343
    if-eqz v0, :cond_2

    .line 344
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 345
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Z)V

    .line 379
    :cond_2
    :goto_0
    return v0

    .line 348
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 349
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v6, :cond_4

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 351
    .local v3, "height":I
    int-to-float v6, v3

    iget v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 352
    .local v1, "firstHeight":I
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 353
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 354
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 355
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 356
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 360
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 364
    .end local v1    # "firstHeight":I
    .end local v3    # "height":I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 365
    .local v4, "width":I
    int-to-float v5, v4

    iget v6, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 366
    .local v2, "firstWidth":I
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 367
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 368
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 369
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 370
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 374
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method split(IIIF)Lcom/android/server/wm/TaskStack;
    .locals 8
    .param p1, "stackId"    # I
    .param p2, "relativeStackBoxId"    # I
    .param p3, "position"    # I
    .param p4, "weight"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 179
    iget v4, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v4, p2, :cond_2

    .line 181
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 242
    :cond_0
    :goto_0
    return-object v2

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 186
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_0

    .line 189
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_0

    .line 193
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    new-instance v2, Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v4, p1, v5}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 196
    .restart local v2    # "stack":Lcom/android/server/wm/TaskStack;
    if-nez p3, :cond_4

    .line 198
    const/4 p3, 0x2

    .line 203
    :cond_3
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 207
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 208
    const/4 v4, 0x2

    if-ne p3, v4, :cond_5

    .line 209
    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 210
    move-object v0, v2

    .line 211
    .local v0, "firstStack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 233
    .local v1, "secondStack":Lcom/android/server/wm/TaskStack;
    :goto_2
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 234
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v4, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 235
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v0, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 237
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 238
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v4, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 239
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 241
    iput-object v3, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    .line 199
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :cond_4
    if-ne p3, v7, :cond_3

    .line 201
    const/4 p3, 0x3

    goto :goto_1

    .line 213
    :cond_5
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 215
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    move-object v1, v2

    .line 217
    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 220
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 221
    const/4 v4, 0x4

    if-ne p3, v4, :cond_6

    .line 222
    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 223
    move-object v0, v2

    .line 224
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 226
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :cond_6
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 228
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    move-object v1, v2

    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method stackIdFromPoint(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    const/4 v0, -0x1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    .line 140
    .local v0, "stackId":I
    if-gez v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 424
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    goto :goto_0
.end method

.method public swapTaskStack()Z
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 323
    const/4 v1, 0x0

    .line 328
    :goto_0
    return v1

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 326
    .local v0, "tmpBox":Lcom/android/server/wm/StackBox;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 327
    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 328
    const/4 v1, 0x1

    goto :goto_0
.end method

.method switchUserStacks(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->switchUser(I)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
