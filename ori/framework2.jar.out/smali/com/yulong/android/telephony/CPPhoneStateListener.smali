.class public Lcom/yulong/android/telephony/CPPhoneStateListener;
.super Ljava/lang/Object;
.source "CPPhoneStateListener.java"


# static fields
.field public static final LISTEN_CALL_FORWARDING_INDICATOR:I = 0x8

.field public static final LISTEN_CALL_STATE:I = 0x20

.field public static final LISTEN_CELL_INFO:I = 0x400

.field public static final LISTEN_CELL_LOCATION:I = 0x10

.field public static final LISTEN_DATA_ACTIVITY:I = 0x80

.field public static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field public static final LISTEN_MESSAGE_WAITING_INDICATOR:I = 0x4

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_OPERATE_FACTORY_NUMBER_DONE:I = 0x800

.field public static final LISTEN_SERVICE_STATE:I = 0x1

.field public static final LISTEN_SIGNAL_STRENGTH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_SIGNAL_STRENGTHS:I = 0x100

.field public static final LISTEN_SLOT_CARD_INFO:I = 0x1000


# instance fields
.field callback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/telephony/CPPhoneStateListener$1;-><init>(Lcom/yulong/android/telephony/CPPhoneStateListener;)V

    iput-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener;->callback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    .line 332
    new-instance v0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;

    invoke-direct {v0, p0}, Lcom/yulong/android/telephony/CPPhoneStateListener$2;-><init>(Lcom/yulong/android/telephony/CPPhoneStateListener;)V

    iput-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method


# virtual methods
.method public onDualCallForwardingIndicatorChanged(ZI)V
    .locals 0
    .param p1, "cfi"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 190
    return-void
.end method

.method public onDualCallStateChanged(ILjava/lang/String;I)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 208
    return-void
.end method

.method public onDualCellInfoChanged(Ljava/util/List;I)V
    .locals 0
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
    .line 259
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-void
.end method

.method public onDualCellLocationChanged(Landroid/telephony/CellLocation;I)V
    .locals 0
    .param p1, "location"    # Landroid/telephony/CellLocation;
    .param p2, "phoneId"    # I

    .prologue
    .line 197
    return-void
.end method

.method public onDualDataActivity(II)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 239
    return-void
.end method

.method public onDualDataConnectionStateChanged(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 220
    return-void
.end method

.method public onDualDataConnectionStateChanged(III)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 226
    return-void
.end method

.method public onDualMessageWaitingIndicatorChanged(ZI)V
    .locals 0
    .param p1, "mwi"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onDualNotifyFactoryNumberDone(IILjava/lang/String;)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "operate"    # I
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    .line 264
    return-void
.end method

.method public onDualNotifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    .locals 0
    .param p1, "mSlotCardInfos"    # [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .prologue
    .line 268
    return-void
.end method

.method public onDualServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .param p2, "phoneId"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onDualSignalStrengthChanged(II)V
    .locals 0
    .param p1, "asu"    # I
    .param p2, "phoneId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method public onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneId"    # I

    .prologue
    .line 251
    return-void
.end method
