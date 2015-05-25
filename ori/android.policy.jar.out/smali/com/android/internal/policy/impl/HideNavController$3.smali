.class Lcom/android/internal/policy/impl/HideNavController$3;
.super Landroid/content/BroadcastReceiver;
.source "HideNavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HideNavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/HideNavController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HideNavController;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/impl/HideNavController$3;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$3;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HideNavController;->mSysDefaultHide:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$3;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$3;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    # getter for: Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HideNavController;->access$200(Lcom/android/internal/policy/impl/HideNavController;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/HideNavController$3;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    # getter for: Lcom/android/internal/policy/impl/HideNavController;->mClearHideNavigationFlag:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HideNavController;->access$100(Lcom/android/internal/policy/impl/HideNavController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$3;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    # getter for: Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HideNavController;->access$200(Lcom/android/internal/policy/impl/HideNavController;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$3;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/HideNavController;->setNavigationState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/HideNavController;->access$300(Lcom/android/internal/policy/impl/HideNavController;I)V

    .line 131
    :cond_0
    return-void
.end method
