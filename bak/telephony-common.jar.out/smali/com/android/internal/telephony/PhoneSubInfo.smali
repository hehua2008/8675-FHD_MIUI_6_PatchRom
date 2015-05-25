.class public Lcom/android/internal/telephony/PhoneSubInfo;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneSubInfo$1;
    }
.end annotation


# static fields
.field private static final CALL_PRIVILEGED:Ljava/lang/String; = "android.permission.CALL_PRIVILEGED"

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PRIVILEGED_PHONE_STATE"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 65
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump PhoneSubInfo from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string v0, "Phone Subscriber Info:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Phone Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Device ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  sn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "iPhoneId"    # I

    .prologue
    .line 406
    move-object v1, p1

    .line 407
    .local v1, "retAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "Requires READ_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 412
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/yulong/android/internal/telephony/InternationalAddressUtil;->filterCallAddress(Ljava/lang/String;ILandroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 419
    :cond_0
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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
    .line 770
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [filterCallAddressBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v0, ""

    return-object v0
.end method

.method public filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "iPhoneId"    # I

    .prologue
    .line 384
    move-object v1, p1

    .line 385
    .local v1, "retAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "Requires READ_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/yulong/android/internal/telephony/InternationalAddressUtil;->filterSmsAddress(Ljava/lang/String;ILandroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 397
    :cond_0
    :goto_0
    return-object v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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
    .line 763
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [filterSmsAddressBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v0, ""

    return-object v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 73
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    const-string v1, "PHONE"

    const-string v2, "PhoneSubInfo finalized"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "PHONE"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAudioRevision()Ljava/lang/String;
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 448
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: [getBackCallNumber] key ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v1, ""

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "backCallNumber":Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: [getBackCallNumber] backCallNumber ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-object v0
.end method

.method public getCardType()I
    .locals 3

    .prologue
    .line 845
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 846
    .local v0, "icc":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_1

    .line 847
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    const/4 v1, 0x2

    .line 853
    :goto_0
    return v1

    .line 850
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 853
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCdmaEriVersion()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriVersion()I

    move-result v0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getCdmaMin] "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaUimId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCdmaUimId  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCdmaUimId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaUimId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CALL_PRIVILEGED"

    const-string v3, "Requires CALL_PRIVILEGED"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "number":Ljava/lang/String;
    const-string v1, "PHONE"

    const-string v2, "VM: PhoneSubInfo.getCompleteVoiceMailNUmber: "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualAudioRevision(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 321
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualAudioRevision."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v0, ""

    return-object v0
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
    .line 738
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualAudioRevisionBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string v0, ""

    return-object v0
.end method

.method public getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getDualBackCallNumber] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x0

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
    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 302
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualCompleteVoiceMailNumber."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, ""

    return-object v0
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
    .line 716
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualCompleteVoiceMailNumberBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string v0, ""

    return-object v0
.end method

.method public getDualDeviceId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 245
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualDeviceId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v0, ""

    return-object v0
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
    .line 663
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualDeviceIdBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v0, ""

    return-object v0
.end method

.method public getDualDeviceSvn(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 260
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualDeviceSvn."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v0, ""

    return-object v0
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
    .line 669
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualDeviceSvnBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v0, ""

    return-object v0
.end method

.method public getDualEriVersion(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 443
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getDualCdmaEriVersion] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v0, 0x0

    return v0
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
    .line 781
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getDualEriVersionBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method public getDualEsn(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 374
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getDualEsn] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v0, ""

    return-object v0
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
    .line 756
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getDualEsnBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v0, ""

    return-object v0
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
    .line 823
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualGroupIdLevel1BySlotId(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 829
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualIccSerialNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 274
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualIccSerialNumber."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v0, ""

    return-object v0
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
    .line 688
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualIccSerialNumberBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v0, ""

    return-object v0
.end method

.method public getDualLine1AlphaTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 288
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualLine1AlphaTag."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v0, ""

    return-object v0
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
    .line 702
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualLine1AlphaTagBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v0, ""

    return-object v0
.end method

.method public getDualLine1Number(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 281
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualLine1Number."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v0, ""

    return-object v0
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
    .line 695
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualLine1NumberBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v0, ""

    return-object v0
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
    .line 905
    const/4 v0, 0x0

    return v0
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
    .line 911
    const/4 v0, 0x0

    return v0
.end method

.method public getDualMin(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 459
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getDualMin] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v0, ""

    return-object v0
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
    .line 787
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getDualMinBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v0, ""

    return-object v0
.end method

.method public getDualPrlVersion(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 345
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getDualPrlVersion] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v0, ""

    return-object v0
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
    .line 744
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getDualPrlVersionBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v0, ""

    return-object v0
.end method

.method public getDualRFCalibration(I)[I
    .locals 3
    .param p1, "mPhoneId"    # I

    .prologue
    .line 331
    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 332
    .local v0, "defaultDualRFCalibration":[I
    const-string v1, "PHONE"

    const-string v2, "CP_COMM: This class don\'t support getDualRFCalibration."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-object v0

    .line 331
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
    .locals 3
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 730
    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 731
    .local v0, "defaultDualRFCalibration":[I
    const-string v1, "PHONE"

    const-string v2, "CP_COMM: This class don\'t support getDualRFCalibrationBySlotId."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return-object v0

    .line 730
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

.method public getDualSnId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 252
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualSnId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v0, ""

    return-object v0
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
    .line 675
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualSnIdBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v0, ""

    return-object v0
.end method

.method public getDualSubscriberId(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 267
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualSubscriberId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v0, ""

    return-object v0
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
    .line 681
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualSubscriberIdBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v0, ""

    return-object v0
.end method

.method public getDualUimId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 358
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: [getDualUimId] cdma UimId  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaUimId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaUimId()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 750
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getDualUimIdBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v0, ""

    return-object v0
.end method

.method public getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 310
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualVoiceMailAlphaTag."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v0, ""

    return-object v0
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
    .line 723
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualVoiceMailAlphaTagBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v0, ""

    return-object v0
.end method

.method public getDualVoiceMailNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "mPhoneId"    # I

    .prologue
    .line 295
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualVoiceMailNumber."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v0, ""

    return-object v0
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
    .line 709
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: This class don\'t support getDualVoiceMailNumberBySlotId."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v0, ""

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 835
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 180
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 165
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 196
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMLPLVersion()I
    .locals 5

    .prologue
    .line 857
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 858
    .local v2, "icc":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v2, :cond_1

    .line 859
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplications()[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 862
    .local v0, "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    .line 863
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 864
    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 865
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 866
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getMLPLVersion()I

    move-result v3

    .line 873
    .end local v0    # "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    :goto_1
    return v3

    .line 863
    .restart local v0    # "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    .end local v0    # "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getMSPLVersion()I
    .locals 5

    .prologue
    .line 877
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 878
    .local v2, "icc":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v2, :cond_1

    .line 879
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 881
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplications()[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 882
    .local v0, "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    .line 883
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 884
    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 885
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 886
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getMSPLVersion()I

    move-result v3

    .line 893
    .end local v0    # "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    :goto_1
    return v3

    .line 883
    .restart local v0    # "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 893
    .end local v0    # "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 929
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneTypeByPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public getRFCalibration()[I
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRFCalibration()[I

    move-result-object v0

    return-object v0
.end method

.method public getRegIdd(I)Ljava/lang/String;
    .locals 4
    .param p1, "iPhoneId"    # I

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yulong/android/internal/telephony/InternationalAddressUtil;->getRegIdd(ILandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "regIdd":Ljava/lang/String;
    return-object v0
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
    .line 776
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getRegIddBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v0, ""

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "number":Ljava/lang/String;
    const-string v1, "PHONE"

    const-string v2, "VM: PhoneSubInfo.getVoiceMailNUmber: "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v0
.end method

.method public getYLDeviceId(II)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "devType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/Phone;->getYLDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 815
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getYLDeviceIdBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v0, ""

    return-object v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method public operateFactoryNumber(IILjava/lang/String;I)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "operate"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: [operateFactoryNumber] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", operate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->operateFactoryNumber(IILjava/lang/String;)V

    .line 497
    return-void
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
    .line 801
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [operateFactoryNumberBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method

.method public phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 1
    .param p1, "ioCode"    # I
    .param p2, "inData"    # Landroid/os/Bundle;
    .param p3, "outData"    # Landroid/os/Bundle;
    .param p4, "phoneId"    # I

    .prologue
    .line 651
    const/4 v0, 0x0

    return v0
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
    .line 808
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [phoneSubDualIoControlBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 31
    .param p1, "ioCode"    # I
    .param p2, "inData"    # Landroid/os/Bundle;
    .param p3, "outData"    # Landroid/os/Bundle;

    .prologue
    .line 501
    const/4 v9, 0x0

    .line 503
    .local v9, "bRet":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "connectivity"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 504
    .local v10, "cm":Landroid/net/ConnectivityManager;
    new-instance v20, Landroid/net/LinkProperties;

    invoke-direct/range {v20 .. v20}, Landroid/net/LinkProperties;-><init>()V

    .line 506
    .local v20, "linkprop":Landroid/net/LinkProperties;
    sparse-switch p1, :sswitch_data_0

    .line 647
    .end local v9    # "bRet":Z
    :goto_0
    return v9

    .line 508
    .restart local v9    # "bRet":Z
    :sswitch_0
    :try_start_0
    const-string v24, ""

    .line 509
    .local v24, "nvVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getNvVersion()Ljava/lang/String;

    move-result-object v24

    .line 510
    const-string v27, "nvversion"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const/4 v9, 0x1

    goto :goto_0

    .line 513
    .end local v24    # "nvVersion":Ljava/lang/String;
    :sswitch_1
    const-string v12, ""

    .line 514
    .local v12, "encodingMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "yulong.sms.conding.mode"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 517
    const-string v27, "encodemode"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v9, 0x1

    goto :goto_0

    .line 520
    .end local v12    # "encodingMode":Ljava/lang/String;
    :sswitch_2
    const-string v21, ""

    .line 521
    .local v21, "lteUsageMode":Ljava/lang/String;
    const-string v27, "lteUsageMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v27, v0

    const/16 v28, 0x8b

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 523
    const/4 v9, 0x1

    goto :goto_0

    .line 526
    .end local v21    # "lteUsageMode":Ljava/lang/String;
    :sswitch_3
    const-string v27, "PHONE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Sprint: getRoaming()="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v27, "PHONE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Sprint: getDataOnRoamingEnabled()="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v27

    if-nez v27, :cond_0

    const/16 v18, 0x1

    .line 529
    .local v18, "isRoamingAndDataRoamingOffState":Z
    :goto_1
    const-string v27, "isRoamingAndDataRoamingOffState"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 530
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 528
    .end local v18    # "isRoamingAndDataRoamingOffState":Z
    :cond_0
    const/16 v18, 0x0

    goto :goto_1

    .line 534
    :sswitch_4
    const-string v5, ""

    .line 536
    .local v5, "address":Ljava/lang/String;
    const-string v27, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 537
    .local v26, "type":Ljava/lang/String;
    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 539
    const-string v27, "PHONE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Slate param: type = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v20

    .line 546
    :goto_2
    if-eqz v20, :cond_3

    .line 547
    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 548
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 549
    :cond_1
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 550
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/net/InetAddress;

    invoke-virtual/range {v27 .. v27}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 551
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 543
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_2
    const-string v27, "PHONE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Slate param: type = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v20

    goto :goto_2

    .line 555
    :cond_3
    const-string v27, "PHONE"

    const-string v28, "IOCTRL_GET_IP_ADDRESS: address is null"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_4
    const-string v27, "PHONE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Slate getIPAddress = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v27, "address"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 563
    .end local v5    # "address":Ljava/lang/String;
    .end local v26    # "type":Ljava/lang/String;
    :sswitch_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v7, "apnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 565
    .local v6, "allNetworkInfo":[Landroid/net/NetworkInfo;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v13, v0, :cond_7

    .line 566
    aget-object v27, v6, v13

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 567
    const-string v27, "PHONE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "info.getType() = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    aget-object v29, v6, v13

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getType()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    aget-object v27, v6, v13

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v20

    .line 569
    const-string v27, "PHONE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "linkprop.toString() = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    if-eqz v20, :cond_6

    .line 571
    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 572
    .local v16, "ipAddress":Ljava/lang/String;
    const-string v27, "PHONE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "getipaddress= "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-eqz v16, :cond_5

    .line 574
    const-string v27, "["

    const-string v28, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 575
    const-string v27, "]"

    const-string v28, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 576
    const-string v27, "/"

    const-string v28, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 578
    :cond_5
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v28, v6, v13

    invoke-virtual/range {v28 .. v28}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    .end local v16    # "ipAddress":Ljava/lang/String;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 582
    :cond_7
    const-string v27, "apnlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 583
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 586
    .end local v6    # "allNetworkInfo":[Landroid/net/NetworkInfo;
    .end local v7    # "apnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "i":I
    :sswitch_6
    sget-object v27, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v22

    .line 587
    .local v22, "mlastFailCauseErrorCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v27

    if-eqz v27, :cond_8

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLastFailCause()I

    move-result v22

    .line 590
    :cond_8
    const-string v27, "PHONE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Last Error Code is : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v27, "lastErrorCode"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 594
    .end local v22    # "mlastFailCauseErrorCode":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "android.permission.READ_PHONE_STATE"

    const-string v29, "Requires READ_PHONE_STATE"

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v14

    .line 596
    .local v14, "icc":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v14, :cond_c

    .line 597
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplications()[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8

    .line 598
    .local v8, "apps":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v8, :cond_c

    .line 599
    array-length v0, v8

    move/from16 v23, v0

    .line 600
    .local v23, "num":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    move/from16 v0, v23

    if-ge v13, v0, :cond_c

    .line 601
    aget-object v27, v8, v13

    if-eqz v27, :cond_b

    .line 602
    const/4 v15, 0x0

    .line 603
    .local v15, "imsi":Ljava/lang/String;
    const/16 v25, 0x0

    .line 604
    .local v25, "tag":Ljava/lang/String;
    aget-object v27, v8, v13

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v17

    .line 605
    .local v17, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v17, :cond_9

    .line 606
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v15

    .line 608
    :cond_9
    sget-object v27, Lcom/android/internal/telephony/PhoneSubInfo$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    aget-object v28, v8, v13

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    .line 632
    :cond_a
    :goto_6
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v27, "PHONE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "IOCTRL_GET_CARD_IMSIS put key:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", phoneId = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v15    # "imsi":Ljava/lang/String;
    .end local v17    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v25    # "tag":Ljava/lang/String;
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 611
    .restart local v15    # "imsi":Ljava/lang/String;
    .restart local v17    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v25    # "tag":Ljava/lang/String;
    :pswitch_0
    const-string v25, "C_IMSI"

    .line 612
    goto :goto_6

    .line 614
    :pswitch_1
    const-string v25, "G_IMSI"

    .line 615
    goto :goto_6

    .line 617
    :pswitch_2
    const-string v25, "G_IMSI"

    .line 618
    sget-object v27, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 619
    const-string v25, "LTE_IMSI"

    .line 620
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_a

    const-string v27, "460"

    const/16 v28, 0x0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a

    .line 622
    const-string v25, "G_IMSI"

    goto :goto_6

    .line 627
    :pswitch_3
    const-string v25, "ISIM_IMSI"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    goto/16 :goto_6

    .line 639
    .end local v8    # "apps":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v13    # "i":I
    .end local v15    # "imsi":Ljava/lang/String;
    .end local v17    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v23    # "num":I
    .end local v25    # "tag":Ljava/lang/String;
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 643
    .end local v14    # "icc":Lcom/android/internal/telephony/uicc/UiccCard;
    :catch_0
    move-exception v11

    .line 644
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_0
        0x87 -> :sswitch_1
        0x8b -> :sswitch_2
        0x96 -> :sswitch_3
        0x97 -> :sswitch_4
        0x98 -> :sswitch_5
        0x99 -> :sswitch_6
        0xb8 -> :sswitch_7
    .end sparse-switch

    .line 608
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public querySingleOrDual()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 934
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [getYLDeviceIdBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v0, 0x0

    return v0
.end method

.method public setBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 473
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: [getBackCallNumber] key ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "tempKey":Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: [getBackCallNumber] tempKey ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 483
    .end local v0    # "tempKey":Ljava/lang/String;
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [setDualBackCallNumber] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method public setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "iPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 490
    return-void
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
    .line 794
    const-string v0, "PHONE"

    const-string v1, "CP_COMM: [setDualLine1NumberBySlotId] This class don\'t support."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 137
    return-void
.end method
