.class Lcom/android/server/BatteryService$2;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 441
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, " shutdownIfNoPowerLocked charing : shutdown when batterylevel less-then 2 && voltage less-then 3.35V "

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/BatteryService;->shutdownConfirm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;Z)V

    .line 445
    :cond_0
    return-void
.end method
