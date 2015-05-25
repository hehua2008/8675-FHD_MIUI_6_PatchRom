.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$2;
.super Ljava/lang/Thread;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    .line 388
    monitor-exit v1

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
