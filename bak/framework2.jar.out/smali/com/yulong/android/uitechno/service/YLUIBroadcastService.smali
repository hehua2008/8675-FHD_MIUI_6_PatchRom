.class Lcom/yulong/android/uitechno/service/YLUIBroadcastService;
.super Lcom/yulong/android/uitechno/service/BService;
.source "UitechnoService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "uitechnoService.YLUIBroadcastService"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1701
    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/BService;-><init>(Landroid/content/Context;)V

    .line 1702
    return-void
.end method


# virtual methods
.method onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1734
    const/4 v0, 0x0

    return v0
.end method

.method systemReady()V
    .locals 11

    .prologue
    .line 1704
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1705
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1706
    invoke-static {}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->getInstance()Lcom/yulong/android/uitechno/service/YLUIPropertyService;

    move-result-object v8

    const-string v9, ""

    const-string v10, "receiveBroadcast"

    invoke-virtual {v8, v9, v10}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1707
    .local v4, "intentStr":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1708
    const-string v4, ""

    .line 1710
    :cond_0
    const-string v8, "uitechnoService.YLUIBroadcastService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receiveBroadcasts == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1712
    .local v6, "packageNameArray":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_2

    .line 1713
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v7, v0, v3

    .line 1714
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1713
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1716
    .end local v7    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIBroadcastService$1;

    invoke-direct {v1, p0}, Lcom/yulong/android/uitechno/service/YLUIBroadcastService$1;-><init>(Lcom/yulong/android/uitechno/service/YLUIBroadcastService;)V

    .line 1730
    .local v1, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v8, p0, Lcom/yulong/android/uitechno/service/YLUIBroadcastService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1732
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method
