.class Lcom/android/server/am/MultiWindowManagerService$1;
.super Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowManagerService;->initSwitchObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;-><init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public notifyOnChange(Ljava/lang/String;)V
    .locals 5
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/MultiWindowManagerService;->stringToInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, "state":I
    const-string v2, "ActivityManager_MultiWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWStarter state changed. New state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.yulong.android.mwstarter.StarterService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onInit(Ljava/lang/String;)V
    .locals 6
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/MultiWindowManagerService;->stringToInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, "state":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/yulong/android/reflect/YLReflect;->SystemManager_init(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/yulong/android/reflect/YLReflect;->SystemManager_getCurrentModel(Ljava/lang/Object;)I

    move-result v0

    .local v0, "mSceneModeType":I
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/MultiWindowManagerService$1$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/MultiWindowManagerService$1$1;-><init>(Lcom/android/server/am/MultiWindowManagerService$1;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "mSceneModeType":I
    :cond_0
    return-void
.end method
