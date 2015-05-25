.class final Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PersistentWatchStartReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mPersistentWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 399
    iget-object v0, p0, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    # invokes: Lcom/android/server/ylWatchdog;->isDataServiceWorking()Z
    invoke-static {v0}, Lcom/android/server/ylWatchdog;->access$100(Lcom/android/server/ylWatchdog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "ylWatchdog"

    const-string v1, "MorningWatchStartReceiver, The alarm is cancelled for the data service is active"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return-void

    .line 403
    :cond_0
    new-instance v0, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver$1;-><init>(Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/ylWatchdog$PersistentWatchStartReceiver$1;->start()V

    goto :goto_0
.end method
