.class Lcom/android/internal/policy/impl/HideNavController$2;
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
    .line 114
    iput-object p1, p0, Lcom/android/internal/policy/impl/HideNavController$2;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    if-eqz p2, :cond_1

    const-string v0, "hideNavigationBar"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$2;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HideNavController;->mUserForceHide:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/HideNavController$2;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    # invokes: Lcom/android/internal/policy/impl/HideNavController;->hideNavigationBarLw()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/HideNavController;->access$000(Lcom/android/internal/policy/impl/HideNavController;)V

    goto :goto_0
.end method
