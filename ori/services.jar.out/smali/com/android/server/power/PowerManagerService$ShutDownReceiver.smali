.class final Lcom/android/server/power/PowerManagerService$ShutDownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutDownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ShutDownReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3399
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$ShutDownReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 3404
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ShutDownReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->isSmartStay:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3405
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ShutDownReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->checkFaceSmartStayStop()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)V

    .line 3408
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ShutDownReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/power/PowerManagerService;->shutdown(ZZ)V

    .line 3409
    const-string v0, "PowerManagerService"

    const-string v1, "ShutDownReceiver/shutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    return-void
.end method
