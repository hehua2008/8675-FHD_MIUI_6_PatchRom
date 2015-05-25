.class Lcom/android/server/am/MultiWindowManagerService$1$1;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowManagerService$1;->onInit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MultiWindowManagerService$1;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService$1;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$1$1;->this$1:Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    const-string v1, "ActivityManager_MultiWindow"

    const-string v2, "start  MWStarter"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.mwstarter.StarterService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$1$1;->this$1:Lcom/android/server/am/MultiWindowManagerService$1;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 221
    return-void
.end method
