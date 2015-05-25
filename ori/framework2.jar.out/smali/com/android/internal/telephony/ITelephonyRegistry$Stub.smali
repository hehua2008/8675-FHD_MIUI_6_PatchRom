.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final TRANSACTION_listen:I = 0x1

.field static final TRANSACTION_listenDual:I = 0xc

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0x6

.field static final TRANSACTION_notifyCallState:I = 0x2

.field static final TRANSACTION_notifyCellInfo:I = 0x16

.field static final TRANSACTION_notifyCellLocation:I = 0xa

.field static final TRANSACTION_notifyDataActivity:I = 0x7

.field static final TRANSACTION_notifyDataConnection:I = 0x8

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0x9

.field static final TRANSACTION_notifyDualCallForwardingChanged:I = 0x11

.field static final TRANSACTION_notifyDualCallState:I = 0xd

.field static final TRANSACTION_notifyDualCellInfo:I = 0x17

.field static final TRANSACTION_notifyDualCellLocation:I = 0x15

.field static final TRANSACTION_notifyDualDataActivity:I = 0x12

.field static final TRANSACTION_notifyDualDataConnection:I = 0x13

.field static final TRANSACTION_notifyDualDataConnectionFailed:I = 0x14

.field static final TRANSACTION_notifyDualMessageWaitingChanged:I = 0x10

.field static final TRANSACTION_notifyDualServiceState:I = 0xe

.field static final TRANSACTION_notifyDualSignalStrength:I = 0xf

.field static final TRANSACTION_notifyMessageWaitingChanged:I = 0x5

.field static final TRANSACTION_notifyOperateFactoryNumberDone:I = 0x18

.field static final TRANSACTION_notifyOtaspChanged:I = 0xb

.field static final TRANSACTION_notifyServiceState:I = 0x3

.field static final TRANSACTION_notifySignalStrength:I = 0x4

.field static final TRANSACTION_notifySlotCardInfo:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
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
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 397
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 56
    .local v4, "_arg3":Z
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "_arg3":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 62
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v3    # "_arg2":I
    :sswitch_2
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(ILjava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ServiceState;

    .line 81
    .local v1, "_arg0":Landroid/telephony/ServiceState;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceState(Landroid/telephony/ServiceState;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "_arg0":Landroid/telephony/ServiceState;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/ServiceState;
    goto :goto_2

    .line 87
    .end local v1    # "_arg0":Landroid/telephony/ServiceState;
    :sswitch_4
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrength;

    .line 95
    .local v1, "_arg0":Landroid/telephony/SignalStrength;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrength(Landroid/telephony/SignalStrength;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "_arg0":Landroid/telephony/SignalStrength;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_3

    .line 101
    .end local v1    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_5
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 104
    .local v1, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChanged(Z)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 103
    .end local v1    # "_arg0":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 110
    :sswitch_6
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 113
    .restart local v1    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 112
    .end local v1    # "_arg0":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 119
    :sswitch_7
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 128
    .end local v1    # "_arg0":I
    :sswitch_8
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .line 134
    .local v2, "_arg1":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    .line 147
    .local v6, "_arg5":Landroid/net/LinkProperties;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    sget-object v0, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkCapabilities;

    .line 154
    .local v7, "_arg6":Landroid/net/LinkCapabilities;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 156
    .local v8, "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v9, 0x1

    .local v9, "_arg8":Z
    :goto_9
    move-object v0, p0

    .line 157
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 132
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/net/LinkProperties;
    .end local v7    # "_arg6":Landroid/net/LinkCapabilities;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 144
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v4    # "_arg3":Ljava/lang/String;
    .restart local v5    # "_arg4":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/net/LinkProperties;
    goto :goto_7

    .line 151
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/net/LinkCapabilities;
    goto :goto_8

    .line 156
    .restart local v8    # "_arg7":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_9

    .line 163
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/net/LinkProperties;
    .end local v7    # "_arg6":Landroid/net/LinkCapabilities;
    .end local v8    # "_arg7":I
    :sswitch_9
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 174
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 177
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 182
    .local v1, "_arg0":Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocation(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 180
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_a

    .line 188
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_b
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 191
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOtaspChanged(I)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 197
    .end local v1    # "_arg0":I
    :sswitch_c
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    move-result-object v2

    .line 203
    .local v2, "_arg1":Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v4, 0x1

    .line 206
    .local v4, "_arg3":Z
    :goto_b
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenDual(Ljava/lang/String;Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;IZ)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 205
    .end local v4    # "_arg3":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 212
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;
    .end local v3    # "_arg2":I
    :sswitch_d
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 219
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualCallState(ILjava/lang/String;I)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 225
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_e
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 228
    sget-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ServiceState;

    .line 234
    .local v1, "_arg0":Landroid/telephony/ServiceState;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 235
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualServiceState(Landroid/telephony/ServiceState;I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 231
    .end local v1    # "_arg0":Landroid/telephony/ServiceState;
    .end local v2    # "_arg1":I
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/ServiceState;
    goto :goto_c

    .line 241
    .end local v1    # "_arg0":Landroid/telephony/ServiceState;
    :sswitch_f
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 244
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrength;

    .line 250
    .local v1, "_arg0":Landroid/telephony/SignalStrength;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualSignalStrength(Landroid/telephony/SignalStrength;I)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 247
    .end local v1    # "_arg0":Landroid/telephony/SignalStrength;
    .end local v2    # "_arg1":I
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_d

    .line 257
    .end local v1    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_10
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 261
    .local v1, "_arg0":Z
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 262
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualMessageWaitingChanged(ZI)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 259
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 268
    :sswitch_11
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 272
    .restart local v1    # "_arg0":Z
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualCallForwardingChanged(ZI)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 270
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 279
    :sswitch_12
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualDataActivity(II)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 290
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_13
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    .line 296
    .local v2, "_arg1":Z
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 302
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 303
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    .line 309
    .restart local v6    # "_arg5":Landroid/net/LinkProperties;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 310
    sget-object v0, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkCapabilities;

    .line 316
    .restart local v7    # "_arg6":Landroid/net/LinkCapabilities;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 318
    .restart local v8    # "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v9, 0x1

    .line 320
    .restart local v9    # "_arg8":Z
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg9":I
    move-object v0, p0

    .line 321
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 294
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/net/LinkProperties;
    .end local v7    # "_arg6":Landroid/net/LinkCapabilities;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Z
    .end local v10    # "_arg9":I
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 306
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v4    # "_arg3":Ljava/lang/String;
    .restart local v5    # "_arg4":Ljava/lang/String;
    :cond_10
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/net/LinkProperties;
    goto :goto_11

    .line 313
    :cond_11
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/net/LinkCapabilities;
    goto :goto_12

    .line 318
    .restart local v8    # "_arg7":I
    :cond_12
    const/4 v9, 0x0

    goto :goto_13

    .line 327
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/net/LinkProperties;
    .end local v7    # "_arg6":Landroid/net/LinkCapabilities;
    .end local v8    # "_arg7":I
    :sswitch_14
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 340
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_15
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 343
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 349
    .local v1, "_arg0":Landroid/os/Bundle;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 350
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualCellLocation(Landroid/os/Bundle;I)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 346
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_arg1":I
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_14

    .line 356
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_16
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 359
    .local v11, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 365
    .end local v11    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_17
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 369
    .restart local v11    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 370
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v11, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualCellInfo(Ljava/util/List;I)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 376
    .end local v2    # "_arg1":I
    .end local v11    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_18
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 382
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOperateFactoryNumberDone(IILjava/lang/String;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 389
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_19
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    sget-object v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 392
    .local v1, "_arg0":[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    const/4 v0, 0x1

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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
