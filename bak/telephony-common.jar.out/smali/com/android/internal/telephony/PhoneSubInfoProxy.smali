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
    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 41
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 42
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 47
    :goto_0
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 50
    :cond_0
    return-void

    .line 44
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;I)V
    .locals 1
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;
    .param p2, "mPhoneId"    # I

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 187
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 188
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 194
    :cond_0
    :goto_0
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 195
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 199
    :cond_1
    return-void

    .line 190
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 191
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 525
    const/4 v0, -0x1

    .line 526
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

    .line 527
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneIdBySlotId(I)I

    move-result v0

    .line 528
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

    .line 529
    return v0
.end method

.method private getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 180
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 182
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
    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 431
    move-object v0, p1

    .line 432
    .local v0, "retAddress":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 433
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_0
    :goto_0
    return-object v0

    .line 434
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 435
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
    .line 608
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
    .line 416
    move-object v0, p1

    .line 417
    .local v0, "retAddress":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 418
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_0
    :goto_0
    return-object v0

    .line 419
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 420
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
    .line 603
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAudioRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
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
    .line 347
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 348
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    .line 349
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 350
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
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
    .line 586
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 481
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
    .line 662
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 663
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCardType()I

    move-result v0

    .line 667
    :goto_0
    return v0

    .line 664
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 665
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCardType()I

    move-result v0

    goto :goto_0

    .line 667
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 323
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 324
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 325
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 326
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
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
    .line 571
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 222
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 223
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 224
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 225
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
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
    .line 533
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualDeviceSvn(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 258
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 259
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 260
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 261
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
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
    .line 537
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualEriVersion(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 463
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 464
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaEriVersion()I

    move-result v0

    .line 468
    :goto_0
    return v0

    .line 465
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 466
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaEriVersion()I

    move-result v0

    goto :goto_0

    .line 468
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
    .line 616
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualEsn(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 402
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 403
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getEsn()Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    .line 404
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 405
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getEsn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
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
    .line 598
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
    .line 645
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
    .line 650
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualIccSerialNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 276
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 277
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 278
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 279
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
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
    .line 551
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 306
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 307
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 308
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 309
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
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
    .line 561
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualLine1Number(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 285
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 286
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 288
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
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
    .line 556
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
    .line 673
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 674
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMLPLVersion()I

    move-result v0

    .line 678
    :goto_0
    return v0

    .line 675
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 676
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMLPLVersion()I

    move-result v0

    goto :goto_0

    .line 678
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
    .line 684
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 685
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMSPLVersion()I

    move-result v0

    .line 689
    :goto_0
    return v0

    .line 686
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 687
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMSPLVersion()I

    move-result v0

    goto :goto_0

    .line 689
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualMin(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 472
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 473
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    .line 474
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 475
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 477
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
    .line 620
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualPrlVersion(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 378
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 379
    const-string v0, "yulong.gsm.plmn.ver"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 380
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 381
    const-string v0, "persist.yulong.cdma.prl.ver"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 383
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
    .line 590
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualRFCalibration(I)[I
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 360
    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 361
    .local v0, "defaultDualRFCalibration":[I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 362
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    .line 366
    .end local v0    # "defaultDualRFCalibration":[I
    :cond_0
    :goto_0
    return-object v0

    .line 363
    .restart local v0    # "defaultDualRFCalibration":[I
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 364
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    goto :goto_0

    .line 360
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
    .line 581
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualSnId(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 250
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 251
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 252
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 253
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
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
    .line 541
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 267
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 268
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 269
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 270
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
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
    .line 546
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualUimId(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 390
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 391
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaUimId()Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    .line 392
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 393
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaUimId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
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
    .line 594
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 333
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 334
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 335
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 336
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
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
    .line 576
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 315
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 316
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 317
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 318
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
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
    .line 566
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
    .line 656
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 2

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "phoneCount":I
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    add-int/lit8 v0, v0, 0x1

    .line 706
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    add-int/lit8 v0, v0, 0x1

    .line 710
    :cond_1
    return v0
.end method

.method public getPhoneTypeByPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 693
    invoke-static {p1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getRFCalibration()[I
    .locals 1

    .prologue
    .line 356
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
    .line 446
    const-string v0, ""

    .line 447
    .local v0, "retIddStr":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 448
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRegIdd(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_0
    :goto_0
    return-object v0

    .line 449
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 450
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
    .line 612
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
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
    .line 231
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 233
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->getYLDeviceId(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 246
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 238
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 240
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->getYLDeviceId(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 241
    :catch_1
    move-exception v0

    .line 243
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
    .line 639
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 697
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
    .line 493
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    .line 495
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfo;->operateFactoryNumber(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 501
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfo;->operateFactoryNumber(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 502
    :catch_1
    move-exception v0

    .line 503
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
    .line 630
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
    .line 510
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 511
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    .line 515
    :goto_0
    return v0

    .line 512
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 513
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 515
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
    .line 635
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
    .line 520
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
    .line 715
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSignalOrDualPhone()I

    move-result v0

    return v0
.end method

.method public setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 485
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 298
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 299
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setLine1Number(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 301
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
    .line 625
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 2
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;

    .prologue
    .line 202
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 203
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 209
    :goto_0
    return-void

    .line 205
    :cond_0
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public setPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;I)V
    .locals 1
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;
    .param p2, "mPhoneId"    # I

    .prologue
    .line 214
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 215
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 217
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 0
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;

    .prologue
    .line 54
    return-void
.end method
