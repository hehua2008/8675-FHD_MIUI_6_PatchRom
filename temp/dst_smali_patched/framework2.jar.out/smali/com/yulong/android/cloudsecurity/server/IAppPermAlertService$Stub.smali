.class public abstract Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService$Stub;
.super Landroid/os/Binder;
.source "IAppPermAlertService.java"

# interfaces
.implements Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.cloudsecurity.server.IAppPermAlertService"

.field static final TRANSACTION_sendAppPermInfo:I = 0x1

.field static final TRANSACTION_sendSWInfo:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yulong.android.cloudsecurity.server.IAppPermAlertService"

    invoke-virtual {p0, p0, v0}, Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.yulong.android.cloudsecurity.server.IAppPermAlertService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
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

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v2, "com.yulong.android.cloudsecurity.server.IAppPermAlertService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.yulong.android.cloudsecurity.server.IAppPermAlertService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    .local v0, "_arg0":Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService$Stub;->sendAppPermInfo(Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z

    move-result v1

    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .end local v1    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    goto :goto_1

    .end local v0    # "_arg0":Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :sswitch_2
    const-string v4, "com.yulong.android.cloudsecurity.server.IAppPermAlertService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService$Stub;->sendSWInfo(I)Z

    move-result v1

    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
