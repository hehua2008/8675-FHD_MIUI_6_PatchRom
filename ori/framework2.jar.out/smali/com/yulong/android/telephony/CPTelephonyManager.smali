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
    .line 79
    new-instance v0, Lcom/yulong/android/telephony/CPTelephonyManager;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CPTelephonyManager;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPTelephonyManager;->sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    .line 69
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 71
    return-void
.end method

.method public static getCardInfoBySlot(I)Lcom/yulong/android/telephony/CardInfo;
    .locals 1
    .param p0, "slot"    # I

    .prologue
    .line 796
    new-instance v0, Lcom/yulong/android/telephony/CardInfo;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CardInfo;-><init>()V

    .line 797
    .local v0, "cardInfo":Lcom/yulong/android/telephony/CardInfo;
    return-object v0
.end method

.method public static getCurrentCardNum()I
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyManager;->sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 761
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

    .line 268
    const-string v3, "ro.telephony.default_network"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 269
    .local v0, "mode":I
    if-ne v0, v4, :cond_1

    .line 270
    const/4 v1, 0x0

    .line 298
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 271
    :cond_1
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 298
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 282
    goto :goto_0

    .line 291
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v3

    if-eq v3, v2, :cond_0

    move v1, v2

    .line 294
    goto :goto_0

    .line 271
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
    .line 257
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, "type":I
    return v0
.end method

.method public static getPreferredCardInfo()Lcom/yulong/android/telephony/CardInfo;
    .locals 1

    .prologue
    .line 809
    new-instance v0, Lcom/yulong/android/telephony/CardInfo;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CardInfo;-><init>()V

    .line 810
    .local v0, "cardInfo":Lcom/yulong/android/telephony/CardInfo;
    return-object v0
.end method

.method public static getPreferredCardSlot()I
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x1

    .line 863
    .local v0, "cardSlot":I
    return v0
.end method

.method public static getPreferredPhoneId()I
    .locals 3

    .prologue
    .line 847
    const-string v1, "gsm.current.modem-type"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 851
    .local v0, "phoneId":I
    return v0
.end method

.method public static getSecondCardInfo()Lcom/yulong/android/telephony/CardInfo;
    .locals 2

    .prologue
    .line 823
    const-string v0, "CPTelephonyManager"

    const-string v1, "CP_COMM: delete interface!error!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 767
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
    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableDualLocationUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public disableDualLocationUpdatesBySlotId(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1502
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableDualLocationUpdatesBySlotId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1507
    :goto_0
    return-void

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1505
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public enableDualLocationUpdates(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableDualLocationUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableDualLocationUpdatesBySlotId(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1480
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableDualLocationUpdatesBySlotId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1485
    :goto_0
    return-void

    .line 1481
    :catch_0
    move-exception v0

    .line 1482
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1483
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
    .line 1015
    move-object v2, p1

    .line 1017
    .local v2, "retAddress":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: enter filterSmsAddress."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1027
    :goto_0
    return-object v2

    .line 1020
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1023
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1024
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public filterCallAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 2079
    move-object v2, p1

    .line 2081
    .local v2, "retAddress":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: enter filterSmsAddress."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterCallAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2091
    :goto_0
    return-object v2

    .line 2084
    :catch_0
    move-exception v0

    .line 2086
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2087
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2088
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 996
    move-object v2, p1

    .line 998
    .local v2, "retAddress":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: dont has fuction filterSmsAddress."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1007
    :goto_0
    return-object v2

    .line 1000
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1003
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1004
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public filterSmsAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 2060
    move-object v2, p1

    .line 2062
    .local v2, "retAddress":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: dont has fuction filterSmsAddress."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterSmsAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2072
    :goto_0
    return-object v2

    .line 2065
    :catch_0
    move-exception v0

    .line 2067
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2068
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2069
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
    .line 2554
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2555
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2557
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

    .line 2565
    :goto_0
    const-string v4, "apnlist"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2566
    .local v0, "apnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0

    .line 2560
    .end local v0    # "apnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 2561
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2562
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2563
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
    .line 1198
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yulong/android/telephony/G2NeighborCellInfo;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1199
    .local v4, "inData":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1201
    .local v5, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    const/16 v8, 0x80

    invoke-interface {v7, v8, v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1209
    :goto_0
    const-string v7, "g2neighborcellinfolist_size"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1210
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 1211
    new-instance v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;

    invoke-direct {v3}, Lcom/yulong/android/telephony/G2NeighborCellInfo;-><init>()V

    .line 1212
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

    .line 1213
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

    .line 1215
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

    .line 1217
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

    .line 1218
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

    .line 1219
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

    .line 1220
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

    .line 1221
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

    .line 1222
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

    .line 1223
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

    .line 1224
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1204
    .end local v2    # "i":I
    .end local v3    # "in":Lcom/yulong/android/telephony/G2NeighborCellInfo;
    .end local v6    # "size":I
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1206
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1207
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 1226
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
    .line 2240
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yulong/android/telephony/G2NeighborCellInfo;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2241
    .local v4, "inData":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2243
    .local v5, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    const/16 v8, 0x80

    invoke-interface {v7, v8, v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2251
    :goto_0
    const-string v7, "g2neighborcellinfolist_size"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2252
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 2253
    new-instance v3, Lcom/yulong/android/telephony/G2NeighborCellInfo;

    invoke-direct {v3}, Lcom/yulong/android/telephony/G2NeighborCellInfo;-><init>()V

    .line 2254
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

    .line 2255
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

    .line 2257
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

    .line 2259
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

    .line 2260
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

    .line 2261
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

    .line 2262
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

    .line 2263
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

    .line 2264
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

    .line 2265
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

    .line 2266
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 2246
    .end local v2    # "i":I
    .end local v3    # "in":Lcom/yulong/android/telephony/G2NeighborCellInfo;
    .end local v6    # "size":I
    :catch_0
    move-exception v0

    .line 2247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2248
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2249
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 2268
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
    .line 1260
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yulong/android/telephony/G3NeighborCellInfo;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1261
    .local v4, "inData":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1263
    .local v5, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    const/16 v8, 0x82

    invoke-interface {v7, v8, v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1271
    :goto_0
    const-string v7, "g3neighborcellinfolist_size"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1272
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 1273
    new-instance v3, Lcom/yulong/android/telephony/G3NeighborCellInfo;

    invoke-direct {v3}, Lcom/yulong/android/telephony/G3NeighborCellInfo;-><init>()V

    .line 1274
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

    .line 1276
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

    .line 1278
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

    .line 1280
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1266
    .end local v2    # "i":I
    .end local v3    # "in":Lcom/yulong/android/telephony/G3NeighborCellInfo;
    .end local v6    # "size":I
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1268
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1269
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1282
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
    .line 2303
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yulong/android/telephony/G3NeighborCellInfo;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2304
    .local v4, "inData":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2306
    .local v5, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    const/16 v8, 0x82

    invoke-interface {v7, v8, v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2314
    :goto_0
    const-string v7, "g3neighborcellinfolist_size"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2315
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 2316
    new-instance v3, Lcom/yulong/android/telephony/G3NeighborCellInfo;

    invoke-direct {v3}, Lcom/yulong/android/telephony/G3NeighborCellInfo;-><init>()V

    .line 2317
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

    .line 2319
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

    .line 2321
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

    .line 2323
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2315
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2309
    .end local v2    # "i":I
    .end local v3    # "in":Lcom/yulong/android/telephony/G3NeighborCellInfo;
    .end local v6    # "size":I
    :catch_0
    move-exception v0

    .line 2310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2311
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2312
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2325
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
    .line 2602
    const/4 v4, -0x1

    .line 2603
    .local v4, "roamingMode":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2604
    .local v3, "reply":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2605
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2606
    .local v2, "outData":Landroid/os/Bundle;
    const-string v5, "rilIoControl_ex"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2608
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x9a

    invoke-interface {v5, v6, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2617
    :goto_0
    const-string v5, "reply_bundle"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2618
    if-eqz v3, :cond_0

    .line 2619
    const-string v5, "roamingMode"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_0
    move v5, v4

    .line 2621
    :goto_1
    return v5

    .line 2610
    :catch_0
    move-exception v0

    .line 2612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2613
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2614
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "CPTelephonyManager"

    const-string v6, "getCdmaRoamingPreference: NullPointerException"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public getDualAudioRevision(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 905
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualAudioRevision(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 909
    :goto_0
    return-object v1

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 908
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 909
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualAudioRevisionBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1990
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualAudioRevisionBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1995
    :goto_0
    return-object v1

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1994
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1995
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1092
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1097
    :goto_0
    return-object v1

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1095
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1097
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCallState(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 727
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 733
    :goto_0
    return v1

    .line 728
    :catch_0
    move-exception v0

    .line 730
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 731
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 733
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCallStateBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1930
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCallStateBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1937
    :goto_0
    return v1

    .line 1931
    :catch_0
    move-exception v0

    .line 1933
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1935
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1937
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCardType(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 2653
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualCardType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2660
    :goto_0
    return v1

    .line 2654
    :catch_0
    move-exception v0

    .line 2655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2660
    const/4 v1, 0x0

    goto :goto_0

    .line 2656
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2657
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CPTelephonyManager"

    const-string v2, "getDualCardType: NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDualCellLocation(I)Landroid/telephony/CellLocation;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 156
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

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCellLocation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0, p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 163
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 162
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCellLocationBySlotId(I)Landroid/telephony/CellLocation;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1453
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

    .line 1455
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCellLocationBySlotId(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1456
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0, p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1461
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 1457
    :catch_0
    move-exception v1

    .line 1458
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1460
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1461
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 592
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 597
    :goto_0
    return-object v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 595
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 597
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1790
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualCompleteVoiceMailNumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1797
    :goto_0
    return-object v1

    .line 1792
    :catch_0
    move-exception v0

    .line 1793
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1795
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1797
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataActivity(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 739
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataActivity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 745
    :goto_0
    return v1

    .line 740
    :catch_0
    move-exception v0

    .line 742
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 743
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 745
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataActivityBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1943
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataActivityBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1950
    :goto_0
    return v1

    .line 1944
    :catch_0
    move-exception v0

    .line 1946
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1948
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1950
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataState(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 751
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 756
    :goto_0
    return v1

    .line 752
    :catch_0
    move-exception v0

    .line 754
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 755
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 756
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataStateBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1956
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataStateBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1962
    :goto_0
    return v1

    .line 1957
    :catch_0
    move-exception v0

    .line 1959
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1961
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1962
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 125
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceIdBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1432
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceIdBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1437
    :goto_0
    return-object v1

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1436
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1437
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceSvn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 107
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceSoftwareVersionBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1421
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceSvnBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1426
    :goto_0
    return-object v1

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1425
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1426
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualEriVersion(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1070
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualEriVersion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1074
    :goto_0
    return v1

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1073
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1074
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualEriVersionBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2133
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualEriVersionBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2138
    :goto_0
    return v1

    .line 2134
    :catch_0
    move-exception v0

    .line 2135
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2137
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2138
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
    .line 2625
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2626
    .local v4, "inData":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2627
    .local v5, "outData":Landroid/os/Bundle;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2629
    .local v3, "imsis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v8

    const/16 v9, 0xb8

    invoke-interface {v8, v9, v4, v5, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    .line 2631
    if-eqz v5, :cond_0

    .line 2632
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

    .line 2633
    .local v7, "tags":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2634
    .local v6, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2635
    .local v2, "imsi":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_0

    .line 2636
    aget-object v6, v7, v1

    .line 2637
    const-string v8, ""

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2638
    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2639
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

    .line 2635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2642
    .end local v1    # "i":I
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "tags":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2643
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2648
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-object v3

    .line 2644
    :catch_1
    move-exception v0

    .line 2645
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

    .line 558
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 563
    :goto_0
    return-object v1

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 561
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 563
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1AlphaTagBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1754
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1AlphaTagBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1760
    :goto_0
    return-object v1

    .line 1755
    :catch_0
    move-exception v0

    .line 1756
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1758
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1760
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1Number(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 523
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 528
    :goto_0
    return-object v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 526
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 528
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1NumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1716
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1NumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1722
    :goto_0
    return-object v1

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1720
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1722
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualMLPLVersion(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 2665
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMLPLVersion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2672
    :goto_0
    return v1

    .line 2666
    :catch_0
    move-exception v0

    .line 2667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2672
    const/4 v1, 0x0

    goto :goto_0

    .line 2668
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2669
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CPTelephonyManager"

    const-string v2, "getDualMLPLVersion: NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDualMSPLVersion(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 2677
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMSPLVersion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2684
    :goto_0
    return v1

    .line 2678
    :catch_0
    move-exception v0

    .line 2679
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2684
    const/4 v1, 0x0

    goto :goto_0

    .line 2680
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2681
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CPTelephonyManager"

    const-string v2, "getDualMSPLVersion: NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDualMcc(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "imsi":Ljava/lang/String;
    const/4 v1, 0x0

    .line 506
    .local v1, "mcc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 507
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 509
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

    .line 511
    return-object v1
.end method

.method public getDualMccBySlotId(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 1697
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualSubscriberIdBySlotId(I)Ljava/lang/String;

    move-result-object v0

    .line 1698
    .local v0, "imsi":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1699
    .local v1, "mcc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 1700
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1702
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

    .line 1704
    return-object v1
.end method

.method public getDualMin(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1081
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMin(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1085
    :goto_0
    return-object v1

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1084
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1085
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualMinBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2145
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMinBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2150
    :goto_0
    return-object v1

    .line 2146
    :catch_0
    move-exception v0

    .line 2147
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2149
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2150
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

    .line 220
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

    .line 224
    :goto_0
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 223
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 224
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

    .line 1521
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

    .line 1526
    :goto_0
    return-object v1

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1525
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1526
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 361
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 362
    const-string v0, "cdma.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 364
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 365
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkCountryIsoBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1595
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 322
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 323
    const-string v0, "cdma.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 325
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 326
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkOperatorBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1571
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 303
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 304
    const-string v0, "cdma.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    .line 306
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 307
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkOperatorNameBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1559
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualNetworkType(I)I
    .locals 6
    .param p1, "mPhoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 658
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 659
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 661
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNetworkType(I)I

    move-result v2

    .line 674
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 664
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

    .line 669
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 671
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 672
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 674
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkTypeBySlotId(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1860
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1861
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1863
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNetworkTypeBySlotId(I)I

    move-result v2

    .line 1877
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 1866
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

    .line 1871
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1873
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1875
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1877
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "mPhoneId"    # I

    .prologue
    .line 687
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 721
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 689
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 691
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 693
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 695
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 697
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 699
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 701
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 703
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 705
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 707
    :pswitch_9
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 709
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 711
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 713
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 715
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 717
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 719
    :pswitch_f
    const-string v0, "GSM"

    goto :goto_0

    .line 687
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
    .line 1890
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkTypeBySlotId(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1924
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1892
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 1894
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 1896
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 1898
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 1900
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 1902
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 1904
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 1906
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 1908
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 1910
    :pswitch_9
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 1912
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 1914
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 1916
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 1918
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 1920
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 1922
    :pswitch_f
    const-string v0, "GSM"

    goto :goto_0

    .line 1890
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
    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 238
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualActivePhoneType(I)I

    move-result v2

    .line 251
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 242
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 244
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 248
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 251
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDualPhoneTypeBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1539
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1540
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1541
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualActivePhoneTypeBySlotId(I)I

    move-result v2

    .line 1554
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 1544
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1546
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1549
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1550
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 1551
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1554
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

    .line 920
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualPrlVersion(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 924
    :goto_0
    return-object v1

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 923
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 924
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualPrlVersionBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2006
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualPrlVersionBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2011
    :goto_0
    return-object v1

    .line 2007
    :catch_0
    move-exception v0

    .line 2008
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2010
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2011
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualRFCalibration(I)[I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 888
    const/4 v2, 0x6

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 890
    .local v0, "defaultDualRFCalibration":[I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualRFCalibration(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 894
    .end local v0    # "defaultDualRFCalibration":[I
    :goto_0
    return-object v0

    .line 891
    .restart local v0    # "defaultDualRFCalibration":[I
    :catch_0
    move-exception v1

    .line 892
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 893
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 894
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 888
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
    .line 1972
    const/4 v2, 0x6

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 1974
    .local v0, "defaultDualRFCalibration":[I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualRFCalibrationBySlotId(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1979
    .end local v0    # "defaultDualRFCalibration":[I
    :goto_0
    return-object v0

    .line 1975
    .restart local v0    # "defaultDualRFCalibration":[I
    :catch_0
    move-exception v1

    .line 1976
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1978
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1979
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1972
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
    .line 464
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 465
    const-string v0, "cdma.ruim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 467
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 468
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimCountryIsoBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1661
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 431
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 432
    const-string v0, "cdma.ruim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    .line 434
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 435
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimOperatorBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1640
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 449
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 450
    const-string v0, "cdma.ruim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    .line 452
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 453
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimOperatorNameBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1652
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 483
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 488
    :goto_0
    return-object v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 486
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 488
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualSimSerialNumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1674
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualIccSerialNumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1680
    :goto_0
    return-object v1

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1678
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1680
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualSimState(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x2

    .line 399
    if-ne p1, v1, :cond_1

    .line 400
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "prop":Ljava/lang/String;
    :goto_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    const/4 v1, 0x1

    .line 417
    :cond_0
    :goto_1
    return v1

    .line 402
    .end local v0    # "prop":Ljava/lang/String;
    :cond_1
    const-string v2, "cdma.ruim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "prop":Ljava/lang/String;
    goto :goto_0

    .line 408
    :cond_2
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 410
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 411
    const/4 v1, 0x3

    goto :goto_1

    .line 412
    :cond_3
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 413
    const/4 v1, 0x4

    goto :goto_1

    .line 414
    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 415
    const/4 v1, 0x5

    goto :goto_1

    .line 417
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDualSimStateBySlotId(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1626
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const/4 v0, 0x0

    return v0
.end method

.method public getDualSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 494
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 499
    :goto_0
    return-object v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 497
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 499
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualSubscriberIdBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1686
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualSubscriberIdBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1692
    :goto_0
    return-object v1

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1690
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1692
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualUimId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 935
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualUimId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 939
    :goto_0
    return-object v1

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 938
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 939
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualUimIdBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2022
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualUimIdBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2027
    :goto_0
    return-object v1

    .line 2023
    :catch_0
    move-exception v0

    .line 2024
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2026
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2027
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualUserSetEncodingMode(I)Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 1400
    const-string v1, ""

    .line 1401
    .local v1, "encodingMode":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1402
    .local v3, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1404
    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v5

    const/16 v6, 0x87

    invoke-interface {v5, v6, v3, v4, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1412
    :goto_0
    const-string v5, "encodemode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1413
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

    .line 1414
    return-object v1

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1409
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1410
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDualUserSetEncodingModeBySlotId(I)Ljava/lang/String;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 2434
    const-string v1, ""

    .line 2435
    .local v1, "encodingMode":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2436
    .local v3, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2438
    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v5

    const/16 v6, 0x87

    invoke-interface {v5, v6, v3, v4, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2446
    :goto_0
    const-string v5, "encodemode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2447
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

    .line 2448
    return-object v1

    .line 2441
    :catch_0
    move-exception v0

    .line 2442
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2443
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2444
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 629
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 634
    :goto_0
    return-object v1

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 632
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 634
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailAlphaTagBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1830
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailAlphaTagBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1836
    :goto_0
    return-object v1

    .line 1831
    :catch_0
    move-exception v0

    .line 1832
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1834
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1836
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 575
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 580
    :goto_0
    return-object v1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 578
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 580
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailNumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1772
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailNumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1778
    :goto_0
    return-object v1

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1776
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1778
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMessageCount(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 611
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 616
    :goto_0
    return v1

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 614
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 616
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMessageCountBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1811
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualVoiceMessageCountBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1817
    :goto_0
    return v1

    .line 1812
    :catch_0
    move-exception v0

    .line 1813
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1815
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1817
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getG2ServiceCellInfo(ILcom/yulong/android/telephony/G2ServiceCellInfo;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/G2ServiceCellInfo;

    .prologue
    .line 1150
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1151
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1153
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7f

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1162
    :goto_0
    const-string v4, "g2servicecellinfo_mMcc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    .line 1163
    const-string v4, "g2servicecellinfo_mMnc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    .line 1164
    const-string v4, "g2servicecellinfo_mLac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    .line 1165
    const-string v4, "g2servicecellinfo_mT3212"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    .line 1166
    const-string v4, "g2servicecellinfo_mRac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    .line 1167
    const-string v4, "g2servicecellinfo_mNmo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    .line 1168
    const-string v4, "g2servicecellinfo_mServCELLBcchArfcn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    .line 1170
    const-string v4, "g2servicecellinfo_mServCellCi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    .line 1171
    const-string v4, "g2servicecellinfo_mServCellGprsSupp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    .line 1173
    const-string v4, "g2servicecellinfo_mServSysInfoRxlexMin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    .line 1175
    const-string v4, "g2servicecellinfo_mServCellBand"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    .line 1176
    const-string v4, "g2servicecellinfo_mServCellDscMax"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    .line 1178
    const-string v4, "g2servicecellinfo_mEdgeSupport"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    .line 1179
    const-string v4, "g2servicecellinfo_mGprsSupport"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    .line 1180
    const-string v4, "g2servicecellinfo_mServSysInfoDtxInd"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    .line 1182
    const-string v4, "g2servicecellinfo_mServCellRxlev"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    .line 1184
    const-string v4, "g2servicecellinfo_mServCellBsic"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    .line 1185
    const-string v4, "g2servicecellinfo_mServCellC1"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    .line 1186
    const-string v4, "g2servicecellinfo_mServCellC2"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    .line 1187
    const-string v4, "g2servicecellinfo_mServCellC31"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    .line 1188
    const-string v4, "g2servicecellinfo_mServCellC32"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    .line 1189
    const-string v4, "g2servicecellinfo_mSCellDsc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    .line 1191
    const/4 v4, 0x1

    return v4

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1158
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1159
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getG2ServiceCellInfoBySlotId(ILcom/yulong/android/telephony/G2ServiceCellInfo;)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/G2ServiceCellInfo;

    .prologue
    .line 2192
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2193
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2195
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7f

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2204
    :goto_0
    const-string v4, "g2servicecellinfo_mMcc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    .line 2205
    const-string v4, "g2servicecellinfo_mMnc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    .line 2206
    const-string v4, "g2servicecellinfo_mLac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    .line 2207
    const-string v4, "g2servicecellinfo_mT3212"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    .line 2208
    const-string v4, "g2servicecellinfo_mRac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    .line 2209
    const-string v4, "g2servicecellinfo_mNmo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    .line 2210
    const-string v4, "g2servicecellinfo_mServCELLBcchArfcn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    .line 2212
    const-string v4, "g2servicecellinfo_mServCellCi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    .line 2213
    const-string v4, "g2servicecellinfo_mServCellGprsSupp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    .line 2215
    const-string v4, "g2servicecellinfo_mServSysInfoRxlexMin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    .line 2217
    const-string v4, "g2servicecellinfo_mServCellBand"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    .line 2218
    const-string v4, "g2servicecellinfo_mServCellDscMax"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    .line 2220
    const-string v4, "g2servicecellinfo_mEdgeSupport"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    .line 2221
    const-string v4, "g2servicecellinfo_mGprsSupport"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    .line 2222
    const-string v4, "g2servicecellinfo_mServSysInfoDtxInd"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    .line 2224
    const-string v4, "g2servicecellinfo_mServCellRxlev"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    .line 2226
    const-string v4, "g2servicecellinfo_mServCellBsic"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    .line 2227
    const-string v4, "g2servicecellinfo_mServCellC1"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    .line 2228
    const-string v4, "g2servicecellinfo_mServCellC2"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    .line 2229
    const-string v4, "g2servicecellinfo_mServCellC31"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    .line 2230
    const-string v4, "g2servicecellinfo_mServCellC32"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    .line 2231
    const-string v4, "g2servicecellinfo_mSCellDsc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    .line 2233
    const/4 v4, 0x1

    return v4

    .line 2198
    :catch_0
    move-exception v0

    .line 2199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2200
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2201
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getG3ServiceCellInfo(ILcom/yulong/android/telephony/G3ServiceCellInfo;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/G3ServiceCellInfo;

    .prologue
    .line 1232
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1233
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1235
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x81

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1243
    :goto_0
    const-string v4, "g3servicecellinfo_rscp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    .line 1244
    const-string v4, "g3servicecellinfo_pathLoss"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    .line 1245
    const-string v4, "g3servicecellinfo_arfcn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    .line 1246
    const-string v4, "g3servicecellinfo_rssi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    .line 1247
    const-string v4, "g3servicecellinfo_mMcc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    .line 1248
    const-string v4, "g3servicecellinfo_mMnc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    .line 1249
    const-string v4, "g3servicecellinfo_mLac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    .line 1250
    const-string v4, "g3servicecellinfo_mT3212"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    .line 1251
    const-string v4, "g3servicecellinfo_mRac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    .line 1252
    const-string v4, "g3servicecellinfo_mNmo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    .line 1253
    const/4 v4, 0x1

    return v4

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1240
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1241
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getG3ServiceCellInfoBySlotId(ILcom/yulong/android/telephony/G3ServiceCellInfo;)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/G3ServiceCellInfo;

    .prologue
    .line 2275
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2276
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2278
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x81

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2286
    :goto_0
    const-string v4, "g3servicecellinfo_rscp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    .line 2287
    const-string v4, "g3servicecellinfo_pathLoss"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    .line 2288
    const-string v4, "g3servicecellinfo_arfcn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    .line 2289
    const-string v4, "g3servicecellinfo_rssi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    .line 2290
    const-string v4, "g3servicecellinfo_mMcc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    .line 2291
    const-string v4, "g3servicecellinfo_mMnc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    .line 2292
    const-string v4, "g3servicecellinfo_mLac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    .line 2293
    const-string v4, "g3servicecellinfo_mT3212"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    .line 2294
    const-string v4, "g3servicecellinfo_mRac"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    .line 2295
    const-string v4, "g3servicecellinfo_mNmo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    .line 2296
    const/4 v4, 0x1

    return v4

    .line 2281
    :catch_0
    move-exception v0

    .line 2282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2283
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2284
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2534
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2535
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2536
    .local v3, "outData":Landroid/os/Bundle;
    const-string v4, "type"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
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

    .line 2546
    :goto_0
    const-string v4, "address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2547
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

    .line 2548
    return-object v0

    .line 2541
    .end local v0    # "address":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2542
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2543
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2544
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
    .line 2468
    const-string v4, ""

    .line 2469
    .local v4, "state":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2470
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2471
    .local v3, "outData":Landroid/os/Bundle;
    const-string v5, "rilIoControl_ex"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2473
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0xa0

    invoke-interface {v5, v6, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2480
    :goto_0
    const-string v5, "data"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2481
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

    .line 2482
    return-void

    .line 2475
    :catch_0
    move-exception v0

    .line 2476
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2477
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2478
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLastErrorCode()I
    .locals 7

    .prologue
    .line 2571
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2572
    .local v1, "indada":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2574
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

    .line 2580
    :goto_0
    const-string v4, "lastErrorCode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2581
    .local v2, "lastErrorCode":I
    return v2

    .line 2577
    .end local v2    # "lastErrorCode":I
    :catch_0
    move-exception v0

    .line 2578
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

    .line 1288
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1289
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1291
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x89

    invoke-interface {v5, v6, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1300
    :goto_0
    new-instance v4, Lcom/yulong/android/telephony/LteServiceCellInfo;

    invoke-direct {v4}, Lcom/yulong/android/telephony/LteServiceCellInfo;-><init>()V

    .line 1301
    .local v4, "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    const-string v5, "LTE_SCELL_INFO"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    check-cast v4, Lcom/yulong/android/telephony/LteServiceCellInfo;

    .line 1304
    .restart local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    if-eqz v4, :cond_0

    .line 1305
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    .line 1306
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    .line 1307
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    .line 1308
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    .line 1309
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    .line 1310
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    .line 1319
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 1294
    .end local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    :catch_0
    move-exception v0

    .line 1295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1296
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1297
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1312
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    .restart local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    :cond_0
    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    .line 1313
    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    .line 1314
    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    .line 1315
    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    .line 1316
    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    .line 1317
    iput v7, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    goto :goto_1
.end method

.method public getLteServiceCellInfoBySlotId(ILcom/yulong/android/telephony/LteServiceCellInfo;)Z
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/yulong/android/telephony/LteServiceCellInfo;

    .prologue
    .line 2332
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2333
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2335
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x89

    invoke-interface {v5, v6, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2344
    :goto_0
    new-instance v4, Lcom/yulong/android/telephony/LteServiceCellInfo;

    invoke-direct {v4}, Lcom/yulong/android/telephony/LteServiceCellInfo;-><init>()V

    .line 2345
    .local v4, "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    const-string v5, "LTE_SCELL_INFO"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    check-cast v4, Lcom/yulong/android/telephony/LteServiceCellInfo;

    .line 2348
    .restart local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    .line 2349
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    .line 2350
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    .line 2351
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    .line 2352
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    .line 2353
    iget v5, v4, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    iput v5, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    .line 2354
    const/4 v5, 0x1

    return v5

    .line 2338
    .end local v4    # "temp":Lcom/yulong/android/telephony/LteServiceCellInfo;
    :catch_0
    move-exception v0

    .line 2339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2340
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2341
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getModemVersion(I)Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 1324
    const-string v3, ""

    .line 1325
    .local v3, "modemVersion":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1326
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1328
    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x85

    invoke-interface {v5, v6, v2, v4, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1336
    :goto_0
    const-string v5, "modemversion"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1337
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

    .line 1338
    return-object v3

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1333
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1334
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getModemVersionBySlotId(I)Ljava/lang/String;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 2359
    const-string v3, ""

    .line 2360
    .local v3, "modemVersion":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2361
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2363
    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0x85

    invoke-interface {v5, v6, v2, v4, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2371
    :goto_0
    const-string v5, "modemversion"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2372
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

    .line 2373
    return-object v3

    .line 2366
    :catch_0
    move-exception v0

    .line 2367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2368
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2369
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNvVersion(I)Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 1381
    const-string v3, ""

    .line 1382
    .local v3, "nvVersion":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1383
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1385
    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v5

    const/16 v6, 0x86

    invoke-interface {v5, v6, v2, v4, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1393
    :goto_0
    const-string v5, "nvversion"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1394
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

    .line 1395
    return-object v3

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1390
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1391
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNvVersionBySlotId(I)Ljava/lang/String;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 2415
    const-string v3, ""

    .line 2416
    .local v3, "nvVersion":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2417
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2419
    .local v4, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v5

    const/16 v6, 0x86

    invoke-interface {v5, v6, v2, v4, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2427
    :goto_0
    const-string v5, "nvversion"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2428
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

    .line 2429
    return-object v3

    .line 2422
    :catch_0
    move-exception v0

    .line 2423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2424
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2425
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPhoneTypeByPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 875
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getPhoneTypeByPhoneId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 878
    :goto_0
    return v1

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CPTelephonyManager"

    const-string v2, "getPhoneTypeByPhoneId error!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRegIdd(I)Ljava/lang/String;
    .locals 5
    .param p1, "iPhoneId"    # I

    .prologue
    .line 1053
    const-string v2, ""

    .line 1055
    .local v2, "regIdd":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: enter getRegIdd."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRegIdd(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1064
    :goto_0
    return-object v2

    .line 1057
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1060
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1061
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRegIddBySlotId(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 2116
    const-string v2, ""

    .line 2118
    .local v2, "regIdd":Ljava/lang/String;
    :try_start_0
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: enter getRegIdd."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRegIddBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2127
    :goto_0
    return-object v2

    .line 2120
    :catch_0
    move-exception v0

    .line 2122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2123
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2124
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRoamingAndDataRoamingOffState(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    .line 2517
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2518
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2520
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x96

    invoke-interface {v4, v5, v1, v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2527
    :goto_0
    const-string v4, "isRoamingAndDataRoamingOffState"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2528
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

    .line 2529
    return v2

    .line 2522
    .end local v2    # "isRoamingAndDataRoamingOffState":Z
    :catch_0
    move-exception v0

    .line 2523
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2524
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2525
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "CPTelephonyManager"

    const-string v5, "getAPNlist: NullPointerException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSnId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    const-string v0, "CPTelephonyManager"

    const-string v1, "CP_COMM: getSnId, Device Not Available"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getYLDeviceId(II)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "devType"    # I

    .prologue
    const/4 v1, 0x0

    .line 139
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getYLDeviceId(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 142
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getYLDeviceIdBySlotId(II)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "devType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1443
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getYLDeviceIdBySlotId(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1448
    :goto_0
    return-object v1

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1447
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1448
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasDualIccCard(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 376
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasDualIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 382
    :goto_0
    return v1

    .line 377
    :catch_0
    move-exception v0

    .line 379
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 380
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 382
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasDualIccCardBySlotId(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1604
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasDualIccCardBySlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1611
    :goto_0
    return v1

    .line 1605
    :catch_0
    move-exception v0

    .line 1607
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1609
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1611
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isDualNetworkRoaming(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 341
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 342
    const-string v0, "true"

    const-string v1, "cdma.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 348
    :goto_0
    return v0

    .line 344
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 345
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 348
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualNetworkRoamingBySlotId(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1582
    const-string v0, "CPTelephonyManager"

    const-string v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v0, 0x0

    return v0
.end method

.method public listenDual(Lcom/yulong/android/telephony/CPPhoneStateListener;I)V
    .locals 6
    .param p1, "listenerDual"    # Lcom/yulong/android/telephony/CPPhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 772
    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 775
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

    .line 776
    .local v1, "notifyNow":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p1, Lcom/yulong/android/telephony/CPPhoneStateListener;->callback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v2, v4, p2, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenDual(Ljava/lang/String;Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 785
    .end local v1    # "notifyNow":Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 772
    .end local v2    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string v2, "<unknown>"

    goto :goto_0

    .line 775
    .restart local v2    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 778
    :catch_0
    move-exception v0

    .line 780
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: listenDual func have RemoteException."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 781
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 783
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
    .line 1360
    iget-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    if-nez p3, :cond_0

    .line 1363
    const-string p3, ""

    .line 1366
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

    .line 1369
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IPhoneSubInfo;->operateFactoryNumber(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1377
    :goto_0
    return-void

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1373
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1375
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
    .line 2394
    iget-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    if-nez p3, :cond_0

    .line 2397
    const-string p3, ""

    .line 2400
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

    .line 2403
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IPhoneSubInfo;->operateFactoryNumberBySlotId(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2411
    :goto_0
    return-void

    .line 2405
    :catch_0
    move-exception v0

    .line 2406
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2407
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2409
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public programOfFactoryDataReset()V
    .locals 6

    .prologue
    .line 2586
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2587
    .local v1, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2589
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

    .line 2598
    :goto_0
    return-void

    .line 2592
    :catch_0
    move-exception v0

    .line 2593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2594
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2595
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "CPTelephonyManager"

    const-string v4, "programOfFactoryDataReset: NullPointerException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public querySingleOrDual()I
    .locals 3

    .prologue
    .line 2689
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->querySingleOrDual()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2696
    :goto_0
    return v1

    .line 2690
    :catch_0
    move-exception v0

    .line 2691
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2696
    const/4 v1, 0x0

    goto :goto_0

    .line 2692
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2693
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CPTelephonyManager"

    const-string v2, "querySingleOrDual: NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public sendCommandToRil(ILjava/lang/String;)V
    .locals 3
    .param p1, "PhoneId"    # I
    .param p2, "strcmd"    # Ljava/lang/String;

    .prologue
    .line 1033
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCommandToRil(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1039
    :goto_0
    return-void

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1036
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1037
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCommandToRilBySlotId(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "strcmd"    # Ljava/lang/String;

    .prologue
    .line 2097
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCommandToRilBySlotId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2103
    :goto_0
    return-void

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2100
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2101
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1104
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1111
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1107
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1109
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 538
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 545
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 542
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 543
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
    .line 1733
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualLine1NumberBySlotId(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1741
    :goto_0
    return-void

    .line 1735
    :catch_0
    move-exception v0

    .line 1737
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1738
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1739
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDualPreferredNetworkType(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "networkType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 2506
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

    .line 2507
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2508
    .local v0, "inData":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2509
    .local v1, "outData":Landroid/os/Bundle;
    const-string v2, "network"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    const/16 v2, 0x18

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/yulong/android/telephony/CPTelephonyManager;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v2

    return v2
.end method

.method public setGpsOne(I)V
    .locals 2
    .param p1, "icmd"    # I

    .prologue
    .line 972
    const-string v0, "CPTelephonyManager"

    const-string v1, "CP_COMM: dont has fuction setGpsOne."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-void
.end method

.method public setLTECsPsMode(II)I
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v5, 0x1

    .line 2486
    const-string v4, ""

    .line 2487
    .local v4, "state":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2488
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2489
    .local v3, "outData":Landroid/os/Bundle;
    const-string v6, "rilIoControl_ex"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2490
    const-string v6, "LTECsPsMode"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2492
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    const/16 v7, 0xa1

    invoke-interface {v6, v7, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2499
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

    .line 2500
    const-string v6, "data"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2502
    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    return v5

    .line 2494
    :catch_0
    move-exception v0

    .line 2495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2496
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2497
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2502
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
    .line 2452
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2453
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2455
    .local v3, "outData":Landroid/os/Bundle;
    const-string v4, "lteUsageMode"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2457
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x8b

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2464
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

    .line 2465
    return-void

    .line 2459
    :catch_0
    move-exception v0

    .line 2460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2461
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2462
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public startModemCellTest(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 1116
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1117
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1119
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7d

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1127
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1124
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1125
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public startModemCellTestBySlotId(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 2157
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2158
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2160
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7d

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2168
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 2163
    :catch_0
    move-exception v0

    .line 2164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2165
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2166
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopModemCellTest(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 1133
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1134
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1136
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1144
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1141
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1142
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopModemCellTestBySlotId(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 2174
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2175
    .local v2, "inData":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2177
    .local v3, "outData":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2185
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 2180
    :catch_0
    move-exception v0

    .line 2181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2182
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2183
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
    .line 959
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 968
    :goto_0
    return v2

    .line 961
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 968
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 964
    :catch_1
    move-exception v1

    .line 965
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
    .line 2034
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2043
    :goto_0
    return v2

    .line 2036
    :catch_0
    move-exception v0

    .line 2038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2043
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2039
    :catch_1
    move-exception v1

    .line 2040
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
    .line 945
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->telephonyIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 953
    :goto_0
    return v2

    .line 946
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 953
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 949
    :catch_1
    move-exception v1

    .line 950
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public updateSignalStrength(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1342
    const/16 v1, 0x1a

    .line 1343
    .local v1, "ioCode":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1344
    .local v0, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1346
    .local v2, "outData":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    .line 1347
    return-void
.end method

.method public updateSignalStrengthBySlotId(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 2377
    const/16 v1, 0x1a

    .line 2378
    .local v1, "ioCode":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2379
    .local v0, "inData":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2380
    .local v2, "outData":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    .line 2381
    return-void
.end method
