.class public Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "IccPhoneBookInterfaceManagerProxy.java"


# static fields
.field private static mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private static mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 2
    .param p1, "iccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 40
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 41
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 46
    :goto_0
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 49
    :cond_0
    return-void

    .line 43
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V
    .locals 1
    .param p1, "iccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .param p2, "mPhoneId"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V

    .line 109
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 114
    :cond_0
    return-void
.end method

.method private getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method


# virtual methods
.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDualAdditionalNumbersSize(I)I
    .locals 1
    .param p1, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 283
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdditionalNumbersSize()I

    move-result v0

    .line 287
    :goto_0
    return v0

    .line 284
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 285
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdditionalNumbersSize()I

    move-result v0

    goto :goto_0

    .line 287
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualAdnGrpName(II)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 272
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpName(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 273
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 274
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualAdnGrpNames(I)Ljava/util/List;
    .locals 1
    .param p1, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 261
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpNames()Ljava/util/List;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 262
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 263
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpNames()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualAdnRecordsInEf(II)Ljava/util/List;
    .locals 1
    .param p1, "efid"    # I
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 178
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 179
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 180
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualAdnRecordsSize(II)[I
    .locals 1
    .param p1, "efid"    # I
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 167
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    .line 168
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 169
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualEmailLength(I)I
    .locals 1
    .param p1, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 315
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailLength()I

    move-result v0

    .line 319
    :goto_0
    return v0

    .line 316
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 317
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailLength()I

    move-result v0

    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualEmailNumbers(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 338
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailNumbers()I

    move-result v0

    .line 342
    :goto_0
    return v0

    .line 339
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 340
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailNumbers()I

    move-result v0

    goto :goto_0

    .line 342
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualGroupIndexSize(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 294
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupIndexSize(I)I

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 295
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 296
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupIndexSize(I)I

    move-result v0

    goto :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualGroupTagLength(I)I
    .locals 1
    .param p1, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 305
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupTagLength()I

    move-result v0

    .line 309
    :goto_0
    return v0

    .line 306
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 307
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupTagLength()I

    move-result v0

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDual3GAdnSupported(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 326
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->is3GAdnSupported()Z

    move-result v0

    .line 330
    :goto_0
    return v0

    .line 327
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 328
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->is3GAdnSupported()Z

    move-result v0

    goto :goto_0

    .line 330
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 2
    .param p1, "iccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .prologue
    .line 129
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 130
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method

.method public setIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V
    .locals 1
    .param p1, "iccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .param p2, "mPhoneId"    # I

    .prologue
    .line 119
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 120
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 123
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateDualAdditionalNumbers([Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .param p1, "newAdditionalNumbers"    # [Ljava/lang/String;
    .param p2, "indexInAdn"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 227
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbers([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 233
    :goto_0
    return v0

    .line 229
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 230
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbers([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualAdditionalNumbersName(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 240
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersName(ILjava/lang/String;)Z

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 241
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 242
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersName(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualAdditionalNumbersNameIndex(IIII)Z
    .locals 1
    .param p1, "indexInAdn"    # I
    .param p2, "indexInAddNum"    # I
    .param p3, "indexInAddNumName"    # I
    .param p4, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 203
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersNameIndex(III)Z

    move-result v0

    .line 209
    :goto_0
    return v0

    .line 205
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 206
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersNameIndex(III)Z

    move-result v0

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualAdnGrpName(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 251
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnGrpName(ILjava/lang/String;)Z

    move-result v0

    .line 255
    :goto_0
    return v0

    .line 252
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 253
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnGrpName(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 6
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    .line 156
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 158
    :cond_0
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    .line 159
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x2

    if-ne p7, v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 145
    :cond_0
    const/4 v0, 0x1

    if-ne p7, v0, :cond_1

    .line 146
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualEmail([Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .param p1, "email"    # [Ljava/lang/String;
    .param p2, "indexInAdn"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 216
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEmail([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 220
    :goto_0
    return v0

    .line 217
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 218
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEmail([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualGroupIndex(I[II)Z
    .locals 1
    .param p1, "indexInAdn"    # I
    .param p2, "newGroupIndex"    # [I
    .param p3, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 191
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateGroupIndex(I[I)Z

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 192
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 193
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateGroupIndex(I[I)Z

    move-result v0

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
