.class public abstract Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;
.super Landroid/os/Binder;
.source "IPhoneSlotService.java"

# interfaces
.implements Lcom/yulong/android/internal/telephony/IPhoneSlotService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/IPhoneSlotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.internal.telephony.IPhoneSlotService"

.field static final TRANSACTION_getCardInfoBySlotId:I = 0x3

.field static final TRANSACTION_getSlotConnectMode:I = 0x2

.field static final TRANSACTION_hotSwapCheckCard:I = 0xa

.field static final TRANSACTION_registerClient:I = 0x4

.field static final TRANSACTION_resetTouchScreen:I = 0x7

.field static final TRANSACTION_savaAllCardInfoToNativeService:I = 0x8

.field static final TRANSACTION_saveInfoToNativeService:I = 0x6

.field static final TRANSACTION_savePinToNativeService:I = 0x5

.field static final TRANSACTION_switchDsDsService:I = 0xb

.field static final TRANSACTION_switchSlotBindMode:I = 0x1

.field static final TRANSACTION_updateCardStateToNativeService:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p0, p0, v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;
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
    const-string v1, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v9, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->switchSlotBindMode(II)Z

    move-result v7

    .line 53
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v7, :cond_0

    move v0, v8

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :sswitch_2
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->getSlotConnectMode()I

    move-result v7

    .line 61
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v7    # "_result":I
    :sswitch_3
    const-string v9, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v7

    .line 71
    .local v7, "_result":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v7, :cond_1

    .line 73
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v7, p3, v8}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :sswitch_4
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->registerClient()I

    move-result v7

    .line 85
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v7    # "_result":I
    :sswitch_5
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->savePinToNativeService(Ljava/lang/String;I)I

    move-result v7

    .line 97
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":I
    :sswitch_6
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 117
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_result":I
    :sswitch_7
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->resetTouchScreen()I

    move-result v7

    .line 125
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v7    # "_result":I
    :sswitch_8
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    sget-object v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->CREATOR_MGR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 140
    .local v1, "_arg0":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->savaAllCardInfoToNativeService(Lcom/yulong/android/internal/telephony/SlotCardInfo;I)I

    move-result v7

    .line 142
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v1    # "_arg0":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    goto :goto_1

    .line 150
    .end local v1    # "_arg0":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :sswitch_9
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->updateCardStateToNativeService(II)I

    move-result v7

    .line 154
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v7    # "_result":I
    :sswitch_a
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->hotSwapCheckCard(I)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    .end local v1    # "_arg0":I
    :sswitch_b
    const-string v0, "com.yulong.android.internal.telephony.IPhoneSlotService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->switchDsDsService(I)I

    move-result v7

    .line 172
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
