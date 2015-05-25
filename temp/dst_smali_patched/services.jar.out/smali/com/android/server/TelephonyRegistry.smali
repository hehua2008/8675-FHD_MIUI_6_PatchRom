.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PHONE_STATE_PERMISSION_MASK:I = 0x8ec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"


# instance fields
.field private final SUBSCRIPTION:Ljava/lang/String;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:Z

.field private mCallForwarding2:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallIncomingNumber2:Ljava/lang/String;

.field private mCallState:I

.field private mCallState2:I

.field private mCellInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellInfo2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellLocation:Landroid/os/Bundle;

.field private mCellLocation2:Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedApns2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataActivity2:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionApn2:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkCapabilities2:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionLinkProperties2:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionNetworkType2:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionPossible2:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionReason2:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mDataConnectionState2:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:Z

.field private mMessageWaiting2:Z

.field private mOtaspMode:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mServiceState2:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrength2:Landroid/telephony/SignalStrength;

.field private mTRSlotCardInfos:[Lcom/yulong/android/internal/telephony/SlotCardInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    const-string v1, "SUBSCRIPTION"

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->SUBSCRIPTION:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    iput v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iput v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible2:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason2:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn2:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Ljava/util/List;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mTRSlotCardInfos:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    new-instance v1, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    .local v0, "location":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TelephonyRegistry;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualCallStateChanged(ILjava/lang/String;I)V

    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "subscription"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    if-nez p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v3, "SUBSCRIPTION"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .locals 10
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "roaming"    # Z

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V

    return-void
.end method

.method private broadcastDualCallStateChanged(ILjava/lang/String;I)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    const/high16 v7, 0x20000000

    const-string v4, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "broadcastCallStateChanged: state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",incomingNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v4

    if-ne p3, v4, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    if-nez p1, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "incoming_number"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DUAL_PHONE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intentDual":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "incoming_number"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v4, "phoneIdKey"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    .end local v3    # "intentDual":Landroid/content/Intent;
    .restart local v0    # "ident":J
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private broadcastDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneIdKey"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastDualDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "phoneIdKey"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_0

    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p6, :cond_2

    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastDualServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 9
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneId"    # I

    .prologue
    const/high16 v8, 0x20000000

    const-string v5, "TelephonyRegistry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastServiceStateChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v5

    if-ne p2, v5, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v1    # "ident":J
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "yulong.intent.action.DUAL_SERVICE_STATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intentDual":Landroid/content/Intent;
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v5, "phoneIdKey"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .end local v4    # "intentDual":Landroid/content/Intent;
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private broadcastDualSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 8
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneId"    # I

    .prologue
    const/high16 v7, 0x20000000

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v5

    if-ne v5, p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SIG_STR"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v1    # "ident":J
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "yulong.intent.action.DUAL_SIG_STR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intentDual":Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v5, "phoneIdKey"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .end local v4    # "intentDual":Landroid/content/Intent;
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualServiceStateChanged(Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subscription"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "SUBSCRIPTION"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "subscription"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "SUBSCRIPTION"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .param p1, "events"    # I

    .prologue
    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    and-int/lit16 v0, p1, 0x8ec

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TelephonyRegistry"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "recordCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendCellInfo(Lcom/android/server/TelephonyRegistry$Record;Ljava/util/List;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/TelephonyRegistry$Record;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualCellInfo(Lcom/android/server/TelephonyRegistry$Record;Ljava/util/List;I)V

    return-void
.end method

.method private sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "cellLocation"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    return-void
.end method

.method private sendDualCellInfo(Lcom/android/server/TelephonyRegistry$Record;Ljava/util/List;I)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/TelephonyRegistry$Record;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v0, p2, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellInfoChanged(Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method private sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "cellLocation"    # Landroid/os/Bundle;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellLocationChanged(Landroid/os/Bundle;I)V

    :cond_1
    return-void
.end method

.method private sendDualSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDualSignalStrength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v1

    if-ne p3, v1, :cond_0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_0

    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "sState":Ljava/lang/String;
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDualSignalStrength SimCard state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .end local v0    # "sState":Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v1, :cond_1

    const-string v1, "cdma.ruim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "sState":Ljava/lang/String;
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDualSignalStrength RuimCard state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    .end local v0    # "sState":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private sendSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V

    return-void
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "callingIdentity":J
    const/4 v3, 0x0

    .local v3, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .local v2, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    if-ne v4, v2, :cond_0

    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v4, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateEventsAndUserLocked: valid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " r.callerUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " foregroundUser="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " r.events="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " events="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .end local v2    # "foregroundUser":I
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "recordCount":I
    const-string v3, "last known state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallIncomingNumber="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mServiceState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSignalStrength="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMessageWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallForwarding="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionPossible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionReason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionApn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkProperties="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellLocation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellInfo="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registrations: count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "recordCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "recordCount":I
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 15
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .local v3, "callerUid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .local v7, "myUid":I
    const-string v11, "TelephonyRegistry"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "listen: E pkg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " events=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " myUid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " callerUid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_18

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v12

    const/4 v8, 0x0

    .local v8, "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .local v2, "b":Landroid/os/IBinder;
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    move-object v9, v8

    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .local v9, "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v5, v1, :cond_d

    :try_start_1
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v11, :cond_c

    :goto_1
    iget v11, v8, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v11, v11, p3

    and-int v10, p3, v11

    .local v10, "send":I
    move/from16 v0, p3

    iput v0, v8, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_b

    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_0

    :try_start_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_e

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V

    :cond_0
    :goto_2
    and-int/lit8 v11, p3, 0x2

    if-eqz v11, :cond_2

    const/4 v6, -0x1

    .local v6, "iSignalStrength":I
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_f

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v6

    :goto_3
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v13, 0x63

    if-ne v6, v13, :cond_1

    const/4 v6, -0x1

    .end local v6    # "iSignalStrength":I
    :cond_1
    invoke-interface {v11, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V

    :cond_2
    and-int/lit8 v11, p3, 0x4

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_10

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    :cond_3
    :goto_4
    and-int/lit8 v11, p3, 0x8

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_11

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    :cond_4
    :goto_5
    and-int/lit8 v11, p3, 0x10

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_12

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    invoke-direct {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    :cond_5
    :goto_6
    and-int/lit8 v11, p3, 0x20

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_13

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    :cond_6
    :goto_7
    and-int/lit8 v11, p3, 0x40

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_14

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    iget v14, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    :cond_7
    :goto_8
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_15

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    :cond_8
    :goto_9
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_9

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_16

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    :cond_9
    :goto_a
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_a

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V

    :cond_a
    const/16 v11, 0x400

    invoke-direct {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_17

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Ljava/util/List;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_b
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v5    # "i":I
    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v10    # "send":I
    :goto_c
    return-void

    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v5    # "i":I
    .restart local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    move-object v9, v8

    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    :cond_d
    :try_start_5
    new-instance v8, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_6
    iput-object v2, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    iput v3, v8, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, "TelephonyRegistry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "listen: add new record="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v5    # "i":I
    :catchall_0
    move-exception v11

    :goto_d
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v11

    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v5    # "i":I
    .restart local v10    # "send":I
    :cond_e
    :try_start_7
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_8
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_b

    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "iSignalStrength":I
    :cond_f
    :try_start_9
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v6

    goto/16 :goto_3

    .end local v6    # "iSignalStrength":I
    :cond_10
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    goto/16 :goto_4

    :cond_11
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto/16 :goto_5

    :cond_12
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_13
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_14
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v14, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    goto/16 :goto_8

    :cond_15
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    goto/16 :goto_9

    :cond_16
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_a

    :cond_17
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_b

    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v5    # "i":I
    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v10    # "send":I
    :cond_18
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_c

    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v5    # "i":I
    .restart local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_d
.end method

.method public listenDual(Ljava/lang/String;Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;IZ)V
    .locals 14
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "dualCallback"    # Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z

    .prologue
    if-eqz p3, :cond_f

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    const/4 v6, 0x0

    .local v6, "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .local v2, "b":Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v7, v6

    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v4, v1, :cond_e

    :try_start_1
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v9, :cond_d

    :goto_1
    iget v9, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v9, v9, p3

    and-int v8, p3, v9

    .local v8, "send":I
    move/from16 v0, p3

    iput v0, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_c

    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_0

    :try_start_3
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v11, 0x1

    invoke-virtual {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    const/4 v11, 0x2

    invoke-virtual {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    :cond_0
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_3

    const/4 v5, -0x1

    .local v5, "iSignalStrength":I
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v5

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    const/16 v11, 0x63

    if-ne v5, v11, :cond_1

    const/4 v5, -0x1

    .end local v5    # "iSignalStrength":I
    :cond_1
    const/4 v11, 0x1

    invoke-interface {v9, v5, v11}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthChanged(II)V

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    .restart local v5    # "iSignalStrength":I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    const/16 v11, 0x63

    if-ne v5, v11, :cond_2

    const/4 v5, -0x1

    .end local v5    # "iSignalStrength":I
    :cond_2
    const/4 v11, 0x2

    invoke-interface {v9, v5, v11}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthChanged(II)V

    :cond_3
    and-int/lit8 v9, p3, 0x4

    if-eqz v9, :cond_4

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualMessageWaitingIndicatorChanged(ZI)V

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualMessageWaitingIndicatorChanged(ZI)V

    :cond_4
    and-int/lit8 v9, p3, 0x8

    if-eqz v9, :cond_5

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallForwardingIndicatorChanged(ZI)V

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallForwardingIndicatorChanged(ZI)V

    :cond_5
    and-int/lit8 v9, p3, 0x10

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    const/4 v11, 0x1

    invoke-direct {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    const/4 v11, 0x2

    invoke-direct {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    :cond_6
    and-int/lit8 v9, p3, 0x20

    if-eqz v9, :cond_7

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    const/4 v13, 0x2

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V

    :cond_7
    and-int/lit8 v9, p3, 0x40

    if-eqz v9, :cond_8

    const-string v9, "TelephonyRegistry"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDataConnectionState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",mDataConnectionState2:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    const/4 v13, 0x1

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataConnectionStateChanged(III)V

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    const/4 v13, 0x2

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataConnectionStateChanged(III)V

    :cond_8
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_9

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataActivity(II)V

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataActivity(II)V

    :cond_9
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_a

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    :cond_a
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x400

    if-eqz v9, :cond_b

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellInfoChanged(Ljava/util/List;I)V

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Ljava/util/List;

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellInfoChanged(Ljava/util/List;I)V

    :cond_b
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_c

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mTRSlotCardInfos:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-interface {v9, v11}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualNotifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    :goto_2
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "i":I
    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "send":I
    :goto_3
    return-void

    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_d
    add-int/lit8 v4, v4, 0x1

    move-object v7, v6

    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    :cond_e
    :try_start_5
    new-instance v6, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_6
    iput-object v2, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iput-object p1, v6, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "i":I
    :catchall_0
    move-exception v9

    :goto_4
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    .restart local v8    # "send":I
    :catch_0
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_7
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .end local v4    # "i":I
    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "send":I
    :cond_f
    invoke-interface/range {p2 .. p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    .restart local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_4
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCallForwardingChanged(ZI)V

    return-void
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCallState(ILjava/lang/String;I)V

    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCellInfo(Ljava/util/List;I)V

    return-void
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCellLocation(Landroid/os/Bundle;I)V

    return-void
.end method

.method public notifyDataActivity(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualDataActivity(II)V

    return-void
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 12
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z

    .prologue
    :try_start_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v10

    .local v10, "iphoneId":I
    const-string v0, "TelephonyRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDualDataConnection phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->notifyDualDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "iphoneId":I
    :goto_0
    return-void

    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    const-string v0, "TelephonyRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDualDataConnection throw Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDualCallForwardingChanged(ZI)V
    .locals 6
    .param p1, "cfi"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallForwardingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v3

    if-ne p2, v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallForwardingIndicatorChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_3
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDualCallState(ILjava/lang/String;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallState, state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",incomingNumber:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v3, 0x2

    if-ne p3, v3, :cond_3

    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_3
    :try_start_3
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDualCallStateChanged(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDualCellInfo(Ljava/util/List;I)V
    .locals 6
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDualCellInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Ljava/util/List;

    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1

    :try_start_1
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualCellInfo(Lcom/android/server/TelephonyRegistry$Record;Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDualCellLocation(Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "cellLocation"    # Landroid/os/Bundle;
    .param p2, "phoneId"    # I

    .prologue
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    :try_start_1
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDualDataActivity(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "phoneId"    # I

    .prologue
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    :goto_1
    const-string v3, "yulong.data.inorout"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v3

    if-ne p2, v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataActivity(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_3
    :try_start_3
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDualDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V
    .locals 15
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z
    .param p10, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDataConnectivityPossible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' apn=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "TelephonyRegistry"

    const-string v2, "LTE is connected and ignore the DSState change of CDMA. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    const-string v1, "TelephonyRegistry"

    const-string v2, "cdma is connected and ignore the DSState not connect of LTE. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v13, 0x0

    .local v13, "modified":Z
    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_8

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    move/from16 v0, p1

    if-eq v1, v0, :cond_3

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    const/4 v13, 0x1

    :cond_3
    :goto_1
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible2:Z

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason2:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties2:Landroid/net/LinkProperties;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities2:Landroid/net/LinkCapabilities;

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_4

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    const/4 v13, 0x1

    :cond_4
    :goto_2
    if-eqz v13, :cond_e

    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataConnectionStateChanged("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/TelephonyRegistry$Record;

    .local v14, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v14, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v1

    move/from16 v0, p10

    if-ne v0, v1, :cond_6

    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_6

    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    :cond_6
    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v1, :cond_5

    iget-object v4, v14, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    const/4 v1, 0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_b

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move v2, v1

    :goto_4
    const/4 v1, 0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_c

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    :goto_5
    move/from16 v0, p10

    invoke-interface {v4, v2, v1, v0}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataConnectionStateChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v11

    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v1, v0, :cond_9

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v13, 0x1

    :cond_9
    :goto_6
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_4

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v13, 0x1

    goto :goto_6

    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_b
    :try_start_4
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    move v2, v1

    goto/16 :goto_4

    :cond_c
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_d
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_e
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V

    goto/16 :goto_0
.end method

.method public notifyDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDualMessageWaitingChanged(ZI)V
    .locals 6
    .param p1, "mwi"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessageWaitingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v3

    if-ne p2, v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualMessageWaitingIndicatorChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_3
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDualServiceState(Landroid/telephony/ServiceState;I)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneId"    # I

    .prologue
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceState: checkNotifyPermission fail! return! phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDualServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0
.end method

.method public notifyDualSignalStrength(Landroid/telephony/SignalStrength;I)V
    .locals 11
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneId"    # I

    .prologue
    const/16 v10, 0x63

    const/4 v9, 0x2

    const/4 v4, -0x1

    const-string v5, "notifySignalStrength()"

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "TelephonyRegistry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyDualSignalStrength: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",phoneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    if-ne p2, v9, :cond_6

    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    :goto_1
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_1
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_2

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V

    :cond_2
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const-string v5, "TelephonyRegistry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyDualSignalStrength LISTEN_SIGNAL_STRENGTH event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .local v2, "iSignalStrength":I
    if-ne p2, v9, :cond_7

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    :cond_3
    :goto_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v5

    if-ne p2, v5, :cond_4

    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v5, :cond_4

    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-ne v2, v10, :cond_8

    move v5, v4

    :goto_4
    invoke-interface {v7, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V

    :cond_4
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-ne v2, v10, :cond_5

    move v2, v4

    .end local v2    # "iSignalStrength":I
    :cond_5
    invoke-interface {v5, v2, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_6
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "iSignalStrength":I
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    :try_start_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    goto :goto_3

    :cond_8
    move v5, v2

    goto :goto_4

    .end local v2    # "iSignalStrength":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_9
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDualSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto/16 :goto_0
.end method

.method public notifyMessageWaitingChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualMessageWaitingChanged(ZI)V

    return-void
.end method

.method public notifyOperateFactoryNumberDone(IILjava/lang/String;)V
    .locals 6
    .param p1, "key"    # I
    .param p2, "operate"    # I
    .param p3, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v3, "notifyOperateFactoryNumberDone()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyOperateFactoryNumberDone, key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", operate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualNotifyFactoryNumberDone(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .param p1, "otaspMode"    # I

    .prologue
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualServiceState(Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualSignalStrength(Landroid/telephony/SignalStrength;I)V

    return-void
.end method

.method public notifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    .locals 6
    .param p1, "mSlotCardInfos"    # [Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v3, "notifySlotCardInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mTRSlotCardInfos:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualNotifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "state"    # Landroid/telephony/ServiceState;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualServiceStateChanged(Landroid/telephony/ServiceState;I)V

    :cond_1
    return-void
.end method

.method public sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "state"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method public systemRunning()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
