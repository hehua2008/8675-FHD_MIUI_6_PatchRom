.class Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "HideNavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HideNavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowNavInputEventReceiver"
.end annotation


# instance fields
.field downX:F

.field downY:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/HideNavController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HideNavController;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/16 v6, 0x14

    const/4 v7, 0x0

    :try_start_0
    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v1, v0

    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->downX:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->downY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v7}, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    .restart local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .local v3, "y":F
    iget v4, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->downX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    if-gt v4, v6, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->downY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    if-le v4, v6, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    # getter for: Lcom/android/internal/policy/impl/HideNavController;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v4}, Lcom/android/internal/policy/impl/HideNavController;->access$500(Lcom/android/internal/policy/impl/HideNavController;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    # getter for: Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/HideNavController;->access$200(Lcom/android/internal/policy/impl/HideNavController;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    const/4 v6, 0x1

    # invokes: Lcom/android/internal/policy/impl/HideNavController;->setNavigationState(I)V
    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/HideNavController;->access$300(Lcom/android/internal/policy/impl/HideNavController;I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/internal/policy/impl/HideNavController;->mUserForceShow:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    # getter for: Lcom/android/internal/policy/impl/HideNavController;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v4}, Lcom/android/internal/policy/impl/HideNavController;->access$500(Lcom/android/internal/policy/impl/HideNavController;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "x":F
    .end local v3    # "y":F
    :catchall_1
    move-exception v4

    invoke-virtual {p0, p1, v7}, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v4
.end method
