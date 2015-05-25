.class Lcom/android/server/BatteryService$DialogHandler$2;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$DialogHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$DialogHandler;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$DialogHandler;)V
    .locals 0

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/android/server/BatteryService$DialogHandler$2;->this$1:Lcom/android/server/BatteryService$DialogHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 1434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1439
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1440
    iget-object v1, p0, Lcom/android/server/BatteryService$DialogHandler$2;->this$1:Lcom/android/server/BatteryService$DialogHandler;

    iget-object v1, v1, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1441
    iget-object v1, p0, Lcom/android/server/BatteryService$DialogHandler$2;->this$1:Lcom/android/server/BatteryService$DialogHandler;

    iget-object v1, v1, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mShowShutdownDialog:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$702(Lcom/android/server/BatteryService;Z)Z

    .line 1442
    return-void
.end method
