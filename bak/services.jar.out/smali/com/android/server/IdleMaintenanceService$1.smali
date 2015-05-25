.class Lcom/android/server/IdleMaintenanceService$1;
.super Ljava/lang/Thread;
.source "IdleMaintenanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/IdleMaintenanceService;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IdleMaintenanceService;


# direct methods
.method constructor <init>(Lcom/android/server/IdleMaintenanceService;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/server/IdleMaintenanceService$1;->this$0:Lcom/android/server/IdleMaintenanceService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService$1;->this$0:Lcom/android/server/IdleMaintenanceService;

    # invokes: Lcom/android/server/IdleMaintenanceService;->processScreenOnReceiveFunc()V
    invoke-static {v0}, Lcom/android/server/IdleMaintenanceService;->access$000(Lcom/android/server/IdleMaintenanceService;)V

    .line 323
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
