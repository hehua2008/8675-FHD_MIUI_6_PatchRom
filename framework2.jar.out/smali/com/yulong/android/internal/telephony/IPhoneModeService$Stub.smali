.class public abstract Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;
.super Landroid/os/Binder;
.source "IPhoneModeService.java"

# interfaces
.implements Lcom/yulong/android/internal/telephony/IPhoneModeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/IPhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.internal.telephony.IPhoneModeService"

.field static final TRANSACTION_enableLTESwitch:I = 0x11

.field static final TRANSACTION_enableLTESwitchAuto:I = 0x12

.field static final TRANSACTION_getCardInfoBySlotId:I = 0x2

.field static final TRANSACTION_getDataFirewall:I = 0xd

.field static final TRANSACTION_getPinPukValidCount:I = 0x4

.field static final TRANSACTION_isLTESwitchAllowed:I = 0xf

.field static final TRANSACTION_isLTESwitched:I = 0x10

.field static final TRANSACTION_operateUniversalInterface:I = 0x7

.field static final TRANSACTION_savaAllCardInfoToNativeService:I = 0x9

.field static final TRANSACTION_selectCloseModemCdmaOrGsmInternal:I = 0xa

.field static final TRANSACTION_selectModemAndPreferredSlot:I = 0x1

.field static final TRANSACTION_setCallBack:I = 0x6

.field static final TRANSACTION_setCurConnectMode:I = 0xb

.field static final TRANSACTION_setDataFirewall:I = 0xe

.field static final TRANSACTION_setNetSelectMode:I = 0xc

.field static final TRANSACTION_setPinByIccLockSettings:I = 0x8

.field static final TRANSACTION_supplyDualPin:I = 0x3

.field static final TRANSACTION_supplyDualPuk:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p0, p0, v0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneModeService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/internal/telephony/IPhoneModeService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/yulong/android/internal/telephony/IPhoneModeService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->selectModemAndPreferredSlot(III)I

    move-result v3

    .line 55
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :sswitch_2
    const-string v6, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v3

    .line 65
    .local v3, "_result":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {v3, p3, v5}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :sswitch_3
    const-string v6, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v3

    .line 83
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_4
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->getPinPukValidCount(II)I

    move-result v3

    .line 95
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_5
    const-string v6, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 109
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :sswitch_6
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    move-result-object v0

    .line 119
    .local v0, "_arg0":Lcom/yulong/android/internal/telephony/IPhoneModeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->setCallBack(Lcom/yulong/android/internal/telephony/IPhoneModeListener;I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":Lcom/yulong/android/internal/telephony/IPhoneModeListener;
    .end local v1    # "_arg1":I
    :sswitch_7
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->operateUniversalInterface(III)I

    move-result v3

    .line 134
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :sswitch_8
    const-string v6, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 148
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :sswitch_9
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    sget-object v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->CREATOR_MGR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 163
    .local v0, "_arg0":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->savaAllCardInfoToNativeService(Lcom/yulong/android/internal/telephony/SlotCardInfo;I)I

    move-result v3

    .line 165
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    goto :goto_1

    .line 171
    .end local v0    # "_arg0":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :sswitch_a
    const-string v6, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v1, v5

    .line 176
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->selectCloseModemCdmaOrGsmInternal(IZ)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_5
    move v1, v4

    .line 175
    goto :goto_2

    .line 182
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->setCurConnectMode(I)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 191
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->setNetSelectMode(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 200
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 203
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->getDataFirewall(I)I

    move-result v3

    .line 204
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 210
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_e
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->setDataFirewall(II)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_f
    const-string v6, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->isLTESwitchAllowed()Z

    move-result v3

    .line 223
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v3, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v3    # "_result":Z
    :sswitch_10
    const-string v6, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->isLTESwitched()Z

    move-result v3

    .line 231
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v3    # "_result":Z
    :sswitch_11
    const-string v6, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    move v0, v5

    .line 240
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->enableLTESwitch(Z)Z

    move-result v3

    .line 241
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_9
    move v0, v4

    .line 239
    goto :goto_3

    .line 247
    :sswitch_12
    const-string v4, "com.yulong.android.internal.telephony.IPhoneModeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->enableLTESwitchAuto()I

    move-result v3

    .line 249
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
