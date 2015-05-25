.class public interface abstract Lcom/yulong/android/uwservice/IUWNativeService;
.super Ljava/lang/Object;
.source "IUWNativeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/uwservice/IUWNativeService$Stub;
    }
.end annotation


# virtual methods
.method public abstract UWDereg()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UWGetConnInfo(Lcom/yulong/android/uwservice/ConnectionInformation;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UWGetConnStats(Lcom/yulong/android/uwservice/ConnectionStatistic;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UWGetConnStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UWHangUpCall()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UWMakeCall(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UWReg(Lcom/yulong/android/uwservice/IUWJavaService;Lcom/yulong/android/uwservice/DialParameters;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UWstartPppoe(Lcom/yulong/android/uwservice/IUWJavaService;Lcom/yulong/android/telephony/PPPOEConfig;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UWstopPppoe()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
