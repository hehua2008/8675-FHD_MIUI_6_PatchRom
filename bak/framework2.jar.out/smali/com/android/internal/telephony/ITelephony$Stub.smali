.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerDualRingingCall:I = 0xc

.field static final TRANSACTION_answerRingingCall:I = 0xb

.field static final TRANSACTION_call:I = 0x3

.field static final TRANSACTION_callDual:I = 0x4

.field static final TRANSACTION_cancelDualMissedCallsNotification:I = 0x1b

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x1a

.field static final TRANSACTION_clearPrlOrPlmn:I = 0x7a

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x73

.field static final TRANSACTION_cwControl:I = 0x67

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_dialDual:I = 0x2

.field static final TRANSACTION_disableApnType:I = 0x31

.field static final TRANSACTION_disableDataConnectivity:I = 0x3b

.field static final TRANSACTION_disableDualApnType:I = 0x32

.field static final TRANSACTION_disableDualDataConnectivity:I = 0x3c

.field static final TRANSACTION_disableDualLocationUpdates:I = 0x2e

.field static final TRANSACTION_disableDualLocationUpdatesBySlotId:I = 0x7d

.field static final TRANSACTION_disableLocationUpdates:I = 0x2d

.field static final TRANSACTION_disableQos:I = 0x34

.field static final TRANSACTION_enableApnType:I = 0x2f

.field static final TRANSACTION_enableDataConnectivity:I = 0x39

.field static final TRANSACTION_enableDualApnType:I = 0x30

.field static final TRANSACTION_enableDualDataConnectivity:I = 0x3a

.field static final TRANSACTION_enableDualLocationUpdates:I = 0x2c

.field static final TRANSACTION_enableDualLocationUpdatesBySlotId:I = 0x7c

.field static final TRANSACTION_enableLocationUpdates:I = 0x2b

.field static final TRANSACTION_enableQos:I = 0x33

.field static final TRANSACTION_endCall:I = 0x9

.field static final TRANSACTION_endDualCall:I = 0xa

.field static final TRANSACTION_execRuimEsnOp:I = 0x64

.field static final TRANSACTION_getActivePhoneType:I = 0x49

.field static final TRANSACTION_getAllCellInfo:I = 0x5b

.field static final TRANSACTION_getAtr:I = 0x76

.field static final TRANSACTION_getCallState:I = 0x43

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x4c

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x4d

.field static final TRANSACTION_getCdmaEriText:I = 0x4e

.field static final TRANSACTION_getCdmaNeedsProvisioning:I = 0x50

.field static final TRANSACTION_getCellLocation:I = 0x3f

.field static final TRANSACTION_getDataActivity:I = 0x45

.field static final TRANSACTION_getDataNetworkType:I = 0x55

.field static final TRANSACTION_getDataState:I = 0x47

.field static final TRANSACTION_getDualActivePhoneType:I = 0x4a

.field static final TRANSACTION_getDualActivePhoneTypeBySlotId:I = 0x83

.field static final TRANSACTION_getDualCallState:I = 0x44

.field static final TRANSACTION_getDualCallStateBySlotId:I = 0x80

.field static final TRANSACTION_getDualCellLocation:I = 0x40

.field static final TRANSACTION_getDualCellLocationBySlotId:I = 0x7e

.field static final TRANSACTION_getDualDataActivity:I = 0x46

.field static final TRANSACTION_getDualDataActivityBySlotId:I = 0x81

.field static final TRANSACTION_getDualDataNetworkType:I = 0x56

.field static final TRANSACTION_getDualDataNetworkTypeBySlotId:I = 0x86

.field static final TRANSACTION_getDualDataState:I = 0x48

.field static final TRANSACTION_getDualDataStateBySlotId:I = 0x82

.field static final TRANSACTION_getDualNeighboringCellInfo:I = 0x42

.field static final TRANSACTION_getDualNeighboringCellInfoBySlotId:I = 0x7f

.field static final TRANSACTION_getDualNetworkType:I = 0x54

.field static final TRANSACTION_getDualNetworkTypeBySlotId:I = 0x85

.field static final TRANSACTION_getDualPbTotalParamOnIcc:I = 0x62

.field static final TRANSACTION_getDualPbTotalParamOnIccBySlotId:I = 0x89

.field static final TRANSACTION_getDualSmsTotalParamOnIcc:I = 0x60

.field static final TRANSACTION_getDualVoiceMessageCount:I = 0x52

.field static final TRANSACTION_getDualVoiceMessageCountBySlotId:I = 0x84

.field static final TRANSACTION_getDualVoiceNetworkType:I = 0x58

.field static final TRANSACTION_getDualVoiceNetworkTypeBySlotId:I = 0x87

.field static final TRANSACTION_getIccFdnEnabled:I = 0x6d

.field static final TRANSACTION_getLastError:I = 0x74

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x5a

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x41

.field static final TRANSACTION_getNetworkType:I = 0x53

.field static final TRANSACTION_getPbTotalParamOnIcc:I = 0x61

.field static final TRANSACTION_getPinPukValidCount:I = 0x1e

.field static final TRANSACTION_getPrlOrPlmnCapacity:I = 0x78

.field static final TRANSACTION_getPrlOrPlmnVersion:I = 0x77

.field static final TRANSACTION_getQosStatus:I = 0x38

.field static final TRANSACTION_getSmsTotalParamOnIcc:I = 0x5f

.field static final TRANSACTION_getVoiceMessageCount:I = 0x51

.field static final TRANSACTION_getVoiceNetworkType:I = 0x57

.field static final TRANSACTION_handleDualPinMmi:I = 0x22

.field static final TRANSACTION_handlePinMmi:I = 0x21

.field static final TRANSACTION_hasCallDual:I = 0x7b

.field static final TRANSACTION_hasDualIccCard:I = 0x5c

.field static final TRANSACTION_hasDualIccCardBySlotId:I = 0x88

.field static final TRANSACTION_hasIccCard:I = 0x59

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x3d

.field static final TRANSACTION_isDualDataConnectivityPossible:I = 0x3e

.field static final TRANSACTION_isDualIdle:I = 0x14

.field static final TRANSACTION_isDualOffhook:I = 0x10

.field static final TRANSACTION_isDualRadioOn:I = 0x16

.field static final TRANSACTION_isDualRinging:I = 0x12

.field static final TRANSACTION_isDualSimPinEnabled:I = 0x19

.field static final TRANSACTION_isIdle:I = 0x13

.field static final TRANSACTION_isOffhook:I = 0xf

.field static final TRANSACTION_isRadioOn:I = 0x15

.field static final TRANSACTION_isRadioOnOnSubscription:I = 0x17

.field static final TRANSACTION_isRinging:I = 0x11

.field static final TRANSACTION_isSimPinEnabled:I = 0x18

.field static final TRANSACTION_modifyQos:I = 0x35

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x4f

.field static final TRANSACTION_openIccLogicalChannel:I = 0x71

.field static final TRANSACTION_openIccLogicalChannelWithSelectResponse:I = 0x72

.field static final TRANSACTION_resumeQos:I = 0x37

.field static final TRANSACTION_sendCommandToRil:I = 0x69

.field static final TRANSACTION_sendCommandToRilBySlotId:I = 0x8c

.field static final TRANSACTION_sendOemRilRequestRaw:I = 0x4b

.field static final TRANSACTION_setCellInfoListRate:I = 0x5d

.field static final TRANSACTION_setDualCellInfoListRate:I = 0x5e

.field static final TRANSACTION_setDualRadioPower:I = 0x27

.field static final TRANSACTION_setGpsOne:I = 0x68

.field static final TRANSACTION_setRadio:I = 0x25

.field static final TRANSACTION_setRadioOnSubscription:I = 0x28

.field static final TRANSACTION_setRadioPower:I = 0x26

.field static final TRANSACTION_setRasConnectFunction:I = 0x63

.field static final TRANSACTION_setRasConnectFunctionBySlotId:I = 0x8a

.field static final TRANSACTION_showCallScreen:I = 0x5

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x7

.field static final TRANSACTION_showDualCallScreen:I = 0x6

.field static final TRANSACTION_showDualCallScreenWithDialpad:I = 0x8

.field static final TRANSACTION_silenceDualRinger:I = 0xe

.field static final TRANSACTION_silenceRinger:I = 0xd

.field static final TRANSACTION_spcpaReboot:I = 0x6c

.field static final TRANSACTION_spcpaSendCmd:I = 0x6a

.field static final TRANSACTION_supplyDualPin:I = 0x1d

.field static final TRANSACTION_supplyDualPuk:I = 0x20

.field static final TRANSACTION_supplyPin:I = 0x1c

.field static final TRANSACTION_supplyPinReportResult:I = 0x8d

.field static final TRANSACTION_supplyPuk:I = 0x1f

.field static final TRANSACTION_suspendQos:I = 0x36

.field static final TRANSACTION_swapCall:I = 0x6e

.field static final TRANSACTION_switchNetModeFromEngmode:I = 0x6b

.field static final TRANSACTION_telephonyDualIoControl:I = 0x66

.field static final TRANSACTION_telephonyDualIoControlBySlotId:I = 0x8b

.field static final TRANSACTION_telephonyIoControl:I = 0x65

.field static final TRANSACTION_toggleDualRadioOnOff:I = 0x24

.field static final TRANSACTION_toggleRadioOnOff:I = 0x23

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x70

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x6f

.field static final TRANSACTION_transmitIccSimIO:I = 0x75

.field static final TRANSACTION_updateDualServiceLocation:I = 0x2a

.field static final TRANSACTION_updatePrlOrPlmn:I = 0x79

.field static final TRANSACTION_updateServiceLocation:I = 0x29


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 1552
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 49
    :sswitch_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->dialDual(Ljava/lang/String;I)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_3
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 92
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->callDual(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v1, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_5
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v12

    .line 100
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v12, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 106
    .end local v12    # "_result":Z
    :sswitch_6
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->showDualCallScreen(I)Z

    move-result v12

    .line 110
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v12, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 111
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 116
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_7
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 119
    .local v2, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v12

    .line 120
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v12, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 118
    .end local v2    # "_arg0":Z
    .end local v12    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 121
    .restart local v2    # "_arg0":Z
    .restart local v12    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 126
    .end local v2    # "_arg0":Z
    .end local v12    # "_result":Z
    :sswitch_8
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 130
    .restart local v2    # "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 131
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->showDualCallScreenWithDialpad(ZI)Z

    move-result v12

    .line 132
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v12, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 128
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 133
    .restart local v2    # "_arg0":Z
    .restart local v3    # "_arg1":I
    .restart local v12    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 138
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_9
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v12

    .line 140
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v12, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 141
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 146
    .end local v12    # "_result":Z
    :sswitch_a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->endDualCall(I)Z

    move-result v12

    .line 150
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v12, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 151
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 156
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 163
    :sswitch_c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->answerDualRingingCall(I)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 172
    .end local v2    # "_arg0":I
    :sswitch_d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 179
    :sswitch_e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceDualRinger(I)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 188
    .end local v2    # "_arg0":I
    :sswitch_f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v12

    .line 190
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v12, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 191
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 196
    .end local v12    # "_result":Z
    :sswitch_10
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualOffhook(I)Z

    move-result v12

    .line 200
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v12, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 201
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 206
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_11
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v12

    .line 208
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v12, :cond_a

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 209
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 214
    .end local v12    # "_result":Z
    :sswitch_12
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualRinging(I)Z

    move-result v12

    .line 218
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v12, :cond_b

    const/4 v1, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 219
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 224
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_13
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v12

    .line 226
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v12, :cond_c

    const/4 v1, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 227
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 232
    .end local v12    # "_result":Z
    :sswitch_14
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 235
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualIdle(I)Z

    move-result v12

    .line 236
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v12, :cond_d

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 237
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 242
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_15
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v12

    .line 244
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v12, :cond_e

    const/4 v1, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 245
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 250
    .end local v12    # "_result":Z
    :sswitch_16
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualRadioOn(I)Z

    move-result v12

    .line 254
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v12, :cond_f

    const/4 v1, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 255
    :cond_f
    const/4 v1, 0x0

    goto :goto_10

    .line 260
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_17
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnOnSubscription(I)Z

    move-result v12

    .line 264
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v12, :cond_10

    const/4 v1, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 265
    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    .line 270
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_18
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v12

    .line 272
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v12, :cond_11

    const/4 v1, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 273
    :cond_11
    const/4 v1, 0x0

    goto :goto_12

    .line 278
    .end local v12    # "_result":Z
    :sswitch_19
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualSimPinEnabled(I)Z

    move-result v12

    .line 282
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v12, :cond_12

    const/4 v1, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 283
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 288
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_1a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 295
    :sswitch_1b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelDualMissedCallsNotification(I)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 304
    .end local v2    # "_arg0":I
    :sswitch_1c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v12

    .line 308
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v12, :cond_13

    const/4 v1, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 309
    :cond_13
    const/4 v1, 0x0

    goto :goto_14

    .line 314
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_1d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 319
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v12

    .line 320
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v12, :cond_14

    const/4 v1, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 321
    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    .line 326
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_1e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 331
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getPinPukValidCount(II)I

    move-result v12

    .line 332
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 338
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v12    # "_result":I
    :sswitch_1f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 344
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    if-eqz v12, :cond_15

    const/4 v1, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 345
    :cond_15
    const/4 v1, 0x0

    goto :goto_16

    .line 350
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_20
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 354
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 356
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 357
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    .line 358
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    if-eqz v12, :cond_16

    const/4 v1, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 359
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 364
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v12    # "_result":Z
    :sswitch_21
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 367
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v12

    .line 368
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    if-eqz v12, :cond_17

    const/4 v1, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 369
    :cond_17
    const/4 v1, 0x0

    goto :goto_18

    .line 374
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_22
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 379
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->handleDualPinMmi(Ljava/lang/String;I)Z

    move-result v12

    .line 380
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    if-eqz v12, :cond_18

    const/4 v1, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 381
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 386
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_23
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 393
    :sswitch_24
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleDualRadioOnOff(I)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 402
    .end local v2    # "_arg0":I
    :sswitch_25
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    .line 405
    .local v2, "_arg0":Z
    :goto_1a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v12

    .line 406
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v12, :cond_1a

    const/4 v1, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 404
    .end local v2    # "_arg0":Z
    .end local v12    # "_result":Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 407
    .restart local v2    # "_arg0":Z
    .restart local v12    # "_result":Z
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 412
    .end local v2    # "_arg0":Z
    .end local v12    # "_result":Z
    :sswitch_26
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    .line 415
    .restart local v2    # "_arg0":Z
    :goto_1c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v12

    .line 416
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v12, :cond_1c

    const/4 v1, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 414
    .end local v2    # "_arg0":Z
    .end local v12    # "_result":Z
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1c

    .line 417
    .restart local v2    # "_arg0":Z
    .restart local v12    # "_result":Z
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1d

    .line 422
    .end local v2    # "_arg0":Z
    .end local v12    # "_result":Z
    :sswitch_27
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x1

    .line 426
    .restart local v2    # "_arg0":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 427
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDualRadioPower(ZI)Z

    move-result v12

    .line 428
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v12, :cond_1e

    const/4 v1, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 424
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1e

    .line 429
    .restart local v2    # "_arg0":Z
    .restart local v3    # "_arg1":I
    .restart local v12    # "_result":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 434
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_28
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    .line 438
    .restart local v2    # "_arg0":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 439
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioOnSubscription(ZI)Z

    move-result v12

    .line 440
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v12, :cond_20

    const/4 v1, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 436
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .line 441
    .restart local v2    # "_arg0":Z
    .restart local v3    # "_arg1":I
    .restart local v12    # "_result":Z
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 446
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_29
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 453
    :sswitch_2a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 456
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateDualServiceLocation(I)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 462
    .end local v2    # "_arg0":I
    :sswitch_2b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 469
    :sswitch_2c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDualLocationUpdates(I)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 478
    .end local v2    # "_arg0":I
    :sswitch_2d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 485
    :sswitch_2e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 488
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDualLocationUpdates(I)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 494
    .end local v2    # "_arg0":I
    :sswitch_2f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v12

    .line 498
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 504
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_30
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 508
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 509
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDualApnType(Ljava/lang/String;I)I

    move-result v12

    .line 510
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 516
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v12    # "_result":I
    :sswitch_31
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 519
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v12

    .line 520
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 526
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_32
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 530
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 531
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDualApnType(Ljava/lang/String;I)I

    move-result v12

    .line 532
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 538
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v12    # "_result":I
    :sswitch_33
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    .line 541
    sget-object v1, Lcom/android/internal/telephony/QosSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/QosSpec;

    .line 547
    .local v2, "_arg0":Lcom/android/internal/telephony/QosSpec;
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I

    move-result v12

    .line 549
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 544
    .end local v2    # "_arg0":Lcom/android/internal/telephony/QosSpec;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":I
    :cond_21
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/android/internal/telephony/QosSpec;
    goto :goto_22

    .line 555
    .end local v2    # "_arg0":Lcom/android/internal/telephony/QosSpec;
    :sswitch_34
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 558
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableQos(I)I

    move-result v12

    .line 559
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 565
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_35
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 569
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    .line 570
    sget-object v1, Lcom/android/internal/telephony/QosSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/QosSpec;

    .line 575
    .local v3, "_arg1":Lcom/android/internal/telephony/QosSpec;
    :goto_23
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->modifyQos(ILcom/android/internal/telephony/QosSpec;)I

    move-result v12

    .line 576
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 573
    .end local v3    # "_arg1":Lcom/android/internal/telephony/QosSpec;
    .end local v12    # "_result":I
    :cond_22
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Lcom/android/internal/telephony/QosSpec;
    goto :goto_23

    .line 582
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/QosSpec;
    :sswitch_36
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 585
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->suspendQos(I)I

    move-result v12

    .line 586
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 592
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_37
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 595
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->resumeQos(I)I

    move-result v12

    .line 596
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 602
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_38
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 605
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getQosStatus(I)I

    move-result v12

    .line 606
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 612
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_39
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v12

    .line 614
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    if-eqz v12, :cond_23

    const/4 v1, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 615
    :cond_23
    const/4 v1, 0x0

    goto :goto_24

    .line 620
    .end local v12    # "_result":Z
    :sswitch_3a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 623
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDualDataConnectivity(I)Z

    move-result v12

    .line 624
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    if-eqz v12, :cond_24

    const/4 v1, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 625
    :cond_24
    const/4 v1, 0x0

    goto :goto_25

    .line 630
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_3b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v12

    .line 632
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v12, :cond_25

    const/4 v1, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 633
    :cond_25
    const/4 v1, 0x0

    goto :goto_26

    .line 638
    .end local v12    # "_result":Z
    :sswitch_3c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 641
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDualDataConnectivity(I)Z

    move-result v12

    .line 642
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    if-eqz v12, :cond_26

    const/4 v1, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 643
    :cond_26
    const/4 v1, 0x0

    goto :goto_27

    .line 648
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_3d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v12

    .line 650
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v12, :cond_27

    const/4 v1, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 651
    :cond_27
    const/4 v1, 0x0

    goto :goto_28

    .line 656
    .end local v12    # "_result":Z
    :sswitch_3e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 659
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualDataConnectivityPossible(I)Z

    move-result v12

    .line 660
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v12, :cond_28

    const/4 v1, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 661
    :cond_28
    const/4 v1, 0x0

    goto :goto_29

    .line 666
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_3f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v12

    .line 668
    .local v12, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    if-eqz v12, :cond_29

    .line 670
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 676
    :goto_2a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 674
    :cond_29
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 680
    .end local v12    # "_result":Landroid/os/Bundle;
    :sswitch_40
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 683
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualCellLocation(I)Landroid/os/Bundle;

    move-result-object v12

    .line 684
    .restart local v12    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    if-eqz v12, :cond_2a

    .line 686
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 692
    :goto_2b
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 690
    :cond_2a
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 696
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Landroid/os/Bundle;
    :sswitch_41
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 700
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 702
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 706
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_42
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 710
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 711
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualNeighboringCellInfo(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 712
    .restart local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 714
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 718
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_43
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v12

    .line 720
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 726
    .end local v12    # "_result":I
    :sswitch_44
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 729
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualCallState(I)I

    move-result v12

    .line 730
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 736
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_45
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v12

    .line 738
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 744
    .end local v12    # "_result":I
    :sswitch_46
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 747
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualDataActivity(I)I

    move-result v12

    .line 748
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 754
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_47
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v12

    .line 756
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 762
    .end local v12    # "_result":I
    :sswitch_48
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 765
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualDataState(I)I

    move-result v12

    .line 766
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 772
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_49
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v12

    .line 774
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 780
    .end local v12    # "_result":I
    :sswitch_4a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 783
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualActivePhoneType(I)I

    move-result v12

    .line 784
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 790
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_4b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 794
    .local v2, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 795
    .local v9, "_arg1_length":I
    if-gez v9, :cond_2b

    .line 796
    const/4 v3, 0x0

    .line 801
    .local v3, "_arg1":[B
    :goto_2c
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendOemRilRequestRaw([B[B)I

    move-result v12

    .line 802
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 805
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 799
    .end local v3    # "_arg1":[B
    .end local v12    # "_result":I
    :cond_2b
    new-array v3, v9, [B

    .restart local v3    # "_arg1":[B
    goto :goto_2c

    .line 809
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v9    # "_arg1_length":I
    :sswitch_4c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v12

    .line 811
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 817
    .end local v12    # "_result":I
    :sswitch_4d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v12

    .line 819
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 825
    .end local v12    # "_result":I
    :sswitch_4e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v12

    .line 827
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 829
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 833
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v12

    .line 835
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    if-eqz v12, :cond_2c

    const/4 v1, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 836
    :cond_2c
    const/4 v1, 0x0

    goto :goto_2d

    .line 841
    .end local v12    # "_result":Z
    :sswitch_50
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaNeedsProvisioning()Z

    move-result v12

    .line 843
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    if-eqz v12, :cond_2d

    const/4 v1, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 844
    :cond_2d
    const/4 v1, 0x0

    goto :goto_2e

    .line 849
    .end local v12    # "_result":Z
    :sswitch_51
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v12

    .line 851
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 857
    .end local v12    # "_result":I
    :sswitch_52
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 860
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualVoiceMessageCount(I)I

    move-result v12

    .line 861
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 867
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_53
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v12

    .line 869
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 875
    .end local v12    # "_result":I
    :sswitch_54
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 878
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualNetworkType(I)I

    move-result v12

    .line 879
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 885
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_55
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType()I

    move-result v12

    .line 887
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 893
    .end local v12    # "_result":I
    :sswitch_56
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 896
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualDataNetworkType(I)I

    move-result v12

    .line 897
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 903
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_57
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkType()I

    move-result v12

    .line 905
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 911
    .end local v12    # "_result":I
    :sswitch_58
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 914
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualVoiceNetworkType(I)I

    move-result v12

    .line 915
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 921
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_59
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v12

    .line 923
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    if-eqz v12, :cond_2e

    const/4 v1, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 924
    :cond_2e
    const/4 v1, 0x0

    goto :goto_2f

    .line 929
    .end local v12    # "_result":Z
    :sswitch_5a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v12

    .line 931
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 937
    .end local v12    # "_result":I
    :sswitch_5b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v13

    .line 939
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 941
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 945
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_5c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 948
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->hasDualIccCard(I)Z

    move-result v12

    .line 949
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    if-eqz v12, :cond_2f

    const/4 v1, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 950
    :cond_2f
    const/4 v1, 0x0

    goto :goto_30

    .line 955
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_5d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 958
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 964
    .end local v2    # "_arg0":I
    :sswitch_5e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 968
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 969
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDualCellInfoListRate(II)V

    .line 970
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 975
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_5f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSmsTotalParamOnIcc()I

    move-result v12

    .line 977
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 979
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 983
    .end local v12    # "_result":I
    :sswitch_60
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 986
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualSmsTotalParamOnIcc(I)I

    move-result v12

    .line 987
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 993
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_61
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPbTotalParamOnIcc()I

    move-result v12

    .line 995
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1001
    .end local v12    # "_result":I
    :sswitch_62
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1004
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualPbTotalParamOnIcc(I)I

    move-result v12

    .line 1005
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1011
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_63
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1015
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1016
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRasConnectFunction(II)Z

    move-result v12

    .line 1017
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    if-eqz v12, :cond_30

    const/4 v1, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1018
    :cond_30
    const/4 v1, 0x0

    goto :goto_31

    .line 1023
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_64
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    const/4 v2, 0x1

    .line 1026
    .local v2, "_arg0":Z
    :goto_32
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->execRuimEsnOp(Z)Ljava/lang/String;

    move-result-object v12

    .line 1027
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1029
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1025
    .end local v2    # "_arg0":Z
    .end local v12    # "_result":Ljava/lang/String;
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 1033
    :sswitch_65
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1037
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    .line 1038
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1044
    .local v3, "_arg1":Landroid/os/Bundle;
    :goto_33
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1045
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->telephonyIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v12

    .line 1046
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    if-eqz v12, :cond_33

    const/4 v1, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    if-eqz v4, :cond_34

    .line 1049
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1055
    :goto_35
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1041
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v12    # "_result":Z
    :cond_32
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_33

    .line 1047
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    .restart local v12    # "_result":Z
    :cond_33
    const/4 v1, 0x0

    goto :goto_34

    .line 1053
    :cond_34
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    .line 1059
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v12    # "_result":Z
    :sswitch_66
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1063
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    .line 1064
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1070
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_36
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1072
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1073
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v12

    .line 1074
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    if-eqz v12, :cond_36

    const/4 v1, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    if-eqz v4, :cond_37

    .line 1077
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1083
    :goto_38
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1067
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":I
    .end local v12    # "_result":Z
    :cond_35
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_36

    .line 1075
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    .restart local v5    # "_arg3":I
    .restart local v12    # "_result":Z
    :cond_36
    const/4 v1, 0x0

    goto :goto_37

    .line 1081
    :cond_37
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 1087
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":I
    .end local v12    # "_result":Z
    :sswitch_67
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1091
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1093
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1095
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1096
    .local v10, "_arg3_length":I
    if-gez v10, :cond_38

    .line 1097
    const/4 v5, 0x0

    .line 1103
    .local v5, "_arg3":[Ljava/lang/String;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1104
    .local v11, "_arg4_length":I
    if-gez v11, :cond_39

    .line 1105
    const/4 v6, 0x0

    .local v6, "_arg4":[Ljava/lang/String;
    :goto_3a
    move-object v1, p0

    .line 1110
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->cwControl(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    .line 1111
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    if-eqz v12, :cond_3a

    const/4 v1, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1115
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1100
    .end local v5    # "_arg3":[Ljava/lang/String;
    .end local v6    # "_arg4":[Ljava/lang/String;
    .end local v11    # "_arg4_length":I
    .end local v12    # "_result":Z
    :cond_38
    new-array v5, v10, [Ljava/lang/String;

    .restart local v5    # "_arg3":[Ljava/lang/String;
    goto :goto_39

    .line 1108
    .restart local v11    # "_arg4_length":I
    :cond_39
    new-array v6, v11, [Ljava/lang/String;

    .restart local v6    # "_arg4":[Ljava/lang/String;
    goto :goto_3a

    .line 1112
    .restart local v12    # "_result":Z
    :cond_3a
    const/4 v1, 0x0

    goto :goto_3b

    .line 1119
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":[Ljava/lang/String;
    .end local v6    # "_arg4":[Ljava/lang/String;
    .end local v10    # "_arg3_length":I
    .end local v11    # "_arg4_length":I
    .end local v12    # "_result":Z
    :sswitch_68
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1122
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setGpsOne(I)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1128
    .end local v2    # "_arg0":I
    :sswitch_69
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1132
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1133
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendCommandToRil(ILjava/lang/String;)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1139
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_6a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1143
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->spcpaSendCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1145
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1147
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_6b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1155
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1156
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->switchNetModeFromEngmode(Ljava/lang/String;I)V

    .line 1157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1162
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_6c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->spcpaReboot()V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1169
    :sswitch_6d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1172
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccFdnEnabled(I)Z

    move-result v12

    .line 1173
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    if-eqz v12, :cond_3b

    const/4 v1, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1174
    :cond_3b
    const/4 v1, 0x0

    goto :goto_3c

    .line 1179
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_6e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->swapCall()V

    .line 1181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1186
    :sswitch_6f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1190
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1192
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1194
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1196
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1198
    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1200
    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg6":Ljava/lang/String;
    move-object v1, p0

    .line 1201
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1202
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1204
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1208
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_70
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1212
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1214
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1216
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1218
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1220
    .restart local v6    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg5":Ljava/lang/String;
    move-object v1, p0

    .line 1221
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1222
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1224
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1228
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_71
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v12

    .line 1232
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1238
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_72
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1241
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannelWithSelectResponse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1242
    .local v12, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1244
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1248
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":[Ljava/lang/String;
    :sswitch_73
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1251
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v12

    .line 1252
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    if-eqz v12, :cond_3c

    const/4 v1, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1253
    :cond_3c
    const/4 v1, 0x0

    goto :goto_3d

    .line 1258
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_74
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastError()I

    move-result v12

    .line 1260
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1266
    .end local v12    # "_result":I
    :sswitch_75
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1270
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1272
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1274
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1276
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1278
    .restart local v6    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg5":Ljava/lang/String;
    move-object v1, p0

    .line 1279
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccSimIO(IIIIILjava/lang/String;)[B

    move-result-object v12

    .line 1280
    .local v12, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1282
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1286
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v12    # "_result":[B
    :sswitch_76
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr()Ljava/lang/String;

    move-result-object v12

    .line 1288
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1290
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1294
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_77
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1297
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPrlOrPlmnVersion(I)I

    move-result v12

    .line 1298
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1304
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_78
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1307
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPrlOrPlmnCapacity(I)I

    move-result v12

    .line 1308
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1314
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_79
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1318
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1319
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->updatePrlOrPlmn(I[B)I

    move-result v12

    .line 1320
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1326
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v12    # "_result":I
    :sswitch_7a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1329
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearPrlOrPlmn(I)I

    move-result v12

    .line 1330
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1336
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_7b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1339
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->hasCallDual(I)Z

    move-result v12

    .line 1340
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    if-eqz v12, :cond_3d

    const/4 v1, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1341
    :cond_3d
    const/4 v1, 0x0

    goto :goto_3e

    .line 1346
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_7c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1349
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDualLocationUpdatesBySlotId(I)V

    .line 1350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1355
    .end local v2    # "_arg0":I
    :sswitch_7d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1358
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDualLocationUpdatesBySlotId(I)V

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1364
    .end local v2    # "_arg0":I
    :sswitch_7e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1367
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualCellLocationBySlotId(I)Landroid/os/Bundle;

    move-result-object v12

    .line 1368
    .local v12, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    if-eqz v12, :cond_3e

    .line 1370
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1376
    :goto_3f
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1374
    :cond_3e
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 1380
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Landroid/os/Bundle;
    :sswitch_7f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1384
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1385
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualNeighboringCellInfoBySlotId(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 1386
    .restart local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1388
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1392
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_80
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1395
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualCallStateBySlotId(I)I

    move-result v12

    .line 1396
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1402
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_81
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1405
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualDataActivityBySlotId(I)I

    move-result v12

    .line 1406
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1407
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1408
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1412
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_82
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1415
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualDataStateBySlotId(I)I

    move-result v12

    .line 1416
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1422
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_83
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1425
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualActivePhoneTypeBySlotId(I)I

    move-result v12

    .line 1426
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1432
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_84
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1435
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualVoiceMessageCountBySlotId(I)I

    move-result v12

    .line 1436
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1438
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1442
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_85
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1445
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualNetworkTypeBySlotId(I)I

    move-result v12

    .line 1446
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1452
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_86
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1455
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualDataNetworkTypeBySlotId(I)I

    move-result v12

    .line 1456
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1458
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1462
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_87
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1465
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualVoiceNetworkTypeBySlotId(I)I

    move-result v12

    .line 1466
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1472
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_88
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1475
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->hasDualIccCardBySlotId(I)Z

    move-result v12

    .line 1476
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    if-eqz v12, :cond_3f

    const/4 v1, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1478
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1477
    :cond_3f
    const/4 v1, 0x0

    goto :goto_40

    .line 1482
    .end local v2    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_89
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1485
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualPbTotalParamOnIccBySlotId(I)I

    move-result v12

    .line 1486
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1487
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1488
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1492
    .end local v2    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_8a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1496
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1497
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRasConnectFunctionBySlotId(II)Z

    move-result v12

    .line 1498
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1499
    if-eqz v12, :cond_40

    const/4 v1, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1499
    :cond_40
    const/4 v1, 0x0

    goto :goto_41

    .line 1504
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_8b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1508
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    .line 1509
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1515
    .local v3, "_arg1":Landroid/os/Bundle;
    :goto_42
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1517
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1518
    .restart local v5    # "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v12

    .line 1519
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    if-eqz v12, :cond_42

    const/4 v1, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    if-eqz v4, :cond_43

    .line 1522
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1528
    :goto_44
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1512
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":I
    .end local v12    # "_result":Z
    :cond_41
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_42

    .line 1520
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    .restart local v5    # "_arg3":I
    .restart local v12    # "_result":Z
    :cond_42
    const/4 v1, 0x0

    goto :goto_43

    .line 1526
    :cond_43
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 1532
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":I
    .end local v12    # "_result":Z
    :sswitch_8c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1536
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1537
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendCommandToRilBySlotId(ILjava/lang/String;)V

    .line 1538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1543
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_8d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1546
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v12

    .line 1547
    .local v12, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1549
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
