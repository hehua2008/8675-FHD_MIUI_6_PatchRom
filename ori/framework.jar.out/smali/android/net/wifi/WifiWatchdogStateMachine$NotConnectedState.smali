.class Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 887
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 888
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-wide/16 v1, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4102(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 889
    return-void
.end method
