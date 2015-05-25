.class Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver$1;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;)V
    .locals 0

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1460
    monitor-enter p0

    .line 1464
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver$1;->this$1:Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;

    iget-object v1, v1, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 1466
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1467
    monitor-exit p0

    .line 1472
    :goto_0
    return-void

    .line 1470
    :cond_0
    const-string v0, "service.ylkeydb.cmd"

    const-string v1, "backup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string v0, "ctl.start"

    const-string v1, "ylkeydb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    monitor-exit p0

    goto :goto_0

    .line 1476
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
