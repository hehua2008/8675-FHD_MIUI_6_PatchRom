.class Lcom/android/server/ylWatchdog$ScreenOnReceiver$1;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog$ScreenOnReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ylWatchdog$ScreenOnReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog$ScreenOnReceiver;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/server/ylWatchdog$ScreenOnReceiver$1;->this$1:Lcom/android/server/ylWatchdog$ScreenOnReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 871
    monitor-enter p0

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ylWatchdog$ScreenOnReceiver$1;->this$1:Lcom/android/server/ylWatchdog$ScreenOnReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$ScreenOnReceiver;->this$0:Lcom/android/server/ylWatchdog;

    # invokes: Lcom/android/server/ylWatchdog;->processScreenOnReceiverFunc()V
    invoke-static {v0}, Lcom/android/server/ylWatchdog;->access$600(Lcom/android/server/ylWatchdog;)V

    .line 873
    monitor-exit p0

    return-void

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
