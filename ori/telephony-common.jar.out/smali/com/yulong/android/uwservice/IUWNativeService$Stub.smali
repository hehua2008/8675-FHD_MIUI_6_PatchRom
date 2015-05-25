.class public abstract Lcom/yulong/android/uwservice/IUWNativeService$Stub;
.super Landroid/os/Binder;
.source "IUWNativeService.java"

# interfaces
.implements Lcom/yulong/android/uwservice/IUWNativeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/uwservice/IUWNativeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/uwservice/IUWNativeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.uwservice.IUWNativeService"

.field static final TRANSACTION_UWDereg:I = 0x4

.field static final TRANSACTION_UWGetConnInfo:I = 0x6

.field static final TRANSACTION_UWGetConnStats:I = 0x7

.field static final TRANSACTION_UWGetConnStatus:I = 0x5

.field static final TRANSACTION_UWHangUpCall:I = 0x3

.field static final TRANSACTION_UWMakeCall:I = 0x2

.field static final TRANSACTION_UWReg:I = 0x1

.field static final TRANSACTION_UWstartPppoe:I = 0x8

.field static final TRANSACTION_UWstopPppoe:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p0, p0, v0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/uwservice/IUWNativeService;
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
    const-string v1, "com.yulong.android.uwservice.IUWNativeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/uwservice/IUWNativeService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/yulong/android/uwservice/IUWNativeService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/yulong/android/uwservice/IUWNativeService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/yulong/android/uwservice/IUWJavaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/uwservice/IUWJavaService;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/yulong/android/uwservice/IUWJavaService;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    sget-object v4, Lcom/yulong/android/telephony/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/telephony/PPPOEConfig;

    .line 57
    .local v1, "_arg1":Lcom/yulong/android/telephony/PPPOEConfig;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->UWstartPppoe(Lcom/yulong/android/uwservice/IUWJavaService;Lcom/yulong/android/telephony/PPPOEConfig;)I

    move-result v2

    .line 58
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1    # "_arg1":Lcom/yulong/android/telephony/PPPOEConfig;
    .end local v2    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/yulong/android/telephony/PPPOEConfig;
    goto :goto_1

    .line 64
    .end local v0    # "_arg0":Lcom/yulong/android/uwservice/IUWJavaService;
    .end local v1    # "_arg1":Lcom/yulong/android/telephony/PPPOEConfig;
    :sswitch_2
    const-string v4, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->UWstopPppoe()I

    move-result v2

    .line 66
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v2    # "_result":I
    :sswitch_3
    const-string v4, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/yulong/android/uwservice/IUWJavaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/uwservice/IUWJavaService;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Lcom/yulong/android/uwservice/IUWJavaService;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    sget-object v4, Lcom/yulong/android/uwservice/DialParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/uwservice/DialParameters;

    .line 90
    .local v1, "_arg1":Lcom/yulong/android/uwservice/DialParameters;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->UWReg(Lcom/yulong/android/uwservice/IUWJavaService;Lcom/yulong/android/uwservice/DialParameters;)I

    move-result v2

    .line 91
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v1    # "_arg1":Lcom/yulong/android/uwservice/DialParameters;
    .end local v2    # "_result":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/yulong/android/uwservice/DialParameters;
    goto :goto_2

    .line 97
    .end local v0    # "_arg0":Lcom/yulong/android/uwservice/IUWJavaService;
    .end local v1    # "_arg1":Lcom/yulong/android/uwservice/DialParameters;
    :sswitch_4
    const-string v4, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->UWMakeCall(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 103
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 109
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_5
    const-string v4, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->UWHangUpCall()I

    move-result v2

    .line 111
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v2    # "_result":I
    :sswitch_6
    const-string v4, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->UWDereg()I

    move-result v2

    .line 119
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v2    # "_result":I
    :sswitch_7
    const-string v4, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->UWGetConnStatus()I

    move-result v2

    .line 127
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v2    # "_result":I
    :sswitch_8
    const-string v4, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/yulong/android/uwservice/ConnectionInformation;

    invoke-direct {v0}, Lcom/yulong/android/uwservice/ConnectionInformation;-><init>()V

    .line 136
    .local v0, "_arg0":Lcom/yulong/android/uwservice/ConnectionInformation;
    invoke-virtual {p0, v0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->UWGetConnInfo(Lcom/yulong/android/uwservice/ConnectionInformation;)I

    move-result v2

    .line 137
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {v0, p3, v3}, Lcom/yulong/android/uwservice/ConnectionInformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 144
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v0    # "_arg0":Lcom/yulong/android/uwservice/ConnectionInformation;
    .end local v2    # "_result":I
    :sswitch_9
    const-string v4, "com.yulong.android.uwservice.IUWNativeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/yulong/android/uwservice/ConnectionStatistic;

    invoke-direct {v0}, Lcom/yulong/android/uwservice/ConnectionStatistic;-><init>()V

    .line 153
    .local v0, "_arg0":Lcom/yulong/android/uwservice/ConnectionStatistic;
    invoke-virtual {p0, v0}, Lcom/yulong/android/uwservice/IUWNativeService$Stub;->UWGetConnStats(Lcom/yulong/android/uwservice/ConnectionStatistic;)I

    move-result v2

    .line 154
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v0, p3, v3}, Lcom/yulong/android/uwservice/ConnectionStatistic;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 161
    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
