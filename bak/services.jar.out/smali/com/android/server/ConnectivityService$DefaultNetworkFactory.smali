.class Lcom/android/server/ConnectivityService$DefaultNetworkFactory;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Lcom/android/server/ConnectivityService$NetworkFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrackerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackerHandler"    # Landroid/os/Handler;

    .prologue
    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    .line 846
    iput-object p2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    .line 847
    return-void
.end method


# virtual methods
.method public createTracker(ILandroid/net/NetworkConfig;)[Landroid/net/NetworkStateTracker;
    .locals 6
    .param p1, "targetNetworkType"    # I
    .param p2, "config"    # Landroid/net/NetworkConfig;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 851
    iget v1, p2, Landroid/net/NetworkConfig;->radio:I

    packed-switch v1, :pswitch_data_0

    .line 869
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to create a NetworkStateTracker for an unknown radio type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 853
    :pswitch_1
    new-array v0, v3, [Landroid/net/NetworkStateTracker;

    new-instance v1, Landroid/net/wifi/WifiStateTracker;

    iget-object v2, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    .line 867
    :goto_0
    return-object v0

    .line 855
    :pswitch_2
    new-array v0, v5, [Landroid/net/NetworkStateTracker;

    .line 856
    .local v0, "nst":[Landroid/net/NetworkStateTracker;
    new-instance v1, Landroid/net/MobileDataStateTracker;

    iget-object v2, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v4

    .line 857
    new-instance v1, Landroid/net/MobileDataStateTracker;

    iget-object v2, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v5}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v3

    goto :goto_0

    .line 861
    .end local v0    # "nst":[Landroid/net/NetworkStateTracker;
    :pswitch_3
    new-array v0, v3, [Landroid/net/NetworkStateTracker;

    new-instance v1, Landroid/net/DummyDataStateTracker;

    iget-object v2, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    goto :goto_0

    .line 863
    :pswitch_4
    new-array v0, v3, [Landroid/net/NetworkStateTracker;

    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 865
    :pswitch_5
    new-array v0, v3, [Landroid/net/NetworkStateTracker;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    # invokes: Lcom/android/server/ConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$500(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 867
    :pswitch_6
    new-array v0, v3, [Landroid/net/NetworkStateTracker;

    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
