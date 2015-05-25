.class Lcom/android/server/wm/WindowManagerService$Injector;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation build Landroid/annotation/CoolLifeHook;
    value = .enum Landroid/annotation/CoolLifeHook$CoolLifeHookType;->NEW_CLASS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findTopWindow(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;
    .locals 9
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v8, -0x1

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .local v5, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .local v2, "numWindows":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "winNdx":I
    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .local v3, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_2

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x63

    if-gt v6, v7, :cond_2

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v6, v8, :cond_0

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v8, :cond_1

    :cond_0
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    instance-of v6, v6, Landroid/view/IApplicationToken;

    if-eqz v6, :cond_2

    .end local v2    # "numWindows":I
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    :goto_2
    return-object v3

    .restart local v2    # "numWindows":I
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    .restart local v4    # "winNdx":I
    .restart local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "numWindows":I
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method static hideFloatingWindow(Lcom/android/server/wm/WindowManagerService;)V
    .locals 9
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService$Injector;->findTopWindow(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .local v3, "topWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v6

    .local v6, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .local v2, "numWindows":I
    add-int/lit8 v5, v2, -0x1

    .local v5, "winNdx":I
    :goto_1
    if-ltz v5, :cond_2

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .local v4, "w":Lcom/android/server/wm/WindowState;
    if-ne v4, v3, :cond_3

    invoke-static {p0, v4}, Lcom/android/server/wm/WindowManagerService$Injector;->showWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v4    # "w":Lcom/android/server/wm/WindowState;
    :cond_3
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v7, :cond_4

    iget-boolean v7, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v7, :cond_4

    iget-boolean v7, v4, Lcom/android/server/wm/WindowState;->mFloatingWindowAllowed:Z

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_5
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v7, :cond_4

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_4

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mUid:I

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mUid:I

    if-eq v7, v8, :cond_7

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d5

    if-ne v7, v8, :cond_6

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    instance-of v7, v7, Landroid/view/IApplicationToken;

    if-nez v7, :cond_7

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7ee

    if-eq v7, v8, :cond_7

    const-string v7, "com.sohu.sohuvideo"

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {p0, v4}, Lcom/android/server/wm/WindowManagerService$Injector;->hideWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    goto :goto_2

    :cond_7
    invoke-static {p0, v4}, Lcom/android/server/wm/WindowManagerService$Injector;->showWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    goto :goto_2
.end method

.method static hideWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mFloatWinHidden:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mFloatWinHidden:Z

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannelSaved:Landroid/view/InputChannel;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService$Injector;->saveFloatingWindowState(Lcom/android/server/wm/WindowState;)V

    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, v1}, Lcom/android/server/wm/WindowManagerService$Injector;->hideWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static isFloatingWindowAllowed(II)Z
    .locals 2
    .param p0, "uid"    # I
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "isAllowed":Z
    const/4 v1, 0x1

    return v1
.end method

.method static restoreFloatingWindowState(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mFloatWinHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttrFlagsSaved:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttrFlagsSaved:Z

    :cond_0
    return-void
.end method

.method static saveFloatingWindowState(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mFloatWinHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttrFlagsSaved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttrFlagsSaved:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    return-void
.end method

.method static showWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mFloatWinHidden:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService$Injector;->restoreFloatingWindowState(Lcom/android/server/wm/WindowState;)V

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mFloatWinHidden:Z

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannelSaved:Landroid/view/InputChannel;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, v1}, Lcom/android/server/wm/WindowManagerService$Injector;->showWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static updateFocusAndLayout(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 2
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .local v0, "nextAppTransition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
