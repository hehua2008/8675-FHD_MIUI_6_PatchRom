.class public Lcom/android/server/am/MultiWindowManagerService;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;,
        Lcom/android/server/am/MultiWindowManagerService$MultiWindowManagerServiceHandler;
    }
.end annotation


# static fields
.field private static final COMPATIBLE_DB_KEY:Ljava/lang/String; = "MW_CompatibleApps"

.field static final DEBUG_MULTIWINDOW:Z = true

.field private static final FIRST_MULTIWINDOW_MSG:I = 0x1335128

.field private static final FULLSCREEN_DB_KEY:Ljava/lang/String; = "MW_FullSrceenApps"

.field private static final HIDEFLOATBTN_DB_KEY:Ljava/lang/String; = "MW_HideFloatBtnAPPs"

.field private static final LISTENER_TIMEOUT:I = 0x2710

.field private static final LISTENER_TIMEOUT_MSG:I = 0x1335129

.field private static final MWSTARTER_INTENT:Ljava/lang/String; = "com.yulong.android.mwstarter.StarterService"

.field private static final MWSTARTER_PKG_NAME:Ljava/lang/String; = "com.yulong.android.mwstarter"

.field private static final MW_OFF:I = 0x0

.field private static final MW_ON:I = 0x1

.field private static final MW_SIDEBAR:I = 0x2

.field private static final SWITCH_DB_KEY:Ljava/lang/String; = "isMultiwindow"

.field static final TAG_AMS:Ljava/lang/String; = "ActivityManager_MultiWindow"

.field static final TAG_WMS:Ljava/lang/String; = "WindowManager_MultiWindow"


# instance fields
.field private mCompatibleObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

.field final mContext:Landroid/content/Context;

.field private mFullScreenObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

.field final mHandler:Landroid/os/Handler;

.field private mHideFloatBtnObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

.field final mResolver:Landroid/content/ContentResolver;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mSwitchObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowManagerServiceHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowManagerServiceHandler;-><init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->updateAppList(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private stringToList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    :cond_0
    return-object v5

    :cond_1
    const-string v6, "\\|"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "items":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateAppList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->stringToList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public initCompatibleObserver()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$2;

    const-string v1, "MW_CompatibleApps"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiWindowManagerService$2;-><init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCompatibleObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    return-void
.end method

.method public initFullScreenObserver()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$3;

    const-string v1, "MW_FullSrceenApps"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiWindowManagerService$3;-><init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFullScreenObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    return-void
.end method

.method public initHideFloatBtnObserver()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$4;

    const-string v1, "MW_HideFloatBtnAPPs"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiWindowManagerService$4;-><init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHideFloatBtnObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    return-void
.end method

.method public initSettingsObserver()V
    .locals 8

    .prologue
    const/16 v6, 0x64

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "isMultiwindow"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "iTmp_init":I
    if-ne v6, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "isMultiwindow"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "MW_CompatibleApps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "strTmp_init1":Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "MW_CompatibleApps"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "MW_FullSrceenApps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "strTmp_init2":Ljava/lang/String;
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "MW_FullSrceenApps"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "MW_HideFloatBtnAPPs"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "strTmp_init3":Ljava/lang/String;
    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "MW_HideFloatBtnAPPs"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->initSwitchObserver()V

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->initCompatibleObserver()V

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->initFullScreenObserver()V

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->initHideFloatBtnObserver()V

    return-void
.end method

.method public initSwitchObserver()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$1;

    const-string v1, "isMultiwindow"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSwitchObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSwitchObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->registerContentObserver()V

    return-void
.end method

.method public registerAppListChangeListener()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCompatibleObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->registerContentObserver()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFullScreenObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->registerContentObserver()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHideFloatBtnObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->registerContentObserver()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Landroid/os/Handler;

    const v1, 0x1335129

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public restartImmediatelyIfNeed(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.yulong.android.mwstarter"

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .local v1, "restart":Z
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSwitchObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    # invokes: Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->updateSettings()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->access$000(Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->stringToInt(Ljava/lang/String;I)I

    move-result v2

    .local v2, "state":I
    const-string v3, "ActivityManager_MultiWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MWStarter died, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.yulong.android.mwstarter.StarterService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->mMultiwinMode:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public stringToInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public unregisterAppListChangeListener(Z)V
    .locals 2
    .param p1, "all"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Landroid/os/Handler;

    const v1, 0x1335129

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCompatibleObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCompatibleObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFullScreenObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mFullScreenObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHideFloatBtnObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHideFloatBtnObserver:Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method
