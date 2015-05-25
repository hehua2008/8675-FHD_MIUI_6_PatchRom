.class public Lcom/android/internal/telephony/PhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhoneSubInfoProxy"

.field private static mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

.field private static mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 2
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    :goto_0
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void

    :cond_1
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;I)V
    .locals 1
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;
    .param p2, "mPhoneId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    :cond_0
    :goto_0
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    if-eqz v0, :cond_1

    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, -0x1

    .local v0, "phoneId":I
    const-string v1, "PhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSlotIdToPhoneId: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneIdBySlotId(I)I

    move-result v0

    const-string v1, "PhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSlotIdToPhoneId: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 2

    .prologue
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    move-object v0, p1

    .local v0, "retAddress":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public filterCallAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    move-object v0, p1

    .local v0, "retAddress":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public filterSmsAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAudioRevision()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualAudioRevision(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualAudioRevisionBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getBackCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualCardType(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCardType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCardType()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumberBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualDeviceIdBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualDeviceSvn(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualDeviceSvnBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualEriVersion(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaEriVersion()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaEriVersion()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualEriVersionBySlotId(I)I
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualEsn(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getEsn()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getEsn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualEsnBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualGroupIdLevel1(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualGroupIdLevel1BySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualIccSerialNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualIccSerialNumberBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualLine1AlphaTagBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualLine1Number(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualLine1NumberBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualMLPLVersion(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMLPLVersion()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMLPLVersion()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualMSPLVersion(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMSPLVersion()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMSPLVersion()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualMin(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualMinBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualPrlVersion(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "yulong.gsm.plmn.ver"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "persist.yulong.cdma.prl.ver"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualPrlVersionBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualRFCalibration(I)[I
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .local v0, "defaultDualRFCalibration":[I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    .end local v0    # "defaultDualRFCalibration":[I
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "defaultDualRFCalibration":[I
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getDualRFCalibrationBySlotId(I)[I
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualSnId(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualSnIdBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualSubscriberIdBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualUimId(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaUimId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaUimId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualUimIdBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualVoiceMailAlphaTagBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualVoiceMailNumberBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "phoneCount":I
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getPhoneTypeByPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    invoke-static {p1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getRFCalibration()[I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    return-object v0
.end method

.method public getRegIdd(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const-string v0, ""

    .local v0, "retIddStr":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRegIdd(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRegIdd(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRegIddBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYLDeviceId(II)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I
    .param p2, "devType"    # I

    .prologue
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->getYLDeviceId(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->getYLDeviceId(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getYLDeviceIdBySlotId(II)Ljava/lang/String;
    .locals 2
    .param p1, "mSlotId"    # I
    .param p2, "devType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    return v0
.end method

.method public operateFactoryNumber(IILjava/lang/String;I)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "operate"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfo;->operateFactoryNumber(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfo;->operateFactoryNumber(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public operateFactoryNumberBySlotId(IILjava/lang/String;I)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "operate"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 1
    .param p1, "ioCode"    # I
    .param p2, "inData"    # Landroid/os/Bundle;
    .param p3, "outData"    # Landroid/os/Bundle;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public phoneSubDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 2
    .param p1, "ioCode"    # I
    .param p2, "inData"    # Landroid/os/Bundle;
    .param p3, "outData"    # Landroid/os/Bundle;
    .param p4, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "ioCode"    # I
    .param p2, "inData"    # Landroid/os/Bundle;
    .param p3, "outData"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public querySingleOrDual()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSignalOrDualPhone()I

    move-result v0

    return v0
.end method

.method public setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setLine1Number(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setLine1Number(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDualLine1NumberBySlotId(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 2
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;

    .prologue
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public setPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;I)V
    .locals 1
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;
    .param p2, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 0
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;

    .prologue
    return-void
.end method
