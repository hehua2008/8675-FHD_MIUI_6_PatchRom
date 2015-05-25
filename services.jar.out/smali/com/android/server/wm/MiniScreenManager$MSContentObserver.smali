.class Lcom/android/server/wm/MiniScreenManager$MSContentObserver;
.super Landroid/database/ContentObserver;
.source "MiniScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiniScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSContentObserver"
.end annotation


# instance fields
.field private settingsOpen:I

.field final synthetic this$0:Lcom/android/server/wm/MiniScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MiniScreenManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    .line 336
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 337
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x1

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wm/MiniScreenManager;->access$2000(Lcom/android/server/wm/MiniScreenManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isShrinkageScreen"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->settingsOpen:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    iget v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->settingsOpen:I

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/server/wm/MiniScreenManager;->access$2100(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v1

    if-nez v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;
    invoke-static {v1}, Lcom/android/server/wm/MiniScreenManager;->access$2200(Lcom/android/server/wm/MiniScreenManager;)Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    new-instance v2, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    iget-object v3, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;-><init>(Lcom/android/server/wm/MiniScreenManager;Lcom/android/server/wm/MiniScreenManager$1;)V

    # setter for: Lcom/android/server/wm/MiniScreenManager;->mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;
    invoke-static {v1, v2}, Lcom/android/server/wm/MiniScreenManager;->access$2202(Lcom/android/server/wm/MiniScreenManager;Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;)Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MiniScreenManager;->access$100(Lcom/android/server/wm/MiniScreenManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;
    invoke-static {v2}, Lcom/android/server/wm/MiniScreenManager;->access$2200(Lcom/android/server/wm/MiniScreenManager;)Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 353
    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/wm/MiniScreenManager;->access$1900(Lcom/android/server/wm/MiniScreenManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniScreen-Settings Open, then start the service"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 368
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;
    invoke-static {v1}, Lcom/android/server/wm/MiniScreenManager;->access$2200(Lcom/android/server/wm/MiniScreenManager;)Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MiniScreenManager;->access$100(Lcom/android/server/wm/MiniScreenManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;
    invoke-static {v2}, Lcom/android/server/wm/MiniScreenManager;->access$2200(Lcom/android/server/wm/MiniScreenManager;)Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/wm/MiniScreenManager;->access$1900(Lcom/android/server/wm/MiniScreenManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 363
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniScreen-Settings Close, then stop the service"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
