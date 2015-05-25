.class public Lcom/android/server/DriveModeContentObserver;
.super Landroid/database/ContentObserver;
.source "DriveModeContentObserver.java"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mBTHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Lcom/android/server/DriveModeContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/DriveModeContentObserver$1;-><init>(Lcom/android/server/DriveModeContentObserver;)V

    iput-object v0, p0, Lcom/android/server/DriveModeContentObserver;->mBTHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/DriveModeContentObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/DriveModeContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DriveModeContentObserver;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DriveModeContentObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/DriveModeContentObserver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method


# virtual methods
.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "Telecom"

    const-string v2, "Cmcc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/DriveModeContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v4, -0x1

    .local v4, "valueZero":I
    const/4 v2, -0x1

    .local v2, "shuldCloseBt":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DriveModeContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "drive_mode_switch_key"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/DriveModeContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "drive_mode_auto_link_bluetooth_key"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, "value":I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DriveModeContentObserver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v5, "DriveModeContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@add by bin@ valueZero "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAdapter : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/DriveModeContentObserver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v8, :cond_3

    const-string v5, "DriveModeContentObserver"

    const-string v6, "Current Drive mode change to open !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/DriveModeContentObserver;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "DriveModeContentObserver"

    const-string v6, "airplane is on , do not open bt"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "value":I
    :cond_0
    :goto_0
    return-void

    .restart local v3    # "value":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/DriveModeContentObserver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/DriveModeContentObserver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "DriveModeContentObserver"

    const-string v6, "handleMessage bluetooth had enable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v8, :cond_0

    iget-object v5, p0, Lcom/android/server/DriveModeContentObserver;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "yulong.intent.action.CAR_MODE_HAD_STARTED_BT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v5, "DriveModeContentObserver"

    const-string v6, "send yulong.intent.action.CAR_MODE_HAD_STARTED_BT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "value":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "value":I
    :cond_2
    if-ne v3, v8, :cond_0

    :try_start_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/server/DriveModeContentObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    const-string v5, "DriveModeContentObserver"

    const-string v6, "Current Drive mode change to close!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/DriveModeContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "drive_mode_auto_close_bluetooth_key"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/DriveModeContentObserver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_0

    if-ne v2, v8, :cond_0

    iget-object v5, p0, Lcom/android/server/DriveModeContentObserver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
