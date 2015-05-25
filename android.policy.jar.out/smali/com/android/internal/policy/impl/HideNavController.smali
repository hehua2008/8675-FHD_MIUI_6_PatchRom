.class public Lcom/android/internal/policy/impl/HideNavController;
.super Ljava/lang/Object;
.source "HideNavController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;,
        Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;
    }
.end annotation


# static fields
.field private static final DEBUG_AUTO_HIDE_NAV:Z = false

.field private static final DEFAULT_HIDE:I = 0x1

.field private static final DEFAULT_HIDE_NAV:Ljava/lang/String; = "default_hide_navigation"

.field private static final DEFAULT_SHOW:I = 0x0

.field private static final FLAG_APP_DEFAULT_HIDE_NAVIGATION:I = 0x20

.field private static final FLAG_AUTO_HIDE_NAVIGATION:I = 0x10

.field private static final HIED_NAVIGATION_ACTION:Ljava/lang/String; = "com.yulong.navigationbar.statuschange"

.field private static final HOME_START_ACTION:Ljava/lang/String; = "com.android.yulong.home.start"

.field private static final NAV_BAR_STATE:Ljava/lang/String; = "navigation_bar_state"

.field private static final NAV_HIDE:I = 0x0

.field private static final NAV_SHOW:I = 0x1

.field private static final SWIPE_DISTANCE_HRESHOLD:I = 0x14

.field private static final TAG:Ljava/lang/String; = "PhoneWindowManager"


# instance fields
.field mAppDefaultHide:Z

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideNavigationReceiver:Landroid/content/BroadcastReceiver;

.field private mHomeStartReceiver:Landroid/content/BroadcastReceiver;

.field private mLastFakeWindowMode:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

.field private mNavState:I

.field private final mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private final mShowNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mSysDefaultHide:Z

.field private mSysDefaultHideObserver:Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;

.field mUserForceHide:Z

.field mUserForceShow:Z

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "mClearHideNavigationFlag"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mSysDefaultHide:Z

    .line 61
    iput-object v3, p0, Lcom/android/internal/policy/impl/HideNavController;->mSysDefaultHideObserver:Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;

    .line 63
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mAppDefaultHide:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceShow:Z

    .line 83
    iput-object v3, p0, Lcom/android/internal/policy/impl/HideNavController;->mLastFakeWindowMode:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    .line 85
    new-instance v2, Lcom/android/internal/policy/impl/HideNavController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/HideNavController$1;-><init>(Lcom/android/internal/policy/impl/HideNavController;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v2, Lcom/android/internal/policy/impl/HideNavController$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/HideNavController$2;-><init>(Lcom/android/internal/policy/impl/HideNavController;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mHideNavigationReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance v2, Lcom/android/internal/policy/impl/HideNavController$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/HideNavController$3;-><init>(Lcom/android/internal/policy/impl/HideNavController;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mHomeStartReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    new-instance v2, Lcom/android/internal/policy/impl/HideNavController$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/HideNavController$4;-><init>(Lcom/android/internal/policy/impl/HideNavController;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mShowNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 94
    iput-object p1, p0, Lcom/android/internal/policy/impl/HideNavController;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 96
    iput-object p3, p0, Lcom/android/internal/policy/impl/HideNavController;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 97
    iget-object v2, p2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iput-object v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, "hideFilter":Landroid/content/IntentFilter;
    const-string v2, "com.yulong.navigationbar.statuschange"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mHideNavigationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v1, "homeStartFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.yulong.home.start"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mHomeStartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/HideNavController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HideNavController;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HideNavController;->hideNavigationBarLw()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/HideNavController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HideNavController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/HideNavController;)Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HideNavController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/HideNavController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HideNavController;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HideNavController;->setNavigationState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/HideNavController;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HideNavController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/HideNavController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HideNavController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/HideNavController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HideNavController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAutoHideNavigationFlag(I)I
    .locals 2
    .param p1, "vis"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HideNavController;->hasAutoHideNavigationFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p1

    .line 190
    .end local p1    # "vis":I
    .local v0, "vis":I
    :goto_0
    return v0

    .line 188
    .end local v0    # "vis":I
    .restart local p1    # "vis":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v0, p1

    .end local p1    # "vis":I
    .restart local v0    # "vis":I
    goto :goto_0

    .line 189
    .end local v0    # "vis":I
    .restart local p1    # "vis":I
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    move v0, p1

    .end local p1    # "vis":I
    .restart local v0    # "vis":I
    goto :goto_0

    .line 190
    .end local v0    # "vis":I
    .restart local p1    # "vis":I
    :cond_2
    or-int/lit8 p1, p1, 0x10

    move v0, p1

    .end local p1    # "vis":I
    .restart local v0    # "vis":I
    goto :goto_0
.end method

.method private dismissHideNavFakeWindow()Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasAppDefaultHideFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 179
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasAutoHideNavigationFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 175
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideNavigationBarLw()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 136
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/HideNavController;->setNavigationState(I)V

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isLastDefaultHideApp()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/HideNavController;->hasAppDefaultHideFlag(I)Z

    move-result v0

    return v0
.end method

.method private isNavigationHide()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mAppDefaultHide:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNavigationState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 109
    iget v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mNavState:I

    if-ne v0, p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/HideNavController;->mNavState:I

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method adjustInputMethodWindowFramesLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 172
    return-void
.end method

.method adjustTmpNavigationFrameLw(ZLandroid/graphics/Rect;II)V
    .locals 1
    .param p1, "onBottom"    # Z
    .param p2, "outFrame"    # Landroid/graphics/Rect;
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HideNavController;->isNavigationHide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    if-eqz p1, :cond_1

    .line 162
    iput p4, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 164
    :cond_1
    iput p3, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method checkIsAppDefaultHide()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HideNavController;->isLastDefaultHideApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceShow:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mAppDefaultHide:Z

    .line 332
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    if-nez v0, :cond_0

    .line 333
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mAppDefaultHide:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/HideNavController;->setNavigationState(I)V

    .line 335
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 327
    goto :goto_0

    .line 329
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mAppDefaultHide:Z

    .line 330
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceShow:Z

    goto :goto_1

    :cond_3
    move v2, v1

    .line 333
    goto :goto_2
.end method

.method initState(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    .line 145
    new-instance v0, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;-><init>(Lcom/android/internal/policy/impl/HideNavController;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mSysDefaultHideObserver:Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mSysDefaultHideObserver:Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->registerContentObserver()V

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mSysDefaultHideObserver:Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;

    # invokes: Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->updateSettings()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;->access$400(Lcom/android/internal/policy/impl/HideNavController$SysDefaultHideObserver;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mSysDefaultHide:Z

    .line 148
    const-string v0, "navigation_bar_state"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mNavState:I

    .line 150
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mSysDefaultHide:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mNavState:I

    if-nez v0, :cond_1

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HideNavController;->hideNavigationBarLw()V

    .line 153
    :cond_1
    return-void

    .line 147
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateFakeWindow(IZZ)V
    .locals 13
    .param p1, "sysui"    # I
    .param p2, "navVisible"    # Z
    .param p3, "navAllowedHidden"    # Z

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v10

    .line 244
    .local v10, "keyguardOn":Z
    if-eqz v10, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    and-int/2addr v10, v0

    .line 263
    :cond_0
    const/4 v11, 0x0

    .line 264
    .local v11, "update":Z
    const/4 v2, 0x0

    .line 265
    .local v2, "receiverFactory":Landroid/view/InputEventReceiver$Factory;
    const/4 v5, 0x0

    .line 267
    .local v5, "layoutParamsFlags":I
    if-nez v10, :cond_2

    if-nez p2, :cond_2

    .line 268
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HideNavController;->hasAutoHideNavigationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mLastFakeWindowMode:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mLastFakeWindowMode:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    sget-object v1, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->FULL:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    if-ne v0, v1, :cond_2

    .line 272
    :cond_1
    const/4 v11, 0x1

    .line 273
    sget-object v0, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->EDGE:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mLastFakeWindowMode:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/HideNavController;->mShowNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 275
    const/16 v5, 0x20

    .line 291
    :cond_2
    :goto_1
    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    if-eqz v0, :cond_4

    :cond_3
    if-nez v10, :cond_4

    if-eqz v11, :cond_5

    .line 293
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HideNavController;->dismissHideNavFakeWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    :cond_5
    if-eqz v11, :cond_6

    .line 316
    iget-object v12, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v3, "hidden nav"

    const/16 v4, 0x7e6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v0 .. v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v0

    iput-object v0, v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 322
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HideNavController;->checkIsAppDefaultHide()V

    .line 323
    return-void

    .line 245
    .end local v2    # "receiverFactory":Landroid/view/InputEventReceiver$Factory;
    .end local v5    # "layoutParamsFlags":I
    .end local v11    # "update":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 278
    .restart local v2    # "receiverFactory":Landroid/view/InputEventReceiver$Factory;
    .restart local v5    # "layoutParamsFlags":I
    .restart local v11    # "update":Z
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mLastFakeWindowMode:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mLastFakeWindowMode:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    sget-object v1, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->EDGE:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    if-ne v0, v1, :cond_2

    .line 281
    :cond_9
    if-nez p3, :cond_2

    .line 282
    const/4 v11, 0x1

    .line 283
    sget-object v0, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->FULL:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mLastFakeWindowMode:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mPolicy:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 285
    const/4 v5, 0x0

    goto :goto_1
.end method

.method updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I

    .prologue
    .line 194
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_1

    .line 195
    or-int/lit8 p2, p2, 0x12

    .line 227
    :cond_0
    :goto_0
    return p2

    .line 196
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_4

    .line 197
    or-int/lit8 p2, p2, 0x10

    .line 198
    and-int/lit8 p2, p2, -0x21

    .line 199
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    if-eqz v0, :cond_2

    .line 200
    or-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 202
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mAppDefaultHide:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceShow:Z

    if-nez v0, :cond_3

    .line 203
    or-int/lit8 p2, p2, 0x20

    .line 204
    or-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 206
    :cond_3
    and-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 210
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/HideNavController;->addAutoHideNavigationFlag(I)I

    move-result p2

    .line 211
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/HideNavController;->hasAutoHideNavigationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    if-eqz v0, :cond_5

    .line 213
    or-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 215
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/HideNavController;->hasAppDefaultHideFlag(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 216
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceShow:Z

    if-eqz v0, :cond_6

    .line 217
    and-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 219
    :cond_6
    or-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 222
    :cond_7
    and-int/lit8 p2, p2, -0x3

    goto :goto_0
.end method
