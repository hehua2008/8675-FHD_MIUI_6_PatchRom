.class Lcom/android/server/wm/WindowStateAnimator$Injector;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation build Landroid/annotation/CoolLifeHook;
    value = .enum Landroid/annotation/CoolLifeHook$CoolLifeHookType;->NEW_CLASS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowStateAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static showSurface(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mFloatWinHidden:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 67
    :cond_0
    return-void
.end method
