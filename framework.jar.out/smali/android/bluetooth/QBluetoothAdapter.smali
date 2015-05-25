.class public final Landroid/bluetooth/QBluetoothAdapter;
.super Ljava/lang/Object;
.source "QBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;,
        Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;,
        Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ADV_ENABLE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.ADV_ENABLE_CHANGED"

.field public static final ACTION_BLE_CONN_PARAMS:Ljava/lang/String; = "android.bluetooth.adapter.action.ACTION_BLE_CONN_PARAMS"

.field public static final ADV_DIR_CONNECTABLE:I = 0x1b

.field public static final ADV_IND_GENERAL_CONNECTABLE:I = 0x19

.field public static final ADV_IND_LIMITED_CONNECTABLE:I = 0x1a

.field public static final ADV_MODE_NONE:I = 0x18

.field private static final BT_LE_EXTENDED_SCAN_PROP:Ljava/lang/String; = "ro.q.bluetooth.le.extendedscan"

.field private static final DBG:Z = false

.field public static final EXTRA_ADV_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.extra.ADV_ENABLE"

.field public static final EXTRA_CONN_INTERVAL_MAX:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONN_INTERVAL_MAX"

.field public static final EXTRA_CONN_INTERVAL_MIN:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONN_INTERVAL_MIN"

.field public static final EXTRA_CONN_LATENCY:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONN_LATENCY"

.field public static final EXTRA_EVENT:Ljava/lang/String; = "android.bluetooth.adpater.extra.EVENT"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATUS"

.field public static final EXTRA_SUPERVISION_TIMEOUT:Ljava/lang/String; = "android.bluetooth.adapter.extra.SUPERVISION_TIMEOUT"

.field private static final MAX_LE_EXTENDED_SCAN_FILTER_ENTRIES:I = 0x80

.field private static final TAG:Ljava/lang/String; = "QBluetoothAdapter"

.field private static final VDBG:Z

.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sAdapter:Landroid/bluetooth/QBluetoothAdapter;


# instance fields
.field private final mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private mLeExtendedScanFlag:Z

.field private mLeScanClient:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mLppClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;",
            "Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private mQService:Landroid/bluetooth/IQBluetooth;

.field private final mScanLock:Ljava/lang/Object;

.field private mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 5
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeExtendedScanFlag:Z

    .line 160
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    .line 161
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mScanLock:Ljava/lang/Object;

    .line 163
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    .line 788
    new-instance v2, Landroid/bluetooth/QBluetoothAdapter$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/QBluetoothAdapter$1;-><init>(Landroid/bluetooth/QBluetoothAdapter;)V

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 807
    new-instance v2, Landroid/bluetooth/QBluetoothAdapter$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/QBluetoothAdapter$2;-><init>(Landroid/bluetooth/QBluetoothAdapter;)V

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 183
    if-nez p1, :cond_0

    .line 184
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bluetooth manager service is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_0
    :try_start_0
    sget-object v2, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    .line 190
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    invoke-interface {p1, v2}, Landroid/bluetooth/IBluetoothManager;->registerQAdapter(Landroid/bluetooth/IQBluetoothManagerCallback;)Landroid/bluetooth/IQBluetooth;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    .line 191
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mQService= :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 195
    const-string/jumbo v2, "ro.q.bluetooth.le.extendedscan"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 197
    const-string v2, "QBluetoothAdapter"

    const-string v3, "cannot read property ro.q.bluetooth.le.extendedscan"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeExtendedScanFlag:Z

    .line 205
    return-void

    .line 192
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "property ro.q.bluetooth.le.extendedscanvalue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 73
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetooth;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;)Landroid/bluetooth/IQBluetooth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/IQBluetooth;

    .prologue
    .line 73
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetoothManagerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    return-object v0
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/QBluetoothAdapter;
    .locals 3

    .prologue
    .line 173
    const-class v2, Landroid/bluetooth/QBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 174
    sget-object v1, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 175
    .local v0, "managerService":Landroid/bluetooth/IBluetoothManager;
    new-instance v1, Landroid/bluetooth/QBluetoothAdapter;

    invoke-direct {v1, v0}, Landroid/bluetooth/QBluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v1, Landroid/bluetooth/QBluetoothAdapter;->sAdapter:Landroid/bluetooth/QBluetoothAdapter;

    .line 176
    sget-object v1, Landroid/bluetooth/QBluetoothAdapter;->sAdapter:Landroid/bluetooth/QBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public enableRssiMonitor(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Z)Z
    .locals 4
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    .param p2, "enable"    # Z

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 506
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    move-object v1, v0

    .line 507
    monitor-exit v3

    .line 508
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 511
    :goto_0
    return v2

    .line 507
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 510
    :cond_0
    invoke-virtual {v1, p2}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->enableMonitor(Z)V

    .line 511
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 559
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterQAdapter(Landroid/bluetooth/IQBluetoothManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 565
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getLEAdvMode()I
    .locals 4

    .prologue
    const/16 v1, 0x18

    .line 213
    sget-object v2, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 219
    :goto_0
    return v1

    .line 215
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IQBluetooth;->getLEAdvMode()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 217
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readRssiThreshold(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;)Z
    .locals 4
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    .prologue
    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 527
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    move-object v1, v0

    .line 528
    monitor-exit v3

    .line 529
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 532
    :goto_0
    return v2

    .line 528
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 531
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->readRssiThreshold()V

    .line 532
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "add"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 445
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 446
    if-eqz p3, :cond_2

    .line 447
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    const-string v2, "QBluetoothAdapter"

    const-string v4, "Lpp Client has been already registered"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    monitor-exit v3

    .line 464
    :goto_0
    return v1

    .line 452
    :cond_0
    new-instance v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-direct {v0, p0, v4, p2, p1}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;-><init>(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;Ljava/lang/String;Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;)V

    .line 453
    .local v0, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->register2(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 454
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 457
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 466
    .end local v0    # "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 459
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    .line 460
    .restart local v0    # "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    if-eqz v0, :cond_3

    .line 461
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->register2(Z)Z

    .line 462
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 464
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public sendLEConnUpdate(Landroid/bluetooth/BluetoothDevice;IIII)Z
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "interval_min"    # I
    .param p3, "interval_max"    # I
    .param p4, "latency"    # I
    .param p5, "supervisionTimeout"    # I

    .prologue
    const/4 v7, 0x0

    .line 543
    sget-object v0, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    move v0, v7

    .line 554
    :goto_0
    return v0

    .line 545
    :cond_0
    const-string v0, "QBluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QBluetooth adapter, sendLEConnUpdate interval_min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max interval_max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "latency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supervisionTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :try_start_0
    iget-object v8, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    monitor-enter v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IQBluetooth;->sendLEConnUpdate(Landroid/bluetooth/BluetoothDevice;IIII)Z

    move-result v0

    monitor-exit v8

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 553
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "QBluetoothAdapter"

    const-string/jumbo v1, "sendLEConnUpdate"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    move v0, v7

    .line 554
    goto :goto_0

    .line 552
    :cond_1
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setLEAdvMask(ZZZZZ)Z
    .locals 9
    .param p1, "bLocalName"    # Z
    .param p2, "bServices"    # Z
    .param p3, "bTxPower"    # Z
    .param p4, "bManuData"    # Z
    .param p5, "ServiceData"    # Z

    .prologue
    const/4 v7, 0x0

    .line 312
    sget-object v0, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    move v0, v7

    .line 319
    :goto_0
    return v0

    .line 313
    :cond_0
    const-string v0, "QBluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QBluetooth adapter, setLEAdvMask calling service method blocalname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bServices:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bTxPower:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bManuData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :try_start_0
    iget-object v8, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    monitor-enter v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IQBluetooth;->setLEAdvMask(ZZZZZ)Z

    move-result v0

    monitor-exit v8

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 318
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "QBluetoothAdapter"

    const-string v1, ""

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    move v0, v7

    .line 319
    goto :goto_0

    .line 317
    :cond_1
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setLEAdvMode(I)Z
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 228
    sget-object v2, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 238
    :goto_0
    return v1

    .line 230
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    if-eqz v2, :cond_1

    .line 233
    const-string v2, "QBluetoothAdapter"

    const-string/jumbo v4, "setLEAdvMode gng to call set LE adv mode Q"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IQBluetooth;->setLEAdvMode(I)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 236
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 237
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLEAdvParams(II)Z
    .locals 5
    .param p1, "min_int"    # I
    .param p2, "max_int"    # I

    .prologue
    .line 265
    sget-object v2, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 269
    :goto_0
    return v2

    .line 266
    :cond_0
    const/4 v0, 0x0

    .line 267
    .local v0, "ad_type":I
    const-string v1, "00:00:00:00:00:00"

    .line 268
    .local v1, "address":Ljava/lang/String;
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QBluetooth adapter, setLEAdvParams min_int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max int:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ad_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/bluetooth/QBluetoothAdapter;->setLEAdvParams(IILjava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method public setLEAdvParams(IILjava/lang/String;I)Z
    .locals 5
    .param p1, "min_int"    # I
    .param p2, "max_int"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "ad_type"    # I

    .prologue
    const/4 v1, 0x0

    .line 247
    sget-object v2, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 255
    :goto_0
    return v1

    .line 248
    :cond_0
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QBluetooth adapter, setLEAdvParams calling service method min_int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max int:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ad_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/bluetooth/IQBluetooth;->setLEAdvParams(IILjava/lang/String;I)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 253
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLEManuData([B)Z
    .locals 5
    .param p1, "manuData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 279
    sget-object v2, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 286
    :goto_0
    return v1

    .line 280
    :cond_0
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QBluetooth adapter, setLEManuData calling service method manu_data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IQBluetooth;->setLEManuData([B)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 284
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLEScanRespMask(ZZZZ)Z
    .locals 5
    .param p1, "bLocalName"    # Z
    .param p2, "bServices"    # Z
    .param p3, "bTxPower"    # Z
    .param p4, "bManuData"    # Z

    .prologue
    const/4 v1, 0x0

    .line 329
    sget-object v2, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 336
    :goto_0
    return v1

    .line 330
    :cond_0
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QBluetooth adapter, setLEScanRespMask calling service method blocalname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bServices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bTxPower:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bManuData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/bluetooth/IQBluetooth;->setLEScanRespMask(ZZZZ)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 334
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 335
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLEServiceData([B)Z
    .locals 5
    .param p1, "serviceData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 295
    sget-object v2, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 302
    :goto_0
    return v1

    .line 296
    :cond_0
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QBluetooth adapter, setLEServiceData calling service method setLEServiceData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IQBluetooth;->setLEServiceData([B)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 300
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startLeScanEx([Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 4
    .param p1, "serviceUuids"    # [Landroid/bluetooth/BluetoothLEServiceUuid;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-boolean v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeExtendedScanFlag:Z

    if-nez v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v1

    .line 369
    :cond_1
    if-eqz p2, :cond_0

    .line 375
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    array-length v2, p1

    const/16 v3, 0x80

    if-gt v2, v3, :cond_0

    .line 383
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mScanLock:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    if-eqz v3, :cond_3

    .line 386
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    .line 388
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 391
    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    if-nez v3, :cond_4

    .line 393
    monitor-exit v2

    goto :goto_0

    .line 396
    :cond_4
    new-instance v0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-direct {v0, p0, v3, p1, p2}, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;-><init>(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;[Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 397
    .local v0, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->startScan()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 398
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    .line 399
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    if-nez v3, :cond_5

    .line 401
    invoke-virtual {v0}, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->stopScan()V

    .line 402
    monitor-exit v2

    goto :goto_0

    .line 404
    :cond_5
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 408
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopLeScanEx(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 421
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mScanLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 423
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;

    .line 424
    .local v0, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->stopScan()V

    .line 427
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    .line 429
    .end local v0    # "wrapper":Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;
    :cond_1
    monitor-exit v2

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeRssiThreshold(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;II)Z
    .locals 4
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 483
    .local v1, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 484
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    move-object v1, v0

    .line 485
    monitor-exit v3

    .line 486
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 489
    :goto_0
    return v2

    .line 485
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 488
    :cond_0
    int-to-byte v2, p2

    int-to-byte v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->writeRssiThreshold(BB)V

    .line 489
    const/4 v2, 0x1

    goto :goto_0
.end method
