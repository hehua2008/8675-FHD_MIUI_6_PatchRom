.class Lcom/android/server/wifi/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 650
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, v1, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 653
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v0, v0, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiService;->mConnectProcessName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiService;->access$502(Lcom/android/server/wifi/WifiService;Ljava/lang/String;)Ljava/lang/String;

    .line 657
    :cond_0
    return-void
.end method
