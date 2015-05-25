.class public interface abstract Lcom/redbend/vlm/IOtherDomainInfo;
.super Ljava/lang/Object;
.source "IOtherDomainInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vlm/IOtherDomainInfo$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCallState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
