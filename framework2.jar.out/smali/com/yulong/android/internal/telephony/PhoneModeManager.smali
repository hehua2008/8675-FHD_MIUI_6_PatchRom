.class public final Lcom/yulong/android/internal/telephony/PhoneModeManager;
.super Ljava/lang/Object;
.source "PhoneModeManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhoneModeManager"

.field private static sInstance:Lcom/yulong/android/internal/telephony/PhoneModeManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeManager;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeManager;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeManager;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeManager;

    .line 63
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeManager;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeManager;

    return-object v0
.end method

.method private getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;
    .locals 3

    .prologue
    .line 496
    const-string v2, "getIPhoneModeService."

    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 498
    const-string v2, "iPhoneModeService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 499
    .local v0, "myBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v1

    .line 501
    .local v1, "myPMS":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    return-object v1
.end method

.method public static getPreferredPhoneId()I
    .locals 3

    .prologue
    .line 482
    const-string v1, "gsm.current.modem-type"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 485
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredPhoneId phoneID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 487
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 510
    const-string v0, "PhoneModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method

.method private operateUniversalInterface(III)I
    .locals 3
    .param p1, "actionId"    # I
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 325
    const/4 v1, 0x0

    .line 328
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 330
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->operateUniversalInterface(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 338
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return v1

    .line 334
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public convertPhoneIdToSlotId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "result":I
    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertPhoneIdToSlotId, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 391
    return v0
.end method

.method public convertSlotIdToPhoneId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "result":I
    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertSlotIdToPhoneId,slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 399
    return v0
.end method

.method public enableLTESwitch(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 665
    const/4 v1, 0x0

    .line 668
    .local v1, "ret":Z
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 670
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 671
    invoke-interface {v0, p1}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->enableLTESwitch(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 677
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return v1

    .line 673
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableLTESwitchAuto()I
    .locals 3

    .prologue
    .line 686
    const/4 v1, 0x1

    .line 689
    .local v1, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 691
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 692
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->enableLTESwitchAuto()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 698
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return v1

    .line 694
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 4
    .param p1, "iSlotId"    # I

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "result":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardInfoBySlotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 137
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p1}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 144
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return-object v1

    .line 140
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCardTypeBySlotId(I)I
    .locals 5
    .param p1, "iSlotId"    # I

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "mySCI":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    const/4 v2, 0x0

    .line 159
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 161
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 169
    iget v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 172
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCardTypeBySlotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 174
    return v2

    .line 164
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getDataFirewall(I)I
    .locals 2
    .param p1, "phoneid"    # I

    .prologue
    .line 547
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 549
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v0, p1}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->getDataFirewall(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 555
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :goto_0
    return v1

    .line 552
    :catch_0
    move-exception v1

    .line 555
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccCardStatusByPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, "result":I
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccCardStatusByPhoneId, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 356
    return v0
.end method

.method public getIccLockEnabled(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 576
    .local v0, "result":I
    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccCardStatusByPhoneId, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 580
    return v0
.end method

.method public getPhoneIdBySlotId(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "result":I
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertSlotIdToPhoneId(I)I

    move-result v0

    .line 405
    return v0
.end method

.method public getPinPukState(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 595
    const/4 v1, 0x0

    .line 596
    .local v1, "result":I
    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 597
    .local v0, "iSlotid":I
    const/16 v2, 0xd

    invoke-direct {p0, v2, p1, v0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v1

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPukState, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 599
    return v1
.end method

.method public getPinPukValidCount(II)I
    .locals 5
    .param p1, "pinType"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 222
    const/4 v1, -0x1

    .line 223
    .local v1, "result":I
    const-string v2, "PhoneModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: getPinPukValidCount, pinType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->getPinPukValidCount(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 233
    :goto_0
    return v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "PhoneModeManager"

    const-string v3, "CP_COMM: RemoteException from getPinPukValidCount()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSlotConnectMode()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "mSlotConnectMode":I
    const/16 v1, 0xc

    invoke-direct {p0, v1, v2, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneModeManager: getSlotConnectMode(),mSlotConnectMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 589
    return v0
.end method

.method public getSlotIdByPhoneId(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 411
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public getValidCardNum()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "iCardNum":I
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidCardNum, num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 190
    return v0
.end method

.method public isActivePhoneByPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "result":I
    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActivePhoneByPhoneId, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 273
    return v0
.end method

.method public isActivePhoneBySlotId(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 605
    const/4 v0, -0x1

    .line 606
    .local v0, "phoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivePhoneByPhoneId, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPhoneIdBySlotId(I)I

    move-result v0

    .line 608
    const/4 v1, 0x0

    .line 609
    .local v1, "result":I
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v1

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivePhoneByPhoneId, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 614
    return v1
.end method

.method public isLTESwitchAllowed()Z
    .locals 3

    .prologue
    .line 623
    const/4 v1, 0x0

    .line 626
    .local v1, "ret":Z
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 628
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 629
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->isLTESwitchAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 635
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return v1

    .line 631
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isLTESwitched()Z
    .locals 3

    .prologue
    .line 644
    const/4 v1, 0x0

    .line 647
    .local v1, "ret":Z
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 649
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 650
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->isLTESwitched()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 656
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return v1

    .line 652
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isNeedAsynCallToGetPinNum(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, "result":I
    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedAsynCallToGetPinNum, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 291
    return v0
.end method

.method public resetNet()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, "result":I
    const/16 v1, 0x9

    invoke-direct {p0, v1, v2, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetNet, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 312
    return v0
.end method

.method public resetTouchScreen()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "result":I
    const/16 v1, 0x8

    invoke-direct {p0, v1, v2, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetTouchScreen, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 302
    return v0
.end method

.method public selectCloseModemCdmaOrGsmInternal(IZ)V
    .locals 2
    .param p1, "modetype"    # I
    .param p2, "powersate"    # Z

    .prologue
    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 111
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->selectCloseModemCdmaOrGsmInternal(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public selectModemAndPreferredSlot(III)I
    .locals 3
    .param p1, "iModemType0"    # I
    .param p2, "iModemType1"    # I
    .param p3, "iPreferredId"    # I

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 83
    .local v1, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 85
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->selectModemAndPreferredSlot(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 93
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setCallBack(Lcom/yulong/android/internal/telephony/PhoneModeListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/yulong/android/internal/telephony/PhoneModeListener;
    .param p2, "events"    # I

    .prologue
    .line 466
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 468
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 469
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeListener;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v0, v1, p2}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->setCallBack(Lcom/yulong/android/internal/telephony/IPhoneModeListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCurConnectMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 522
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0, p1}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->setCurConnectMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDataFirewall(II)V
    .locals 2
    .param p1, "phoneid"    # I
    .param p2, "responseCode"    # I

    .prologue
    .line 564
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 566
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 567
    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->setDataFirewall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setNetSelectMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 531
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 533
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 534
    invoke-interface {v0, p1}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->setNetSelectMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 445
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v0

    .line 447
    .local v0, "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 455
    .end local v0    # "myPhoneModeService":Lcom/yulong/android/internal/telephony/IPhoneModeService;
    :cond_0
    :goto_0
    return v1

    .line 451
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public supplyDualPin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 205
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->supplyDualPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "PhoneModeManager"

    const-string v3, "CP_COMM: RemoteException from supplyDualPin()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 249
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIPhoneModeService()Lcom/yulong/android/internal/telephony/IPhoneModeService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/yulong/android/internal/telephony/IPhoneModeService;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "PhoneModeManager"

    const-string v3, "CP_COMM: RemoteException from supplyDualPuk()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateInfoWhenPullOutBattery(I)I
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 422
    const/4 v0, -0x1

    .line 423
    .local v0, "result":I
    const/4 v1, 0x7

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInfoWhenPullOutBattery, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 428
    return v0
.end method

.method public waitParseCardAfterUnlockPin(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, "result":I
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->operateUniversalInterface(III)I

    move-result v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitParseCardAfterUnlockPin, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->log(Ljava/lang/String;)V

    .line 374
    return v0
.end method
