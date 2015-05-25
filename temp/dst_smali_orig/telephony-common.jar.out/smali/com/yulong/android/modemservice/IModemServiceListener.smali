.class public interface abstract Lcom/yulong/android/modemservice/IModemServiceListener;
.super Ljava/lang/Object;
.source "IModemServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/modemservice/IModemServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onModemDisconnectRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onModemServiceCallback(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onModemTrafficCallback(IIJJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
