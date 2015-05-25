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

    .line 200
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 94
    const-string v1, "SUBSCRIPTION"

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->SUBSCRIPTION:Ljava/lang/String;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 104
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 105
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    .line 107
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 108
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    .line 110
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 111
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    .line 113
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 114
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    .line 116
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    .line 122
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 123
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    .line 125
    iput v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 126
    iput v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    .line 128
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible2:Z

    .line 131
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 132
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason2:Ljava/lang/String;

    .line 134
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 135
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn2:Ljava/lang/String;

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    .line 152
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 154
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    .line 155
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Ljava/util/List;

    .line 157
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mTRSlotCardInfos:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 169
    new-instance v1, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v1, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 205
    .local v0, "location":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 209
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TelephonyRegistry;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1191
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualCallStateChanged(ILjava/lang/String;I)V

    .line 1192
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "subscription"    # I

    .prologue
    .line 1195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1197
    .local v0, "ident":J
    if-nez p1, :cond_1

    .line 1198
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1208
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1210
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1212
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    :cond_0
    const-string v3, "SUBSCRIPTION"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1215
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1216
    return-void

    .line 1200
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1202
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1205
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
    .line 1328
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1329
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
    .line 1259
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

    .line 1262
    return-void
.end method

.method private broadcastDualCallStateChanged(ILjava/lang/String;I)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    const/high16 v7, 0x20000000

    .line 1218
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

    .line 1221
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v4

    if-ne p3, v4, :cond_1

    .line 1222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1224
    .local v0, "ident":J
    if-nez p1, :cond_3

    .line 1225
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1235
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1237
    const-string v4, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1239
    const-string v4, "incoming_number"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1241
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1244
    .end local v0    # "ident":J
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DUAL_PHONE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1245
    .local v3, "intentDual":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1246
    const-string v4, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1248
    const-string v4, "incoming_number"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    :cond_2
    const-string v4, "phoneIdKey"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1252
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1253
    return-void

    .line 1227
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

    .line 1229
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1232
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
    .line 1332
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1333
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneIdKey"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1334
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1337
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

    .line 1274
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1276
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "phoneIdKey"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1278
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1279
    if-nez p2, :cond_0

    .line 1280
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1282
    :cond_0
    if-eqz p3, :cond_1

    .line 1283
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1285
    :cond_1
    if-eqz p6, :cond_2

    .line 1286
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1287
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1288
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1289
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1292
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 1293
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1295
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1297
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1325
    return-void
.end method

.method private broadcastDualServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 9
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneId"    # I

    .prologue
    const/high16 v8, 0x20000000

    .line 1109
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

    .line 1111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1112
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1113
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v5

    if-ne p2, v5, :cond_0

    .line 1114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1116
    .local v1, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1123
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1124
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1125
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1126
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1129
    .end local v1    # "ident":J
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "yulong.intent.action.DUAL_SERVICE_STATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v4, "intentDual":Landroid/content/Intent;
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1131
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1132
    const-string v5, "phoneIdKey"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1133
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1135
    return-void

    .line 1120
    .end local v4    # "intentDual":Landroid/content/Intent;
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1117
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

    .line 1161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1164
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 1165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1167
    .local v1, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1174
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SIG_STR"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1178
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1179
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1182
    .end local v1    # "ident":J
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "yulong.intent.action.DUAL_SIG_STR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v4, "intentDual":Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1184
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1185
    const-string v5, "phoneIdKey"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1186
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1187
    return-void

    .line 1171
    .end local v4    # "intentDual":Landroid/content/Intent;
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1168
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1086
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualServiceStateChanged(Landroid/telephony/ServiceState;I)V

    .line 1087
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subscription"    # I

    .prologue
    .line 1090
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1092
    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1102
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1103
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1105
    const-string v4, "SUBSCRIPTION"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1106
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1107
    return-void

    .line 1096
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1093
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1138
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    .line 1139
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "subscription"    # I

    .prologue
    .line 1142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1144
    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1154
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1155
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1156
    const-string v4, "SUBSCRIPTION"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1157
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1158
    return-void

    .line 1148
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1145
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .param p1, "events"    # I

    .prologue
    const/4 v2, 0x0

    .line 1351
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    :cond_0
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    .line 1358
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    :cond_1
    and-int/lit16 v0, p1, 0x8ec

    if-eqz v0, :cond_2

    .line 1364
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :cond_2
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1340
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1342
    const/4 v1, 0x1

    .line 1347
    :goto_0
    return v1

    .line 1344
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

    .line 1346
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TelephonyRegistry"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    .line 1370
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1371
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

    .line 1372
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1374
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1376
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 482
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 483
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 484
    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 485
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 487
    monitor-exit v3

    .line 491
    :goto_1
    return-void

    .line 484
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
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
    .line 1016
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualCellInfo(Lcom/android/server/TelephonyRegistry$Record;Ljava/util/List;I)V

    .line 1017
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
    .line 982
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    .line 983
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
    .line 1020
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    .line 1024
    :cond_0
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v0, :cond_1

    .line 1025
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v0, p2, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellInfoChanged(Ljava/util/List;I)V

    .line 1027
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
    .line 986
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    .line 990
    :cond_0
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellLocationChanged(Landroid/os/Bundle;I)V

    .line 993
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
    .line 1000
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

    .line 1001
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v1

    if-ne p3, v1, :cond_0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_0

    .line 1003
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
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

    .line 1005
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 1008
    .end local v0    # "sState":Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v1, :cond_1

    .line 1009
    const-string v1, "cdma.ruim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
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

    .line 1011
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    .line 1013
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
    .line 996
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V

    .line 997
    return-void
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    .prologue
    .line 1404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1405
    .local v0, "callingIdentity":J
    const/4 v3, 0x0

    .line 1407
    .local v3, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1408
    .local v2, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    if-ne v4, v2, :cond_0

    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1410
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

    .line 1415
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1417
    return v3

    .line 1408
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1415
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
    .line 1050
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1052
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

    .line 1079
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1057
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1058
    .local v2, "recordCount":I
    const-string v3, "last known state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
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

    .line 1060
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

    .line 1061
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

    .line 1062
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

    .line 1063
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

    .line 1064
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

    .line 1065
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

    .line 1066
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

    .line 1067
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

    .line 1068
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

    .line 1069
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

    .line 1070
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

    .line 1071
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

    .line 1072
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

    .line 1073
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

    .line 1074
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

    .line 1075
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

    .line 1076
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

    .line 1078
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
    .line 224
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 225
    .local v3, "callerUid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 227
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

    .line 231
    if-eqz p3, :cond_18

    .line 233
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 235
    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v12

    .line 237
    const/4 v8, 0x0

    .line 239
    .local v8, "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 240
    .local v2, "b":Landroid/os/IBinder;
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 241
    .local v1, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    move-object v9, v8

    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .local v9, "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v5, v1, :cond_d

    .line 242
    :try_start_1
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 243
    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v11, :cond_c

    .line 255
    :goto_1
    iget v11, v8, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v11, v11, p3

    and-int v10, p3, v11

    .line 256
    .local v10, "send":I
    move/from16 v0, p3

    iput v0, v8, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    if-eqz p4, :cond_b

    .line 259
    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_0

    .line 260
    :try_start_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_e

    .line 261
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V

    .line 266
    :cond_0
    :goto_2
    and-int/lit8 v11, p3, 0x2

    if-eqz v11, :cond_2

    .line 267
    const/4 v6, -0x1

    .line 268
    .local v6, "iSignalStrength":I
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_f

    .line 269
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v6

    .line 274
    :goto_3
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v13, 0x63

    if-ne v6, v13, :cond_1

    const/4 v6, -0x1

    .end local v6    # "iSignalStrength":I
    :cond_1
    invoke-interface {v11, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V

    .line 277
    :cond_2
    and-int/lit8 v11, p3, 0x4

    if-eqz v11, :cond_3

    .line 278
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_10

    .line 279
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 284
    :cond_3
    :goto_4
    and-int/lit8 v11, p3, 0x8

    if-eqz v11, :cond_4

    .line 285
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_11

    .line 286
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 291
    :cond_4
    :goto_5
    and-int/lit8 v11, p3, 0x10

    if-eqz v11, :cond_5

    .line 292
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_12

    .line 293
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    invoke-direct {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    .line 298
    :cond_5
    :goto_6
    and-int/lit8 v11, p3, 0x20

    if-eqz v11, :cond_6

    .line 299
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_13

    .line 300
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 305
    :cond_6
    :goto_7
    and-int/lit8 v11, p3, 0x40

    if-eqz v11, :cond_7

    .line 306
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_14

    .line 307
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    iget v14, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 316
    :cond_7
    :goto_8
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_8

    .line 317
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_15

    .line 318
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 323
    :cond_8
    :goto_9
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_9

    .line 324
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_16

    .line 325
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 330
    :cond_9
    :goto_a
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_a

    .line 331
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V

    .line 333
    :cond_a
    const/16 v11, 0x400

    invoke-direct {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 334
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_17

    .line 335
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Ljava/util/List;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    :cond_b
    :goto_b
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v5    # "i":I
    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v10    # "send":I
    :goto_c
    return-void

    .line 241
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

    .line 247
    :cond_d
    :try_start_5
    new-instance v8, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 248
    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_6
    iput-object v2, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 249
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 250
    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 251
    iput v3, v8, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 252
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
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

    .line 344
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

    .line 263
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

    .line 340
    :catch_0
    move-exception v4

    .line 341
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_8
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_b

    .line 271
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "iSignalStrength":I
    :cond_f
    :try_start_9
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v6

    goto/16 :goto_3

    .line 281
    .end local v6    # "iSignalStrength":I
    :cond_10
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    goto/16 :goto_4

    .line 288
    :cond_11
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto/16 :goto_5

    .line 295
    :cond_12
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 302
    :cond_13
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 311
    :cond_14
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v14, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    goto/16 :goto_8

    .line 320
    :cond_15
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    goto/16 :goto_9

    .line 327
    :cond_16
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_a

    .line 337
    :cond_17
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_b

    .line 346
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

    .line 344
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
    .line 354
    if-eqz p3, :cond_f

    .line 356
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 358
    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 360
    const/4 v6, 0x0

    .line 362
    .local v6, "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 363
    .local v2, "b":Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 364
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v7, v6

    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v4, v1, :cond_e

    .line 365
    :try_start_1
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 366
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v9, :cond_d

    .line 376
    :goto_1
    iget v9, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v9, v9, p3

    and-int v8, p3, v9

    .line 377
    .local v8, "send":I
    move/from16 v0, p3

    iput v0, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    if-eqz p4, :cond_c

    .line 380
    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_0

    .line 381
    :try_start_3
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v11, 0x1

    invoke-virtual {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    .line 383
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    const/4 v11, 0x2

    invoke-virtual {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    .line 386
    :cond_0
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_3

    .line 387
    const/4 v5, -0x1

    .line 388
    .local v5, "iSignalStrength":I
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v5

    .line 389
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    const/16 v11, 0x63

    if-ne v5, v11, :cond_1

    const/4 v5, -0x1

    .end local v5    # "iSignalStrength":I
    :cond_1
    const/4 v11, 0x1

    invoke-interface {v9, v5, v11}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthChanged(II)V

    .line 394
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    .line 396
    .restart local v5    # "iSignalStrength":I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    const/16 v11, 0x63

    if-ne v5, v11, :cond_2

    const/4 v5, -0x1

    .end local v5    # "iSignalStrength":I
    :cond_2
    const/4 v11, 0x2

    invoke-interface {v9, v5, v11}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthChanged(II)V

    .line 401
    :cond_3
    and-int/lit8 v9, p3, 0x4

    if-eqz v9, :cond_4

    .line 402
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualMessageWaitingIndicatorChanged(ZI)V

    .line 406
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualMessageWaitingIndicatorChanged(ZI)V

    .line 411
    :cond_4
    and-int/lit8 v9, p3, 0x8

    if-eqz v9, :cond_5

    .line 412
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallForwardingIndicatorChanged(ZI)V

    .line 416
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallForwardingIndicatorChanged(ZI)V

    .line 421
    :cond_5
    and-int/lit8 v9, p3, 0x10

    if-eqz v9, :cond_6

    .line 422
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    const/4 v11, 0x1

    invoke-direct {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    .line 424
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    const/4 v11, 0x2

    invoke-direct {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    .line 427
    :cond_6
    and-int/lit8 v9, p3, 0x20

    if-eqz v9, :cond_7

    .line 428
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V

    .line 431
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    const/4 v13, 0x2

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V

    .line 435
    :cond_7
    and-int/lit8 v9, p3, 0x40

    if-eqz v9, :cond_8

    .line 436
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

    .line 440
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    const/4 v13, 0x1

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataConnectionStateChanged(III)V

    .line 444
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    const/4 v13, 0x2

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataConnectionStateChanged(III)V

    .line 449
    :cond_8
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_9

    .line 450
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataActivity(II)V

    .line 452
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataActivity(II)V

    .line 455
    :cond_9
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_a

    .line 456
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    .line 459
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    .line 463
    :cond_a
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x400

    if-eqz v9, :cond_b

    .line 464
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellInfoChanged(Ljava/util/List;I)V

    .line 466
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Ljava/util/List;

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellInfoChanged(Ljava/util/List;I)V

    .line 469
    :cond_b
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_c

    .line 470
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mTRSlotCardInfos:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-interface {v9, v11}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualNotifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    :cond_c
    :goto_2
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 480
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "i":I
    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "send":I
    :goto_3
    return-void

    .line 364
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

    .line 370
    :cond_e
    :try_start_5
    new-instance v6, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 371
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_6
    iput-object v2, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 372
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    .line 373
    iput-object p1, v6, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 374
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 476
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

    .line 472
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    .restart local v8    # "send":I
    :catch_0
    move-exception v3

    .line 473
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_7
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 478
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

    .line 476
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
    .line 687
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCallForwardingChanged(ZI)V

    .line 688
    return-void
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCallState(ILjava/lang/String;I)V

    .line 498
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
    .line 621
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCellInfo(Ljava/util/List;I)V

    .line 622
    return-void
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 934
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCellLocation(Landroid/os/Bundle;I)V

    .line 935
    return-void
.end method

.method public notifyDataActivity(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 723
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualDataActivity(II)V

    .line 724
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
    .line 774
    :try_start_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v10

    .line 775
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

    .line 776
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->notifyDualDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v10    # "iphoneId":I
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v11

    .line 782
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

    .line 783
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 907
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    :goto_0
    return-void

    .line 924
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
    .line 691
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 721
    :goto_0
    return-void

    .line 694
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

    .line 695
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 697
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 698
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    .line 703
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

    .line 704
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 706
    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v3

    if-ne p2, v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    .line 707
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 710
    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    .line 711
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallForwardingIndicatorChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 720
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 700
    :cond_3
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    goto :goto_1

    .line 719
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 720
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
    .line 501
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 536
    :goto_0
    return-void

    .line 504
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

    .line 505
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 506
    const/4 v3, 0x2

    if-ne p3, v3, :cond_3

    .line 507
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    .line 508
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    .line 513
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

    .line 514
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 517
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    .line 518
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 520
    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    .line 521
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 530
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 510
    :cond_3
    :try_start_3
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 511
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    goto :goto_1

    .line 529
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 530
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 534
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
    .line 625
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 648
    :goto_0
    return-void

    .line 629
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

    .line 630
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 631
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 632
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Ljava/util/List;

    .line 636
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

    .line 637
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1

    .line 640
    :try_start_1
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualCellInfo(Lcom/android/server/TelephonyRegistry$Record;Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 647
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 634
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    goto :goto_1

    .line 646
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 647
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
    .line 938
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 961
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 943
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 944
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    .line 949
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

    .line 950
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    .line 953
    :try_start_1
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 960
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 946
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .line 959
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 960
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
    .line 727
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 757
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 732
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 733
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    .line 738
    :goto_1
    const-string v3, "yulong.data.inorout"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
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

    .line 741
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 743
    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v3

    if-ne p2, v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    .line 744
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 747
    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    .line 748
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataActivity(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 756
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 735
    :cond_3
    :try_start_3
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    goto :goto_1

    .line 755
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 756
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
    .line 792
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 904
    :goto_0
    return-void

    .line 796
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

    .line 801
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 803
    const/4 v1, 0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 804
    const-string v1, "TelephonyRegistry"

    const-string v2, "LTE is connected and ignore the DSState change of CDMA. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    goto :goto_0

    .line 808
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

    .line 811
    const-string v1, "TelephonyRegistry"

    const-string v2, "cdma is connected and ignore the DSState not connect of LTE. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    goto/16 :goto_0

    .line 816
    :cond_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 817
    const/4 v13, 0x0

    .line 818
    .local v13, "modified":Z
    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_8

    .line 819
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 821
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    move/from16 v0, p1

    if-eq v1, v0, :cond_3

    .line 823
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    .line 824
    const/4 v13, 0x1

    .line 838
    :cond_3
    :goto_1
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible2:Z

    .line 839
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason2:Ljava/lang/String;

    .line 840
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties2:Landroid/net/LinkProperties;

    .line 841
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities2:Landroid/net/LinkCapabilities;

    .line 842
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_4

    .line 843
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    .line 845
    const/4 v13, 0x1

    .line 879
    :cond_4
    :goto_2
    if-eqz v13, :cond_e

    .line 881
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

    .line 884
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

    .line 885
    .local v14, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v14, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 887
    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v1

    move/from16 v0, p10

    if-ne v0, v1, :cond_6

    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_6

    .line 888
    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 890
    :cond_6
    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v1, :cond_5

    .line 891
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

    .line 894
    :catch_0
    move-exception v11

    .line 895
    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 901
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 828
    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 829
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 830
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    .line 831
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 849
    :cond_8
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    .line 850
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 851
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v1, v0, :cond_9

    .line 853
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 854
    const/4 v13, 0x1

    .line 868
    :cond_9
    :goto_6
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 869
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 870
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 871
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 872
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_4

    .line 873
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 875
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 858
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 859
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 860
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 861
    const/4 v13, 0x1

    goto :goto_6

    .line 891
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

    .line 899
    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_d
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 901
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

    .line 902
    invoke-direct/range {v1 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V

    goto/16 :goto_0
.end method

.method public notifyDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 927
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    :goto_0
    return-void

    .line 930
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDualMessageWaitingChanged(ZI)V
    .locals 6
    .param p1, "mwi"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 656
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 685
    :goto_0
    return-void

    .line 659
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

    .line 660
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 662
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 663
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    .line 668
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

    .line 669
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 671
    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v3

    if-ne p2, v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    .line 672
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 675
    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    .line 676
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualMessageWaitingIndicatorChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 684
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 665
    :cond_3
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    goto :goto_1

    .line 683
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 684
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
    .line 543
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 544
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

    .line 567
    :goto_0
    return-void

    .line 547
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

    .line 548
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 549
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 550
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    .line 554
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

    .line 555
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 557
    :try_start_1
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 564
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 552
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 563
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 564
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 566
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

    .line 573
    const-string v5, "notifySignalStrength()"

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 619
    :goto_0
    return-void

    .line 576
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

    .line 577
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 578
    if-ne p2, v9, :cond_6

    .line 579
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    .line 584
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

    .line 586
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_1
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_2

    .line 588
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V

    .line 591
    :cond_2
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 592
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

    .line 593
    const/4 v2, -0x1

    .line 594
    .local v2, "iSignalStrength":I
    if-ne p2, v9, :cond_7

    .line 596
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 602
    :cond_3
    :goto_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v5

    if-ne p2, v5, :cond_4

    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v5, :cond_4

    .line 603
    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-ne v2, v10, :cond_8

    move v5, v4

    :goto_4
    invoke-interface {v7, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V

    .line 606
    :cond_4
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v5, :cond_1

    .line 607
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

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 616
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 581
    :cond_6
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 597
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "iSignalStrength":I
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    .line 599
    :try_start_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    goto :goto_3

    :cond_8
    move v5, v2

    .line 603
    goto :goto_4

    .line 615
    .end local v2    # "iSignalStrength":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_9
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 616
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDualSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto/16 :goto_0
.end method

.method public notifyMessageWaitingChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .prologue
    .line 652
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualMessageWaitingChanged(ZI)V

    .line 653
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
    .line 1381
    const-string v3, "notifyOperateFactoryNumberDone()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1384
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

    .line 1386
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1387
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

    .line 1388
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    .line 1390
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    .line 1391
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualNotifyFactoryNumberDone(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1393
    :catch_0
    move-exception v0

    .line 1394
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1399
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1398
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1399
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .param p1, "otaspMode"    # I

    .prologue
    .line 1030
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1033
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1034
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1035
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

    .line 1036
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    .line 1038
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1045
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1044
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1045
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 539
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualServiceState(Landroid/telephony/ServiceState;I)V

    .line 540
    return-void
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 569
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualSignalStrength(Landroid/telephony/SignalStrength;I)V

    .line 570
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
    .line 1422
    const-string v3, "notifySlotCardInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1425
    :cond_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mTRSlotCardInfos:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 1428
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1429
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

    .line 1430
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_1

    .line 1432
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    .line 1433
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualNotifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1441
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1440
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1441
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
    .line 972
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 976
    :cond_0
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualServiceStateChanged(Landroid/telephony/ServiceState;I)V

    .line 979
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
    .line 966
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    .line 967
    return-void
.end method

.method public systemRunning()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void
.end method
