.class Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;
.super Landroid/database/ContentObserver;
.source "HideNavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HideNavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SysDefaultHideObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/HideNavController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HideNavController;)V
    .locals 1

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    .line 397
    # getter for: Lcom/android/internal/policy/impl/HideNavController;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/internal/policy/impl/HideNavController;->access$600(Lcom/android/internal/policy/impl/HideNavController;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 398
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->updateSettings()I

    move-result v0

    return v0
.end method

.method private updateSettings()I
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    # getter for: Lcom/android/internal/policy/impl/HideNavController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HideNavController;->access$700(Lcom/android/internal/policy/impl/HideNavController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_hide_navigation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 410
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 411
    iget-object v1, p0, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->updateSettings()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HideNavController;->mSysDefaultHide:Z

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HideNavController;->mSysDefaultHide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    # invokes: Lcom/android/internal/policy/impl/HideNavController;->hideNavigationBarLw()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/HideNavController;->access$000(Lcom/android/internal/policy/impl/HideNavController;)V

    .line 415
    :cond_0
    return-void

    .line 411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerContentObserver()V
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    # getter for: Lcom/android/internal/policy/impl/HideNavController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HideNavController;->access$700(Lcom/android/internal/policy/impl/HideNavController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_hide_navigation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 402
    return-void
.end method
