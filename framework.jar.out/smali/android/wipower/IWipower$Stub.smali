.class public abstract Landroid/wipower/IWipower$Stub;
.super Landroid/os/Binder;
.source "IWipower.java"

# interfaces
.implements Landroid/wipower/IWipower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wipower/IWipower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/wipower/IWipower$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.wipower.IWipower"

.field static final TRANSACTION_enableAlert:I = 0x6

.field static final TRANSACTION_enableData:I = 0x7

.field static final TRANSACTION_getCurrentLimit:I = 0x5

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_setCurrentLimit:I = 0x4

.field static final TRANSACTION_startCharging:I = 0x2

.field static final TRANSACTION_stopCharging:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.wipower.IWipower"

    invoke-virtual {p0, p0, v0}, Landroid/wipower/IWipower$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipower;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.wipower.IWipower"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/wipower/IWipower;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/wipower/IWipower;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/wipower/IWipower$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/wipower/IWipower$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v2, "android.wipower.IWipower"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "android.wipower.IWipower"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->getState()I

    move-result v1

    .line 54
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v1    # "_result":I
    :sswitch_2
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->startCharging()Z

    move-result v1

    .line 62
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->stopCharging()Z

    move-result v1

    .line 70
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v1    # "_result":Z
    :sswitch_4
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 79
    .local v0, "_arg0":B
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->setCurrentLimit(B)Z

    move-result v1

    .line 80
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":B
    .end local v1    # "_result":Z
    :sswitch_5
    const-string v2, "android.wipower.IWipower"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->getCurrentLimit()B

    move-result v1

    .line 88
    .local v1, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 94
    .end local v1    # "_result":B
    :sswitch_6
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .line 97
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->enableAlert(Z)Z

    move-result v1

    .line 98
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_4
    move v0, v2

    .line 96
    goto :goto_1

    .line 104
    :sswitch_7
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v0, v3

    .line 107
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->enableData(Z)Z

    move-result v1

    .line 108
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_6
    move v0, v2

    .line 106
    goto :goto_2

    .line 114
    :sswitch_8
    const-string v2, "android.wipower.IWipower"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/wipower/IWipowerManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipowerManagerCallback;

    move-result-object v0

    .line 117
    .local v0, "_arg0":Landroid/wipower/IWipowerManagerCallback;
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->registerCallback(Landroid/wipower/IWipowerManagerCallback;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 123
    .end local v0    # "_arg0":Landroid/wipower/IWipowerManagerCallback;
    :sswitch_9
    const-string v2, "android.wipower.IWipower"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/wipower/IWipowerManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipowerManagerCallback;

    move-result-object v0

    .line 126
    .restart local v0    # "_arg0":Landroid/wipower/IWipowerManagerCallback;
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->unregisterCallback(Landroid/wipower/IWipowerManagerCallback;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
