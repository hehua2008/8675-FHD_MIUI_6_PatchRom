.class public Lcom/yulong/android/telephony/CPTelephonyManager;
.super Ljava/lang/Object;
.source "CPTelephonyManager.java"


# static fields
.field public static final ACTION_DUAL_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.DUAL_PHONE_STATE"

.field private static final LOG_TAG:Ljava/lang/String; = "CPTelephonyManager"

.field private static sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/CPTelephonyManager;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CPTelephonyManager;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPTelephonyManager;->sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    return-void
.end method

.method public static getCardInfoBySlot(I)Lcom/yulong/android/telephony/CardInfo;
    .locals 1
    .param p0, "slot"    # I

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/CardInfo;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CardInfo;-><init>()V

    .local v0, "cardInfo":Lcom/yulong/android/telephony/CardInfo;
    return-object v0
.end method

.method public static getCurrentCardNum()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyManager;->sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "ro.telephony.default_network"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "mode":I
    if-ne v0, v4, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :cond_1
    packed-switch v0, :pswitch_data_0

    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v3

    if-eq v3, v2, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "type":I
    return v0
.end method

.method public static getPreferredCardInfo()Lcom/yulong/android/telephony/CardInfo;
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/CardInfo;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CardInfo;-><init>()V

    .local v0, "cardInfo":Lcom/yulong/android/telephony/CardInfo;
    return-object v0
.end method

.method public static getPreferredCardSlot()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .local v0, "cardSlot":I
    return v0
.end method

.method public static getPreferredPhoneId()I
    .locals 3

    .prologue
    const-string v1, "gsm.current.modem-type"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "phoneId":I
    return v0
.end method

.method public static getSecondCardInfo()Lcom/yulong/android/telephony/CardInfo;
    .locals 2

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "CP_COMM: delete interface!error!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableDualLocationUpdates(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableDualLocationUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public disableDualLocationUpdatesBySlotId(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableDualLocationUpdatesBySlotId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public enableDualLocationUpdates(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableDualLocationUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableDualLocationUpdatesBySlotId(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableDualLocationUpdatesBySlotId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    move-object v2, p1

    .local v2, "retAddress":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: enter filterSmsAddress."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public filterCallAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    move-object v2, p1

    .local v2, "retAddress":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: enter filterSmsAddress."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterCallAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    move-object v2, p1

    .local v2, "retAddress":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: dont has fuction filterSmsAddress."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public filterSmsAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    move-object v2, p1

    .local v2, "retAddress":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: dont has fuction filterSmsAddress."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterSmsAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAPNlist()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x98

    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v6

    invoke-interface {v4, v5, v2, v3, v6}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v4, "apnlist"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "apnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0

    .end local v0    # "apnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "CPTelephonyManager"

    const-string v5, "getAPNlist: NullPointerException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllG2NeighborCellInfo(ILjava/util/ArrayList;)Z
    .locals 9
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/telephony/G2NeighborCellInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yulong/android/telephony/G2NeighborCellInfo;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "inData":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    const/16 v8, 0x80

    invoke-interface {v7, v8, v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v7, "g2neighborcellinfolist_size"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_0

    new-instance v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;

    invoke-direct {v3}, Lcom/yulong/android/telephony/G2NeighborCellInfo;-><init>()V

    .local v3, "in":Lcom/yulong/android/telephony/G2NeighborCellInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_arfcn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_rxlevMin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_gprsSupp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_band"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_bsic"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_c1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_rxlev"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_c2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_c31"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_c32"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v2    # "i":I
    .end local v3    # "in":Lcom/yulong/android/telephony/G2NeighborCellInfo;
    .end local v6    # "size":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .end local v1    # "ex":Ljava/lang/NullPointerException;
    .restart local v2    # "i":I
    .restart local v6    # "size":I
    :cond_0
    const/4 v7, 0x1

    return v7
.end method

.method public getAllG2NeighborCellInfoBySlotId(ILjava/util/ArrayList;)Z
    .locals 9
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/telephony/G2NeighborCellInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yulong/android/telephony/G2NeighborCellInfo;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "inData":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    const/16 v8, 0x80

    invoke-interface {v7, v8, v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v7, "g2neighborcellinfolist_size"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_0

    new-instance v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;

    invoke-direct {v3}, Lcom/yulong/android/telephony/G2NeighborCellInfo;-><init>()V

    .local v3, "in":Lcom/yulong/android/telephony/G2NeighborCellInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_arfcn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_rxlevMin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_gprsSupp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_band"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_bsic"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_c1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_rxlev"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_c2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_c31"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g2neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_c32"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v2    # "i":I
    .end local v3    # "in":Lcom/yulong/android/telephony/G2NeighborCellInfo;
    .end local v6    # "size":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .end local v1    # "ex":Ljava/lang/NullPointerException;
    .restart local v2    # "i":I
    .restart local v6    # "size":I
    :cond_0
    const/4 v7, 0x1

    return v7
.end method

.method public getAllG3NeighborCellInfo(ILjava/util/ArrayList;)Z
    .locals 9
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/telephony/G3NeighborCellInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yulong/android/telephony/G3NeighborCellInfo;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "inData":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    const/16 v8, 0x82

    invoke-interface {v7, v8, v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v7, "g3neighborcellinfolist_size"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_0

    new-instance v3, Lcom/yulong/android/telephony/G3NeighborCellInfo;

    invoke-direct {v3}, Lcom/yulong/android/telephony/G3NeighborCellInfo;-><init>()V

    .local v3, "in":Lcom/yulong/android/telephony/G3NeighborCellInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g3neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_cellParaId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellParaId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g3neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_cellArfcn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellArfcn:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g3neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_cellRscp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellRscp:I

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "in":Lcom/yulong/android/telephony/G3NeighborCellInfo;
    .end local v6    # "size":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/NullPointerException;
    .restart local v2    # "i":I
    .restart local v6    # "size":I
    :cond_0
    const/4 v7, 0x1

    return v7
.end method

.method public getAllG3NeighborCellInfoBySlotId(ILjava/util/ArrayList;)Z
    .locals 9
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/telephony/G3NeighborCellInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yulong/android/telephony/G3NeighborCellInfo;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "inData":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    const/16 v8, 0x82

    invoke-interface {v7, v8, v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v7, "g3neighborcellinfolist_size"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_0

    new-instance v3, Lcom/yulong/android/telephony/G3NeighborCellInfo;

    invoke-direct {v3}, Lcom/yulong/android/telephony/G3NeighborCellInfo;-><init>()V

    .local v3, "in":Lcom/yulong/android/telephony/G3NeighborCellInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g3neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_cellParaId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellParaId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g3neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_cellArfcn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellArfcn:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g3neighborcellinfolist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_cellRscp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellRscp:I

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "in":Lcom/yulong/android/telephony/G3NeighborCellInfo;
    .end local v6    # "size":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/NullPointerException;
    .restart local v2    # "i":I
    .restart local v6    # "size":I
    :cond_0
    const/4 v7, 0x1

    return v7
.end method

.method public getCdmaRoamingPreference(I)I
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, -0x1

    .local v4, "roamingMode":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "reply":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "outData":Landroid/os/Bundle;
    const-string v5, "rilIoControl_ex"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x9a

    invoke-interface {v5, v6, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v5, "reply_bundle"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, "roamingMode"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_0
    move v5, v4

    :goto_1
    return v5

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "CPTelephonyManager"

    const-string v6, "getCdmaRoamingPreference: NullPointerException"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_1
.end method

.method public getDualAudioRevision(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualAudioRevision(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualAudioRevisionBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualAudioRevisionBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCallState(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCallStateBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCallStateBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCardType(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualCardType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CPTelephonyManager"

    const-string v2, "getDualCardType: NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDualCellLocation(I)Landroid/telephony/CellLocation;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: getDualCellLocation, phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCellLocation(I)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0, p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCellLocationBySlotId(I)Landroid/telephony/CellLocation;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: getDualCellLocation, slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCellLocationBySlotId(I)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0, p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualCompleteVoiceMailNumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataActivity(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataActivity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataActivityBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataActivityBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataState(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataStateBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataStateBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceIdBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceIdBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceSvn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceSoftwareVersionBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceSvnBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualEriVersion(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualEriVersion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualEriVersionBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualEriVersionBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualIMSIs(I)Ljava/util/Map;
    .locals 11
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "inData":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, "outData":Landroid/os/Bundle;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "imsis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v8

    const/16 v9, 0xb8

    invoke-interface {v8, v9, v4, v5, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    if-eqz v5, :cond_0

    const/4 v8, 0x4

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "C_IMSI"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "G_IMSI"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "LTE_IMSI"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "ISIM_IMSI"

    aput-object v9, v7, v8

    .local v7, "tags":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "imsi":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_0

    aget-object v6, v7, v1

    const-string v8, ""

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "CPTelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", imsi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "tags":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-object v3

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v8, "CPTelephonyManager"

    const-string v9, "getDualIMSIs: NullPointerException"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDualLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1AlphaTagBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1AlphaTagBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1Number(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1NumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1NumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualMLPLVersion(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMLPLVersion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CPTelephonyManager"

    const-string v2, "getDualMLPLVersion: NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDualMSPLVersion(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMSPLVersion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CPTelephonyManager"

    const-string v2, "getDualMSPLVersion: NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDualMcc(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "imsi":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "mcc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "CPTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDualMcc phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getDualMccBySlotId(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualSubscriberIdBySlotId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "imsi":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "mcc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "CPTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDualMcc phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getDualMin(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMin(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualMinBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMinBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNeighboringCellInfo(I)Ljava/util/List;
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNeighboringCellInfo(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNeighboringCellInfoBySlotId(I)Ljava/util/List;
    .locals 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNeighboringCellInfoBySlotId(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "cdma.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkCountryIsoBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "cdma.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkOperatorBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "cdma.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkOperatorNameBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualNetworkType(I)I
    .locals 6
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNetworkType(I)I

    move-result v2

    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDualNetworkType: telephony == null, mphoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkTypeBySlotId(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNetworkTypeBySlotId(I)I

    move-result v2

    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDualNetworkType: telephony == null, slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    :pswitch_9
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    :pswitch_f
    const-string v0, "GSM"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getDualNetworkTypeNameBySlotId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkTypeBySlotId(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    :pswitch_9
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    :pswitch_f
    const-string v0, "GSM"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getDualPhoneType(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualActivePhoneType(I)I

    move-result v2

    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDualPhoneTypeBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualActivePhoneTypeBySlotId(I)I

    move-result v2

    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDualPrlVersion(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualPrlVersion(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualPrlVersionBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualPrlVersionBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualRFCalibration(I)[I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x6

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .local v0, "defaultDualRFCalibration":[I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualRFCalibration(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .end local v0    # "defaultDualRFCalibration":[I
    :goto_0
    return-object v0

    .restart local v0    # "defaultDualRFCalibration":[I
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    nop

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
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x6

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .local v0, "defaultDualRFCalibration":[I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualRFCalibrationBySlotId(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .end local v0    # "defaultDualRFCalibration":[I
    :goto_0
    return-object v0

    .restart local v0    # "defaultDualRFCalibration":[I
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
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

.method public getDualSimCountryIso(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "cdma.ruim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimCountryIsoBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "cdma.ruim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimOperatorBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "cdma.ruim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimOperatorNameBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualSimSerialNumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualIccSerialNumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualSimState(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "prop":Ljava/lang/String;
    :goto_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_1
    return v1

    .end local v0    # "prop":Ljava/lang/String;
    :cond_1
    const-string v2, "cdma.ruim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "prop":Ljava/lang/String;
    goto :goto_0

    :cond_2
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDualSimStateBySlotId(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDualSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualSubscriberIdBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualSubscriberIdBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualUimId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualUimId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualUimIdBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualUimIdBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualUserSetEncodingMode(I)Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const-string v1, ""

    .local v1, "encodingMode":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v5

    const/16 v6, 0x87

    invoke-interface {v5, v6, v3, v4, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v5, "encodemode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "CPTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encodingMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDualUserSetEncodingModeBySlotId(I)Ljava/lang/String;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const-string v1, ""

    .local v1, "encodingMode":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v5

    const/16 v6, 0x87

    invoke-interface {v5, v6, v3, v4, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v5, "encodemode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "CPTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encodingMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailAlphaTagBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailAlphaTagBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailNumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailNumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMessageCount(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMessageCountBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualVoiceMessageCountBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getG2ServiceCellInfo(ILcom/yulong/android/telephony/G2ServiceCellInfo;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/G2ServiceCellInfo;

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7f

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v4, "g2servicecellinfo_mMcc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    const-string v4, "g2servicecellinfo_mMnc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    const-string v4, "g2servicecellinfo_mLac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    const-string v4, "g2servicecellinfo_mT3212"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    const-string v4, "g2servicecellinfo_mRac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    const-string v4, "g2servicecellinfo_mNmo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    const-string v4, "g2servicecellinfo_mServCELLBcchArfcn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    const-string v4, "g2servicecellinfo_mServCellCi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    const-string v4, "g2servicecellinfo_mServCellGprsSupp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    const-string v4, "g2servicecellinfo_mServSysInfoRxlexMin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    const-string v4, "g2servicecellinfo_mServCellBand"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    const-string v4, "g2servicecellinfo_mServCellDscMax"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    const-string v4, "g2servicecellinfo_mEdgeSupport"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    const-string v4, "g2servicecellinfo_mGprsSupport"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    const-string v4, "g2servicecellinfo_mServSysInfoDtxInd"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    const-string v4, "g2servicecellinfo_mServCellRxlev"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    const-string v4, "g2servicecellinfo_mServCellBsic"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    const-string v4, "g2servicecellinfo_mServCellC1"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    const-string v4, "g2servicecellinfo_mServCellC2"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    const-string v4, "g2servicecellinfo_mServCellC31"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    const-string v4, "g2servicecellinfo_mServCellC32"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    const-string v4, "g2servicecellinfo_mSCellDsc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getG2ServiceCellInfoBySlotId(ILcom/yulong/android/telephony/G2ServiceCellInfo;)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/G2ServiceCellInfo;

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7f

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v4, "g2servicecellinfo_mMcc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    const-string v4, "g2servicecellinfo_mMnc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    const-string v4, "g2servicecellinfo_mLac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    const-string v4, "g2servicecellinfo_mT3212"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    const-string v4, "g2servicecellinfo_mRac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    const-string v4, "g2servicecellinfo_mNmo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    const-string v4, "g2servicecellinfo_mServCELLBcchArfcn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    const-string v4, "g2servicecellinfo_mServCellCi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    const-string v4, "g2servicecellinfo_mServCellGprsSupp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    const-string v4, "g2servicecellinfo_mServSysInfoRxlexMin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    const-string v4, "g2servicecellinfo_mServCellBand"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    const-string v4, "g2servicecellinfo_mServCellDscMax"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    const-string v4, "g2servicecellinfo_mEdgeSupport"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    const-string v4, "g2servicecellinfo_mGprsSupport"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    const-string v4, "g2servicecellinfo_mServSysInfoDtxInd"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    const-string v4, "g2servicecellinfo_mServCellRxlev"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    const-string v4, "g2servicecellinfo_mServCellBsic"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    const-string v4, "g2servicecellinfo_mServCellC1"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    const-string v4, "g2servicecellinfo_mServCellC2"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    const-string v4, "g2servicecellinfo_mServCellC31"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    const-string v4, "g2servicecellinfo_mServCellC32"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    const-string v4, "g2servicecellinfo_mSCellDsc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getG3ServiceCellInfo(ILcom/yulong/android/telephony/G3ServiceCellInfo;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/G3ServiceCellInfo;

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x81

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v4, "g3servicecellinfo_rscp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    const-string v4, "g3servicecellinfo_pathLoss"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    const-string v4, "g3servicecellinfo_arfcn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    const-string v4, "g3servicecellinfo_rssi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    const-string v4, "g3servicecellinfo_mMcc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    const-string v4, "g3servicecellinfo_mMnc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    const-string v4, "g3servicecellinfo_mLac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    const-string v4, "g3servicecellinfo_mT3212"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    const-string v4, "g3servicecellinfo_mRac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    const-string v4, "g3servicecellinfo_mNmo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getG3ServiceCellInfoBySlotId(ILcom/yulong/android/telephony/G3ServiceCellInfo;)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/G3ServiceCellInfo;

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x81

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v4, "g3servicecellinfo_rscp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    const-string v4, "g3servicecellinfo_pathLoss"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    const-string v4, "g3servicecellinfo_arfcn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    const-string v4, "g3servicecellinfo_rssi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    const-string v4, "g3servicecellinfo_mMcc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    const-string v4, "g3servicecellinfo_mMnc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    const-string v4, "g3servicecellinfo_mLac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    const-string v4, "g3servicecellinfo_mT3212"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    const-string v4, "g3servicecellinfo_mRac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    const-string v4, "g3servicecellinfo_mNmo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    const-string v4, "type"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x97

    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v6

    invoke-interface {v4, v5, v2, v3, v6}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v4, "address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IP address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .end local v0    # "address":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "CPTelephonyManager"

    const-string v5, "getAPNlist: NullPointerException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLTECsPsMode(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const-string v4, ""

    .local v4, "state":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    const-string v5, "rilIoControl_ex"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0xa0

    invoke-interface {v5, v6, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v5, "data"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CPTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLTECsPsMode NvCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLastErrorCode()I
    .locals 7

    .prologue
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "indada":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outdata":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x99

    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v6

    invoke-interface {v4, v5, v1, v3, v6}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v4, "lastErrorCode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "lastErrorCode":I
    return v2

    .end local v2    # "lastErrorCode":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getLteServiceCellInfo(ILcom/yulong/android/telephony/LteServiceCellInfo;)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/LteServiceCellInfo;

    .prologue
    const/4 v7, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x89

    invoke-interface {v5, v6, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v4, Lcom/yulong/android/telephony/LteServiceCellInfo;

    invoke-direct {v4}, Lcom/yulong/android/telephony/LteServiceCellInfo;-><init>()V

    .local v4, "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    const-string v5, "LTE_SCELL_INFO"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    check-cast v4, Lcom/yulong/android/telephony/LteServiceCellInfo;

    .restart local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    :goto_1
    const/4 v5, 0x1

    return v5

    .end local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/NullPointerException;
    .restart local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    :cond_0
    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    goto :goto_1
.end method

.method public getLteServiceCellInfoBySlotId(ILcom/yulong/android/telephony/LteServiceCellInfo;)Z
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/LteServiceCellInfo;

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x89

    invoke-interface {v5, v6, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v4, Lcom/yulong/android/telephony/LteServiceCellInfo;

    invoke-direct {v4}, Lcom/yulong/android/telephony/LteServiceCellInfo;-><init>()V

    .local v4, "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    const-string v5, "LTE_SCELL_INFO"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    check-cast v4, Lcom/yulong/android/telephony/LteServiceCellInfo;

    .restart local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    const/4 v5, 0x1

    return v5

    .end local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getModemVersion(I)Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const-string v3, ""

    .local v3, "modemVersion":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x85

    invoke-interface {v5, v6, v2, v4, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v5, "modemversion"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CPTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xl modemVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getModemVersionBySlotId(I)Ljava/lang/String;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const-string v3, ""

    .local v3, "modemVersion":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x85

    invoke-interface {v5, v6, v2, v4, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v5, "modemversion"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CPTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xl modemVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNvVersion(I)Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const-string v3, ""

    .local v3, "nvVersion":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v5

    const/16 v6, 0x86

    invoke-interface {v5, v6, v2, v4, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v5, "nvversion"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CPTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nvVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNvVersionBySlotId(I)Ljava/lang/String;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const-string v3, ""

    .local v3, "nvVersion":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v5

    const/16 v6, 0x86

    invoke-interface {v5, v6, v2, v4, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v5, "nvversion"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CPTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nvVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPhoneTypeByPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getPhoneTypeByPhoneId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CPTelephonyManager"

    const-string v2, "getPhoneTypeByPhoneId error!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRegIdd(I)Ljava/lang/String;
    .locals 5
    .param p1, "iPhoneId"    # I

    .prologue
    const-string v2, ""

    .local v2, "regIdd":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: enter getRegIdd."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRegIdd(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRegIddBySlotId(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const-string v2, ""

    .local v2, "regIdd":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: enter getRegIdd."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRegIddBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRoamingAndDataRoamingOffState(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x96

    invoke-interface {v4, v5, v1, v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v4, "isRoamingAndDataRoamingOffState"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .local v2, "isRoamingAndDataRoamingOffState":Z
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoamingAndDataRoamingOffState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .end local v2    # "isRoamingAndDataRoamingOffState":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "CPTelephonyManager"

    const-string v5, "getAPNlist: NullPointerException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSnId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "CP_COMM: getSnId, Device Not Available"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getYLDeviceId(II)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "devType"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getYLDeviceId(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getYLDeviceIdBySlotId(II)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "devType"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getYLDeviceIdBySlotId(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasDualIccCard(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasDualIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasDualIccCardBySlotId(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasDualIccCardBySlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isDualNetworkRoaming(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "true"

    const-string v1, "cdma.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualNetworkRoamingBySlotId(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public listenDual(Lcom/yulong/android/telephony/CPPhoneStateListener;I)V
    .locals 6
    .param p1, "listenerDual"    # Lcom/yulong/android/telephony/CPPhoneStateListener;
    .param p2, "events"    # I

    .prologue
    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, "notifyNow":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p1, Lcom/yulong/android/telephony/CPPhoneStateListener;->callback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v2, v4, p2, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenDual(Ljava/lang/String;Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "notifyNow":Ljava/lang/Boolean;
    :goto_2
    return-void

    .end local v2    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string v2, "<unknown>"

    goto :goto_0

    .restart local v2    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: listenDual func have RemoteException."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: listenDual func have null pointer."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public operateFactoryNumber(IILjava/lang/String;I)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "operate"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .prologue
    iget-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    :try_start_0
    const-string v1, "CPTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: [operateFactoryNumber] key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", operate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IPhoneSubInfo;->operateFactoryNumber(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public operateFactoryNumberBySlotId(IILjava/lang/String;I)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "operate"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "slotId"    # I

    .prologue
    iget-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    :try_start_0
    const-string v1, "CPTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: [operateFactoryNumber] key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", operate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IPhoneSubInfo;->operateFactoryNumberBySlotId(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public programOfFactoryDataReset()V
    .locals 6

    .prologue
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    const/16 v4, 0x8e

    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v5

    invoke-interface {v3, v4, v1, v2, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "CPTelephonyManager"

    const-string v4, "programOfFactoryDataReset: NullPointerException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public querySingleOrDual()I
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->querySingleOrDual()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CPTelephonyManager"

    const-string v2, "querySingleOrDual: NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public sendCommandToRil(ILjava/lang/String;)V
    .locals 3
    .param p1, "PhoneId"    # I
    .param p2, "strcmd"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCommandToRil(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCommandToRilBySlotId(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "strcmd"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCommandToRilBySlotId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDualLine1NumberBySlotId(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualLine1NumberBySlotId(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDualPreferredNetworkType(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "networkType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    const-string v2, "CPTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDualPreferredNetworkType: networkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "inData":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "outData":Landroid/os/Bundle;
    const-string v2, "network"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/yulong/android/telephony/CPTelephonyManager;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v2

    return v2
.end method

.method public setGpsOne(I)V
    .locals 2
    .param p1, "icmd"    # I

    .prologue
    const-string v0, "CPTelephonyManager"

    const-string v1, "CP_COMM: dont has fuction setGpsOne."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLTECsPsMode(II)I
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v5, 0x1

    const-string v4, ""

    .local v4, "state":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    const-string v6, "rilIoControl_ex"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "LTECsPsMode"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    const/16 v7, 0xa1

    invoke-interface {v6, v7, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v6, "CPTelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setLTECsPsMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "data"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    return v5

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setLTEUsageMode(II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    const-string v4, "lteUsageMode"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x8b

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLTEUsageMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public startModemCellTest(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7d

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public startModemCellTestBySlotId(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7d

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopModemCellTest(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopModemCellTestBySlotId(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 3
    .param p1, "ioCode"    # I
    .param p2, "inData"    # Landroid/os/Bundle;
    .param p3, "outData"    # Landroid/os/Bundle;
    .param p4, "phoneId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 3
    .param p1, "ioCode"    # I
    .param p2, "inData"    # Landroid/os/Bundle;
    .param p3, "outData"    # Landroid/os/Bundle;
    .param p4, "slotId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public telephonyIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "ioCode"    # I
    .param p2, "inData"    # Landroid/os/Bundle;
    .param p3, "outData"    # Landroid/os/Bundle;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->telephonyIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public updateSignalStrength(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/16 v1, 0x1a

    .local v1, "ioCode":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "outData":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    return-void
.end method

.method public updateSignalStrengthBySlotId(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/16 v1, 0x1a

    .local v1, "ioCode":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "outData":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    return-void
.end method
