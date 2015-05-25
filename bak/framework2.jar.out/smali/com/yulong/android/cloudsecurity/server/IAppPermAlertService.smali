.class public interface abstract Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;
.super Ljava/lang/Object;
.source "IAppPermAlertService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendAppPermInfo(Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendSWInfo(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
