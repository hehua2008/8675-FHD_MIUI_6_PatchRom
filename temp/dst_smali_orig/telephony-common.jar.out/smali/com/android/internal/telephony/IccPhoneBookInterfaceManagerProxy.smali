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
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    :goto_0
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void

    :cond_1
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V
    .locals 1
    .param p1, "iccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .param p2, "mPhoneId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V

    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v0, :cond_0

    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private getPreferredIccManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

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
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdditionalNumbersSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdditionalNumbersSize()I

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpNames()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnGrpNames()Ljava/util/List;

    move-result-object v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailLength()I

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailNumbers()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailNumbers()I

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupIndexSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupIndexSize(I)I

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupTagLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGroupTagLength()I

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->is3GAdnSupported()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->is3GAdnSupported()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 2
    .param p1, "iccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    goto :goto_0
.end method

.method public setIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V
    .locals 1
    .param p1, "iccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .param p2, "mPhoneId"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    sput-object p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

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
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbers([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbers([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersName(ILjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersName(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersNameIndex(III)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdditionalNumbersNameIndex(III)Z

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnGrpName(ILjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnGrpName(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p7, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p7, v0, :cond_1

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
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEmail([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEmail([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

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
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone2:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateGroupIndex(I[I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mPhoneBookInterfaceManager_phone1:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateGroupIndex(I[I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
