.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;
.super Ljava/lang/Thread;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dnsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    .line 3578
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    .prologue
    .line 3578
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3583
    :try_start_0
    const-string v3, "www.baidu.com"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3596
    :cond_0
    :goto_0
    return-void

    .line 3584
    :catch_0
    move-exception v1

    .line 3585
    .local v1, "e":Ljava/net/UnknownHostException;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3587
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3588
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_0

    .line 3589
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v4, 0x42018

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3590
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 3591
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 3592
    const-string v3, "cleanupAfterDnsException"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3593
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
