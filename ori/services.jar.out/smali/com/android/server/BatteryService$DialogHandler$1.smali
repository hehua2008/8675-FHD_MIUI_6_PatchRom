.class Lcom/android/server/BatteryService$DialogHandler$1;
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
    .line 1446
    iput-object p1, p0, Lcom/android/server/BatteryService$DialogHandler$1;->this$1:Lcom/android/server/BatteryService$DialogHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/server/BatteryService$DialogHandler$1;->this$1:Lcom/android/server/BatteryService$DialogHandler;

    iget-object v0, v0, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/BatteryService;->mShowShutdownDialog:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$702(Lcom/android/server/BatteryService;Z)Z

    .line 1453
    return-void
.end method
