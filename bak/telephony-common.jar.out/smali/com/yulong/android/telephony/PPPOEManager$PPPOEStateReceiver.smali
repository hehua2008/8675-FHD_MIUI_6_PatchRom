.class Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PPPOEManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/PPPOEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPPOEStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/PPPOEManager;


# direct methods
.method private constructor <init>(Lcom/yulong/android/telephony/PPPOEManager;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;->this$0:Lcom/yulong/android/telephony/PPPOEManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yulong/android/telephony/PPPOEManager;Lcom/yulong/android/telephony/PPPOEManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yulong/android/telephony/PPPOEManager;
    .param p2, "x1"    # Lcom/yulong/android/telephony/PPPOEManager$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;-><init>(Lcom/yulong/android/telephony/PPPOEManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x5dc

    const/4 v4, 0x1

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yulong.intent.action.START_PPPOE_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "pppoe"

    const-string v3, "~~~~ PPPOEManager intent.getAction().equals(ACTION_PPPOE_START_SERVICE) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Lcom/yulong/android/telephony/PPPOEConfig;

    invoke-direct {v1}, Lcom/yulong/android/telephony/PPPOEConfig;-><init>()V

    .line 89
    .local v1, "pppoeConfig":Lcom/yulong/android/telephony/PPPOEConfig;
    const-string v2, "username"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yulong/android/telephony/PPPOEConfig;->username:Ljava/lang/String;

    .line 90
    const-string v2, "password"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yulong/android/telephony/PPPOEConfig;->password:Ljava/lang/String;

    .line 91
    const-string v2, "interf"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yulong/android/telephony/PPPOEConfig;->interf:Ljava/lang/String;

    .line 92
    const-string v2, "lcp_echo_interval"

    const/4 v3, 0x3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yulong/android/telephony/PPPOEConfig;->lcp_echo_interval:I

    .line 93
    const-string v2, "lcp_echo_failure"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yulong/android/telephony/PPPOEConfig;->lcp_echo_failure:I

    .line 94
    const-string v2, "mtu"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yulong/android/telephony/PPPOEConfig;->mtu:I

    .line 95
    const-string v2, "mru"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yulong/android/telephony/PPPOEConfig;->mru:I

    .line 96
    const-string v2, "timeout"

    const/16 v3, 0x3e8

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yulong/android/telephony/PPPOEConfig;->timeout:I

    .line 97
    const-string v2, "MSS"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yulong/android/telephony/PPPOEConfig;->MSS:I

    .line 98
    const-string v2, "pppoe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*****pppoeConfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/yulong/android/telephony/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/yulong/android/telephony/PPPOEConfig;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/yulong/android/telephony/PPPOEConfig;->interf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/yulong/android/telephony/PPPOEConfig;->lcp_echo_interval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/yulong/android/telephony/PPPOEConfig;->mru:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/yulong/android/telephony/PPPOEConfig;->timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v2, p0, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;->this$0:Lcom/yulong/android/telephony/PPPOEManager;

    invoke-virtual {v2, v1}, Lcom/yulong/android/telephony/PPPOEManager;->startPppoe(Lcom/yulong/android/telephony/PPPOEConfig;)V

    .line 116
    .end local v1    # "pppoeConfig":Lcom/yulong/android/telephony/PPPOEConfig;
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yulong.intent.action.STOP_PPPOE_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;->this$0:Lcom/yulong/android/telephony/PPPOEManager;

    invoke-virtual {v2}, Lcom/yulong/android/telephony/PPPOEManager;->stopPppoe()V

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yulong.intent.action.ACTION_PPPOE_SEND_PPPOEINFO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;->this$0:Lcom/yulong/android/telephony/PPPOEManager;

    invoke-virtual {v2}, Lcom/yulong/android/telephony/PPPOEManager;->getPppoeInfo()Lcom/yulong/android/telephony/PPPOEInfo;

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.ACTION_PPPOE_GET_PPPOEINFO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;->this$0:Lcom/yulong/android/telephony/PPPOEManager;

    iget-object v2, v2, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    iget-object v2, v2, Lcom/yulong/android/telephony/PPPOEInfo;->status:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    sget-object v3, Lcom/yulong/android/telephony/PPPOEInfo$Status;->OFFLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    if-ne v2, v3, :cond_4

    .line 108
    const-string v2, "status"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    :cond_3
    :goto_1
    const-string v2, "online_time"

    iget-object v3, p0, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;->this$0:Lcom/yulong/android/telephony/PPPOEManager;

    iget-object v3, v3, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    iget-wide v3, v3, Lcom/yulong/android/telephony/PPPOEInfo;->online_time:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 109
    :cond_4
    iget-object v2, p0, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;->this$0:Lcom/yulong/android/telephony/PPPOEManager;

    iget-object v2, v2, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    iget-object v2, v2, Lcom/yulong/android/telephony/PPPOEInfo;->status:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    sget-object v3, Lcom/yulong/android/telephony/PPPOEInfo$Status;->CONNECTING:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    if-ne v2, v3, :cond_5

    .line 110
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 111
    :cond_5
    iget-object v2, p0, Lcom/yulong/android/telephony/PPPOEManager$PPPOEStateReceiver;->this$0:Lcom/yulong/android/telephony/PPPOEManager;

    iget-object v2, v2, Lcom/yulong/android/telephony/PPPOEManager;->mPppoeInfo:Lcom/yulong/android/telephony/PPPOEInfo;

    iget-object v2, v2, Lcom/yulong/android/telephony/PPPOEInfo;->status:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    sget-object v3, Lcom/yulong/android/telephony/PPPOEInfo$Status;->ONLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    if-ne v2, v3, :cond_3

    .line 112
    const-string v2, "status"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method
