.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;
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
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setRetryOnScreenOff(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v3, 0x42003

    const-string v4, "ScreenOn"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
