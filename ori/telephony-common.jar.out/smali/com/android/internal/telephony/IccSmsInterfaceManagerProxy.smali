.class public Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "IccSmsInterfaceManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IccSmsInterfaceManagerProxy"

.field private static mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private static mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private static priority:I


# instance fields
.field private mCurPhoneId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 2
    .param p1, "iccSmsInterfaceManager"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 59
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    .line 60
    .local v0, "mPhoneId":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 61
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 66
    :goto_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 67
    const-string v1, "isms"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 69
    :cond_0
    return-void

    .line 63
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)V
    .locals 1
    .param p1, "iccSmsInterfaceManager"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p2, "mPhoneId"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 196
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 197
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 202
    :goto_0
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "isms"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 209
    :cond_0
    return-void

    .line 199
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method public static addIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)V
    .locals 1
    .param p0, "iccSmsInterfaceManager"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "mPhoneId"    # I

    .prologue
    .line 226
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 227
    sput-object p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    sput-object p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 481
    const/4 v0, -0x1

    .line 482
    .local v0, "phoneId":I
    const-string v1, "IccSmsInterfaceManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: convertSlotIdToPhoneId, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneIdBySlotId(I)I

    move-result v0

    .line 484
    const-string v1, "IccSmsInterfaceManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: convertSlotIdToPhoneId, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return v0
.end method

.method private csCheckSms()Z
    .locals 10

    .prologue
    .line 591
    const/4 v5, 0x1

    .line 593
    .local v5, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isOverseaProduct()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSEDRegion()Z

    move-result v6

    if-nez v6, :cond_1

    .line 594
    const-string v6, "com.yulong.android.cloudsecurity.server.CloudSecurity"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 596
    .local v0, "CloudSecurity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 597
    const-string v7, "getDefault"

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 598
    .local v3, "getDefault":Ljava/lang/reflect/Method;
    const-string v6, "csCheckSms"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 599
    .local v1, "csCheckSms":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 600
    .local v4, "instance":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 601
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 603
    .end local v4    # "instance":Ljava/lang/Object;
    :cond_0
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 604
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v5

    .line 628
    .end local v0    # "CloudSecurity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "csCheckSms":Ljava/lang/reflect/Method;
    .end local v3    # "getDefault":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return v5

    .line 608
    :catch_0
    move-exception v2

    .line 610
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 611
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 613
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 614
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 616
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 617
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 619
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 620
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 622
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 623
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 625
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 187
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 189
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method private getPreferredSmsSendInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 557
    const/4 v2, 0x0

    .line 558
    .local v2, "smsInterfaceManager":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    const/4 v1, 0x0

    .line 565
    .local v1, "phoneId":I
    sget-object v3, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "card_to_send_mms"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 567
    .local v0, "cardType":I
    const-string v3, "IccSmsInterfaceManagerProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "card_to_send_mms type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    if-eq v0, v7, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 570
    :cond_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v3

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertSlotIdToPhoneId(I)I

    move-result v1

    .line 577
    :goto_0
    if-ne v1, v6, :cond_4

    .line 578
    sget-object v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 583
    :cond_1
    :goto_1
    return-object v2

    .line 571
    :cond_2
    if-ne v0, v6, :cond_3

    .line 572
    iget v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mCurPhoneId:I

    goto :goto_0

    .line 574
    :cond_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v1

    goto :goto_0

    .line 579
    :cond_4
    if-ne v1, v7, :cond_1

    .line 580
    sget-object v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_1
.end method

.method public static getpriority()I
    .locals 3

    .prologue
    .line 440
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shixiaogang: priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    return v0
.end method


# virtual methods
.method public changeCardUnreadState(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: changeCardUnreadState, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 448
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->changeCardUnreadState(II)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 450
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->changeCardUnreadState(II)V

    goto :goto_0
.end method

.method public changeCardUnreadStateBySlotId(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyDualMessageToIccEf(Ljava/lang/String;I[B[BI)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B
    .param p5, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 252
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v0

    .line 259
    :goto_0
    return v0

    .line 254
    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 255
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v0

    goto :goto_0

    .line 259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyDualMessageToIccEfBySlotId(Ljava/lang/String;I[B[BI)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B
    .param p5, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcast(I)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public disableDualCellBroadcast(II)V
    .locals 3
    .param p1, "messageIdentifier"    # I
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 338
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter disableDualCellBroadcast, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 341
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcast(I)Z

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 343
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcast(I)Z

    goto :goto_0
.end method

.method public disableDualCellBroadcastBySlotId(II)V
    .locals 2
    .param p1, "messageIdentifier"    # I
    .param p2, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 553
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public enableDualCellBroadcast(II)V
    .locals 3
    .param p1, "messageIdentifier"    # I
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendDualCellBroadcast, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 329
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcast(I)Z

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 331
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcast(I)Z

    goto :goto_0
.end method

.method public enableDualCellBroadcastBySlotId(II)V
    .locals 2
    .param p1, "messageIdentifier"    # I
    .param p2, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDualAllMessagesFromIccEf(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 266
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    .line 267
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 268
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualAllMessagesFromIccEfBySlotId(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualSmsTotalParam(I)I
    .locals 3
    .param p1, "mPhoneId"    # I

    .prologue
    .line 365
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: getDualSmsTotalParam, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 368
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getDualSmsTotalParam()I

    move-result v0

    .line 372
    :goto_0
    return v0

    .line 369
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 370
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getDualSmsTotalParam()I

    move-result v0

    goto :goto_0

    .line 372
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSmsTotalParam1(I)I
    .locals 3
    .param p1, "mPhoneId"    # I

    .prologue
    .line 352
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: getDualSmsTotalParam, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 355
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsTotalParam()I

    move-result v0

    .line 359
    :goto_0
    return v0

    .line 356
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 357
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsTotalParam()I

    move-result v0

    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSmsTotalParamBySlotId(I)I
    .locals 2
    .param p1, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSMSCAddr(I)Ljava/lang/String;
    .locals 6
    .param p1, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 401
    const-string v2, "IccSmsInterfaceManagerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: getSMSCAddr, mPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {p1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPhoneType(I)I

    move-result v0

    .line 403
    .local v0, "phonetype":I
    if-ne p1, v5, :cond_2

    .line 404
    if-ne v0, v5, :cond_1

    .line 405
    const-string v2, "IccSmsInterfaceManagerProxy"

    const-string v3, "CP_COMM: getSMSCAddr, cdma not support "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    :goto_0
    return-object v1

    .line 408
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSCAddr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 410
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 411
    if-ne v0, v5, :cond_3

    .line 412
    const-string v2, "IccSmsInterfaceManagerProxy"

    const-string v3, "CP_COMM: getSMSCAddr, cdma not support "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSCAddr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSMSCAddrBySlotId(I)Ljava/lang/String;
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

.method public getSmsTotalParam()I
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsTotalParam()I

    move-result v0

    return v0
.end method

.method public isImsSmsSupported()Z
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isImsSmsSupported()Z

    move-result v0

    return v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->csCheckSms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ISmsProxy sendData method is denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsSendInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendDualData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    const-string v1, "IccSmsInterfaceManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: enter sendDualData, mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x2

    move/from16 v0, p8

    if-ne v0, v1, :cond_1

    .line 281
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_0

    .line 284
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendDualDataBySlotId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 506
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendDualMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 310
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendDualMultipartText, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    div-int/lit8 v0, p7, 0xa

    sput v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    .line 312
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shixiaogang: priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    rem-int/lit8 v0, p7, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 315
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    rem-int/lit8 v0, p7, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 318
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public sendDualMultipartTextBySlotId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 519
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendDualText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 292
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendDualText, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    div-int/lit8 v0, p7, 0xa

    sput v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    .line 294
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shixiaogang: priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    rem-int/lit8 v0, p7, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 297
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    rem-int/lit8 v0, p7, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 300
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendDualTextBySlotId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->csCheckSms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ISmsProxy sendMultipartText method is denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsSendInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->csCheckSms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ISmsProxy sendText method is denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsSendInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setCnmiMode(II)I
    .locals 4
    .param p1, "mPhoneId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 425
    const-string v1, "IccSmsInterfaceManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: setCnmiMode, mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 429
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCnmiMode(II)I

    .line 435
    :goto_0
    return v0

    .line 431
    :cond_0
    if-ne p1, v0, :cond_1

    .line 432
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCnmiMode(II)I

    move-result v0

    goto :goto_0

    .line 435
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setCnmiModeBySlotId(II)I
    .locals 2
    .param p1, "mSlotId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDualSMSCAddr(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "smscAddr"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 464
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: setDualSMSCAddr, smscAddr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 466
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setSMSCAddr(Ljava/lang/String;)Z

    move-result v0

    .line 470
    :goto_0
    return v0

    .line 467
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 468
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setSMSCAddr(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 470
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)V
    .locals 1
    .param p1, "iccSmsInterfaceManager"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p2, "mPhoneId"    # I

    .prologue
    .line 213
    iput p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mCurPhoneId:I

    .line 216
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 217
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 164
    return-void
.end method

.method public setSMSCAddr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "smscAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setSMSCAddr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateDualMessageOnIccEf(Ljava/lang/String;II[BI)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 237
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 239
    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 240
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v0

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualMessageOnIccEfBySlotId(Ljava/lang/String;II[BI)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v0

    return v0
.end method

.method public writeDualSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "status"    # I
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "dateTime"    # Ljava/lang/String;
    .param p5, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 387
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: writeDualSmsToCard, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 390
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 396
    :goto_0
    return v0

    .line 392
    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 393
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public writeDualSmsToCardBySlotId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "status"    # I
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "dateTime"    # Ljava/lang/String;
    .param p5, "mSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 529
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "status"    # I
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "dateTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    const-string v0, "IccSmsInterfaceManagerProxy"

    const-string v1, "CP_COMM: writeDualSmsToCard "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
