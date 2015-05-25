.class Lcom/android/server/ylWatchdog$ScreenOffReceiver$1;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog$ScreenOffReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ylWatchdog$ScreenOffReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog$ScreenOffReceiver;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/server/ylWatchdog$ScreenOffReceiver$1;->this$1:Lcom/android/server/ylWatchdog$ScreenOffReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 828
    monitor-enter p0

    .line 830
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ylWatchdog$ScreenOffReceiver$1;->this$1:Lcom/android/server/ylWatchdog$ScreenOffReceiver;

    iget-object v0, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    # invokes: Lcom/android/server/ylWatchdog;->processScreenOffFunc()V
    invoke-static {v0}, Lcom/android/server/ylWatchdog;->access$500(Lcom/android/server/ylWatchdog;)V

    .line 831
    monitor-exit p0

    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
