.class Lcom/android/internal/policy/impl/GlobalActions$16;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1882
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1883
    .local v0, "action":Ljava/lang/String;
    const-string v1, "yulong.intent.action.MULTIUSER_SWITCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1884
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->multiUserSwitch:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$2202(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 1885
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 1887
    :cond_0
    return-void
.end method
