.class Lcom/android/server/AlarmManagerService$ClockReceiver$1;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$ClockReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$ClockReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$ClockReceiver;)V
    .locals 0

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1672
    const-string v0, "AlarmManagerService"

    const-string v1, "TimeTickEvent timeout, recover it"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ClockReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$ClockReceiver;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1675
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ClockReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1676
    return-void
.end method
