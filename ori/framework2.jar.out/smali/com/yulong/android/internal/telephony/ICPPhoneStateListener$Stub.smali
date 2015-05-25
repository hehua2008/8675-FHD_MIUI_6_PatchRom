.class public abstract Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "ICPPhoneStateListener.java"

# interfaces
.implements Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.internal.telephony.ICPPhoneStateListener"

.field static final TRANSACTION_onDualCallForwardingIndicatorChanged:I = 0x4

.field static final TRANSACTION_onDualCallStateChanged:I = 0x6

.field static final TRANSACTION_onDualCellInfoChanged:I = 0xa

.field static final TRANSACTION_onDualCellLocationChanged:I = 0x5

.field static final TRANSACTION_onDualDataActivity:I = 0x8

.field static final TRANSACTION_onDualDataConnectionStateChanged:I = 0x7

.field static final TRANSACTION_onDualMessageWaitingIndicatorChanged:I = 0x3

.field static final TRANSACTION_onDualNotifyFactoryNumberDone:I = 0xb

.field static final TRANSACTION_onDualNotifySlotCardInfo:I = 0xc

.field static final TRANSACTION_onDualServiceStateChanged:I = 0x1

.field static final TRANSACTION_onDualSignalStrengthChanged:I = 0x2

.field static final TRANSACTION_onDualSignalStrengthsChanged:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;
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
    const-string v1, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    sget-object v5, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    .line 56
    .local v0, "_arg0":Landroid/telephony/ServiceState;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Landroid/telephony/ServiceState;
    .end local v2    # "_arg1":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telephony/ServiceState;
    goto :goto_1

    .line 62
    .end local v0    # "_arg0":Landroid/telephony/ServiceState;
    :sswitch_2
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualSignalStrengthChanged(II)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_3
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 76
    .local v0, "_arg0":Z
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualMessageWaitingIndicatorChanged(ZI)V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 86
    .restart local v0    # "_arg0":Z
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualCallForwardingIndicatorChanged(ZI)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 95
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 101
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualCellLocationChanged(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_arg1":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_2

    .line 107
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_6
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualCallStateChanged(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_7
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualDataConnectionStateChanged(III)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_8
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualDataActivity(II)V

    goto/16 :goto_0

    .line 141
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_9
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    sget-object v5, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    .line 150
    .local v0, "_arg0":Landroid/telephony/SignalStrength;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    goto/16 :goto_0

    .line 147
    .end local v0    # "_arg0":Landroid/telephony/SignalStrength;
    .end local v2    # "_arg1":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_3

    .line 156
    .end local v0    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_a
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    sget-object v5, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualCellInfoChanged(Ljava/util/List;I)V

    goto/16 :goto_0

    .line 166
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v2    # "_arg1":I
    :sswitch_b
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualNotifyFactoryNumberDone(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_c
    const-string v5, "com.yulong.android.internal.telephony.ICPPhoneStateListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    sget-object v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 181
    .local v0, "_arg0":[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->onDualNotifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
