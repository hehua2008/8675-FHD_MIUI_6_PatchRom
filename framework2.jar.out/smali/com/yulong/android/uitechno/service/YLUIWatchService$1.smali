.class Lcom/yulong/android/uitechno/service/YLUIWatchService$1;
.super Landroid/content/BroadcastReceiver;
.source "UitechnoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/uitechno/service/YLUIWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/uitechno/service/YLUIWatchService;


# direct methods
.method constructor <init>(Lcom/yulong/android/uitechno/service/YLUIWatchService;)V
    .locals 0

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$1;->this$0:Lcom/yulong/android/uitechno/service/YLUIWatchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1486
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$1;->this$0:Lcom/yulong/android/uitechno/service/YLUIWatchService;

    invoke-virtual {v0, p2}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->dealWatchEvent(Landroid/content/Intent;)V

    .line 1489
    :cond_0
    return-void
.end method
