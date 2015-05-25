.class Lcom/android/server/am/ActivityManagerService$19;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->registerSceneModeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 10116
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 10119
    const-string v1, "com.yulong.android.scenemode.SCENE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10120
    const-string v1, "sceneModeType"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 10121
    .local v0, "scenemode":I
    const-string v1, "ActivityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSceneModeReceiver scenemode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; m_SceneType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/am/ActivityManagerService;->m_SceneType:I
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$1300()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10122
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    # getter for: Lcom/android/server/am/ActivityManagerService;->m_SceneType:I
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$1300()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 10123
    const/4 v1, 0x1

    # setter for: Lcom/android/server/am/ActivityManagerService;->m_IsOldManChanged:Z
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$1402(Z)Z

    .line 10125
    :cond_0
    # setter for: Lcom/android/server/am/ActivityManagerService;->m_SceneType:I
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1302(I)I

    .line 10127
    .end local v0    # "scenemode":I
    :cond_1
    return-void
.end method
