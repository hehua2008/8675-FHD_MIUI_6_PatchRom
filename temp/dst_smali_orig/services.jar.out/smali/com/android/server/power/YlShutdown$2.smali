.class final Lcom/android/server/power/YlShutdown$2;
.super Ljava/lang/Thread;
.source "YlShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/YlShutdown;->shutRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(J[Z)V
    .locals 0

    .prologue
    iput-wide p1, p0, Lcom/android/server/power/YlShutdown$2;->val$endTime:J

    iput-object p3, p0, Lcom/android/server/power/YlShutdown$2;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "nfc"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v6

    .local v6, "nfc":Landroid/nfc/INfcAdapter;
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->get_TelePhoneService()Ljava/lang/Object;

    move-result-object v0

    .local v0, "ITelephony":Ljava/lang/Object;
    const-string v11, "bluetooth_manager"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .local v2, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v11

    if-ne v11, v9, :cond_5

    :cond_0
    move v7, v9

    .local v7, "nfcOff":Z
    :goto_0
    if-nez v7, :cond_1

    const-string v11, "ShutdownThread"

    const-string v12, "Turning off NFC..."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v6, v11}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_2
    move v3, v9

    .local v3, "bluetoothOff":Z
    :goto_2
    if-nez v3, :cond_3

    const-string v11, "ShutdownThread"

    const-string v12, "Disabling Bluetooth..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    const/4 v8, 0x1

    .local v8, "radioOff":Z
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->TelephonyManager_getPhoneCount()I

    move-result v1

    .local v1, "PhoneCount":I
    const-string v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TelephonyManager_getPhoneCount :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v1, :cond_8

    if-eqz v8, :cond_7

    invoke-static {v0, v5}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_isRadioOnOnSubscription(Ljava/lang/Object;I)Z

    move-result v11

    if-nez v11, :cond_7

    move v8, v9

    :goto_5
    invoke-static {v0, v5}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_isRadioOnOnSubscription(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Turning off radio on Subscription :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v10, v5}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_setRadioOnSubscription(Ljava/lang/Object;ZI)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v1    # "PhoneCount":I
    .end local v3    # "bluetoothOff":Z
    .end local v5    # "i":I
    .end local v7    # "nfcOff":Z
    .end local v8    # "radioOff":Z
    :cond_5
    move v7, v10

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during NFC shutdown"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x1

    .restart local v7    # "nfcOff":Z
    goto :goto_1

    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_6
    move v3, v10

    goto :goto_2

    :catch_1
    move-exception v4

    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during bluetooth shutdown"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x1

    .restart local v3    # "bluetoothOff":Z
    goto :goto_3

    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "PhoneCount":I
    .restart local v5    # "i":I
    .restart local v8    # "radioOff":Z
    :cond_7
    move v8, v10

    goto :goto_5

    .end local v1    # "PhoneCount":I
    .end local v5    # "i":I
    :cond_8
    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/android/server/power/YlShutdown;->shutTelephony(Ljava/lang/Object;)V

    :cond_9
    const-string v11, "sys.radio.shutdown"

    const-string v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "ShutdownThread"

    const-string v12, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/server/power/YlShutdown$2;->val$endTime:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_d

    if-nez v3, :cond_a

    :try_start_2
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    if-nez v11, :cond_e

    move v3, v9

    :goto_7
    if-eqz v3, :cond_a

    const-string v11, "ShutdownThread"

    const-string v12, "Bluetooth turned off."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-nez v8, :cond_b

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_isRadioOn(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    move v8, v9

    :goto_8
    if-eqz v8, :cond_b

    const-string v11, "ShutdownThread"

    const-string v12, "Radio turned off."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-nez v7, :cond_c

    :try_start_3
    invoke-interface {v6}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v11

    if-ne v11, v9, :cond_10

    move v7, v9

    :goto_9
    if-eqz v8, :cond_c

    const-string v11, "ShutdownThread"

    const-string v12, "NFC turned off."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v8, :cond_11

    if-eqz v3, :cond_11

    if-eqz v7, :cond_11

    const-string v11, "ShutdownThread"

    const-string v12, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/power/YlShutdown$2;->val$done:[Z

    aput-boolean v9, v11, v10

    :cond_d
    return-void

    :cond_e
    move v3, v10

    goto :goto_7

    :catch_2
    move-exception v4

    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during bluetooth shutdown"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x1

    goto :goto_7

    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_f
    move v8, v10

    goto :goto_8

    :cond_10
    move v7, v10

    goto :goto_9

    :catch_3
    move-exception v4

    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during NFC shutdown"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x1

    goto :goto_9

    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_11
    const-wide/16 v11, 0x1f4

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_6
.end method
