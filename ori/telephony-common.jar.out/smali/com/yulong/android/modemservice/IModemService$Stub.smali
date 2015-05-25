.class public abstract Lcom/yulong/android/modemservice/IModemService$Stub;
.super Landroid/os/Binder;
.source "IModemService.java"

# interfaces
.implements Lcom/yulong/android/modemservice/IModemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/modemservice/IModemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/modemservice/IModemService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.modemservice.IModemService"

.field static final TRANSACTION_getModemStatistic:I = 0x5

.field static final TRANSACTION_getModemStatus:I = 0x4

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setModemConnection:I = 0x6

.field static final TRANSACTION_startModem:I = 0x2

.field static final TRANSACTION_stopModem:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.yulong.android.modemservice.IModemService"

    invoke-virtual {p0, p0, v0}, Lcom/yulong/android/modemservice/IModemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/modemservice/IModemService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.yulong.android.modemservice.IModemService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/modemservice/IModemService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/yulong/android/modemservice/IModemService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/yulong/android/modemservice/IModemService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/modemservice/IModemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v4, "com.yulong.android.modemservice.IModemService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v4, "com.yulong.android.modemservice.IModemService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/yulong/android/modemservice/IModemServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/modemservice/IModemServiceListener;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Lcom/yulong/android/modemservice/IModemServiceListener;
    invoke-virtual {p0, v0}, Lcom/yulong/android/modemservice/IModemService$Stub;->setCallback(Lcom/yulong/android/modemservice/IModemServiceListener;)I

    move-result v2

    .line 54
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":Lcom/yulong/android/modemservice/IModemServiceListener;
    .end local v2    # "_result":I
    :sswitch_2
    const-string v4, "com.yulong.android.modemservice.IModemService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/modemservice/IModemService$Stub;->startModem(II)I

    move-result v2

    .line 65
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_3
    const-string v4, "com.yulong.android.modemservice.IModemService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/yulong/android/modemservice/IModemService$Stub;->stopModem()I

    move-result v2

    .line 72
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v2    # "_result":I
    :sswitch_4
    const-string v4, "com.yulong.android.modemservice.IModemService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/yulong/android/modemservice/IModemService$Stub;->getModemStatus()Lcom/yulong/android/modemservice/ModemStatus;

    move-result-object v2

    .line 79
    .local v2, "_result":Lcom/yulong/android/modemservice/ModemStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v2, p3, v3}, Lcom/yulong/android/modemservice/ModemStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v2    # "_result":Lcom/yulong/android/modemservice/ModemStatus;
    :sswitch_5
    const-string v4, "com.yulong.android.modemservice.IModemService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/yulong/android/modemservice/IModemService$Stub;->getModemStatistic()Lcom/yulong/android/modemservice/ModemStatistic;

    move-result-object v2

    .line 93
    .local v2, "_result":Lcom/yulong/android/modemservice/ModemStatistic;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v2, p3, v3}, Lcom/yulong/android/modemservice/ModemStatistic;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 104
    .end local v2    # "_result":Lcom/yulong/android/modemservice/ModemStatistic;
    :sswitch_6
    const-string v4, "com.yulong.android.modemservice.IModemService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 107
    .local v0, "_arg0":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yulong/android/modemservice/IModemService$Stub;->setModemConnection(Z)I

    move-result v2

    .line 108
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
