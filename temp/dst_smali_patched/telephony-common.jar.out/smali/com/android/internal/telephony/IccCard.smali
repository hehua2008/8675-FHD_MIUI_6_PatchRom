.class public interface abstract Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# virtual methods
.method public abstract changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract closeLogicalChannel(ILandroid/os/Message;)V
.end method

.method public abstract exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getAtr(Landroid/os/Message;)V
.end method

.method public abstract getIccFdnEnabled()Z
.end method

.method public abstract getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
.end method

.method public abstract getIccLockEnabled()Z
.end method

.method public abstract getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
.end method

.method public abstract getServiceProviderName()Ljava/lang/String;
.end method

.method public abstract getState()Lcom/android/internal/telephony/IccCardConstants$State;
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
.end method

.method public abstract openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryPINPUKValidCount(ILandroid/os/Message;)V
.end method

.method public abstract registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setIccCardLock()Z
.end method

.method public abstract setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract unregisterForAbsent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLocked(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkLocked(Landroid/os/Handler;)V
.end method
