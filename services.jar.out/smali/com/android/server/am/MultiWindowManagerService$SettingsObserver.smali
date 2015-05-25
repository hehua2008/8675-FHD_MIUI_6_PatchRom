.class abstract Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    .line 305
    iget-object v0, p1, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 306
    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->name:Ljava/lang/String;

    .line 307
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->updateSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->onInit(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->updateSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateSettings()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract notifyOnChange(Ljava/lang/String;)V
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 324
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->updateSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->notifyOnChange(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public abstract onInit(Ljava/lang/String;)V
.end method

.method public registerContentObserver()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 315
    return-void
.end method
