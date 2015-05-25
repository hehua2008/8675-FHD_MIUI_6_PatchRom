.class Lcom/android/server/wifi/WifiService$PPPOEStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPPOEStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$PPPOEStateReceiver;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiService;Lcom/android/server/wifi/WifiService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiService$1;

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService$PPPOEStateReceiver;-><init>(Lcom/android/server/wifi/WifiService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 707
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yulong.intent.action.ACTION_PPPOE_GET_PPPOEINFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$PPPOEStateReceiver;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v0, v0, Lcom/android/server/wifi/WifiService;->mPppoeinfo:Landroid/net/wifi/PPPOEInfo;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 715
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$PPPOEStateReceiver;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v0, v0, Lcom/android/server/wifi/WifiService;->mPppoeinfo:Landroid/net/wifi/PPPOEInfo;

    const-string v1, "online_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 717
    :cond_1
    return-void

    .line 710
    :cond_2
    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 711
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$PPPOEStateReceiver;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v0, v0, Lcom/android/server/wifi/WifiService;->mPppoeinfo:Landroid/net/wifi/PPPOEInfo;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    goto :goto_0

    .line 712
    :cond_3
    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$PPPOEStateReceiver;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v0, v0, Lcom/android/server/wifi/WifiService;->mPppoeinfo:Landroid/net/wifi/PPPOEInfo;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    goto :goto_0
.end method
