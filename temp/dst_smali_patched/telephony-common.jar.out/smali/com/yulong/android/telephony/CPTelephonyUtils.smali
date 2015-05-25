.class public Lcom/yulong/android/telephony/CPTelephonyUtils;
.super Ljava/lang/Object;
.source "CPTelephonyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/telephony/CPTelephonyUtils$MyHandler;
    }
.end annotation


# static fields
.field public static final DELAY_REFRESH_STRENGTH_PERIOD_MILLIS_TEN:I = 0x2710

.field static final LOG_TAG:Ljava/lang/String; = "CPTelephonyUtils"

.field public static final NOTIFY_TDDLTE_DISABLED_MILLIS:I = 0x2bf20

.field private static mCPTelephonyUtils:Lcom/yulong/android/telephony/CPTelephonyUtils;

.field private static mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static mContext:Landroid/content/Context;

.field private static mGsmPhone:Lcom/android/internal/telephony/PhoneBase;


# instance fields
.field protected mMyHandler:Landroid/os/Handler;

.field public mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field protected mStoreBaseStationId:I

.field protected mStoreBaseStationLatitude:I

.field protected mStoreBaseStationLongitude:I

.field protected thread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 2
    .param p1, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mMyHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->thread:Landroid/os/HandlerThread;

    iput v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationId:I

    iput v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLatitude:I

    iput v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLongitude:I

    sput-object p1, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sput-object p2, Lcom/yulong/android/telephony/CPTelephonyUtils;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sput-object p3, Lcom/yulong/android/telephony/CPTelephonyUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CPTelephonyUtils"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->thread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/yulong/android/telephony/CPTelephonyUtils$MyHandler;

    iget-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yulong/android/telephony/CPTelephonyUtils$MyHandler;-><init>(Lcom/yulong/android/telephony/CPTelephonyUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mMyHandler:Landroid/os/Handler;

    return-void
.end method

.method private comparePosition()Z
    .locals 4

    .prologue
    const v0, 0x4f35c

    .local v0, "mBaseStationLatitude":I
    const v1, 0x1912db

    .local v1, "mBaseStationLongitude":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currrent cell location is mStoreBaseStationLatitude =:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLatitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mStoreBaseStationLongitude = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLongitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    const v2, 0x4f35c

    iget v3, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLatitude:I

    if-ne v2, v3, :cond_0

    const v2, 0x1912db

    iget v3, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLongitude:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/yulong/android/telephony/CPTelephonyUtils;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCPTelephonyUtils:Lcom/yulong/android/telephony/CPTelephonyUtils;

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)Lcom/yulong/android/telephony/CPTelephonyUtils;
    .locals 1
    .param p0, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCPTelephonyUtils:Lcom/yulong/android/telephony/CPTelephonyUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulong/android/telephony/CPTelephonyUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/yulong/android/telephony/CPTelephonyUtils;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    sput-object v0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCPTelephonyUtils:Lcom/yulong/android/telephony/CPTelephonyUtils;

    :cond_0
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCPTelephonyUtils:Lcom/yulong/android/telephony/CPTelephonyUtils;

    return-object v0
.end method


# virtual methods
.method public broadcastOfflineMode(Lcom/android/internal/telephony/ServiceStateTracker;ZI)V
    .locals 3
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "mOfflineMode"    # Z
    .param p3, "mSlotId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastOfflineMode,mOfflineMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSlotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.ACTION_NETWORK_OFFLINE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mOfflineMode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "mSlotId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastRoamingStateChanged(Lcom/android/internal/telephony/ServiceStateTracker;ZZ)V
    .locals 5
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "roaming"    # Z
    .param p3, "mRoamingChanged"    # Z

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .local v1, "mPhoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v2

    .local v2, "mSoltId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastRoamingStateChanged roaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRoamingChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "yulong.intent.action.ROAMING_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "mRoaming"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "mRoamingChanged"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "mPhoneId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "slotIdKey"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public checkRoamingBetweenOperators(ZI)Z
    .locals 10
    .param p1, "isRoaming"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v1, ""

    .local v1, "iccNumeric":Ljava/lang/String;
    const-string v2, ""

    .local v2, "operatorNumeric":Ljava/lang/String;
    if-ne p2, v5, :cond_2

    const-string v7, "cdma.ruim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v7, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "simNumericName":Ljava/lang/String;
    iget-object v7, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "operatorNumericName":Ljava/lang/String;
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "equalsMcc":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simNumericName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", operatorNumericName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    if-nez v3, :cond_4

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    :goto_1
    return v5

    .end local v0    # "equalsMcc":Z
    .end local v3    # "operatorNumericName":Ljava/lang/String;
    .end local v4    # "simNumericName":Ljava/lang/String;
    :cond_2
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/yulong/android/telephony/CPTelephonyUtils;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .restart local v0    # "equalsMcc":Z
    .restart local v3    # "operatorNumericName":Ljava/lang/String;
    .restart local v4    # "simNumericName":Ljava/lang/String;
    :cond_3
    move v5, v6

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    if-eqz v0, :cond_1

    :cond_5
    move v5, v6

    goto :goto_1
.end method

.method public checkRoamingByOperatorType(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "isRoaming"    # Z
    .param p2, "strHomePlmn"    # Ljava/lang/String;
    .param p3, "strServingPlmn"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    .local v4, "operatorType":I
    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return p1

    :sswitch_0
    const-string v7, "cdma.ruim.operator.iso-country"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "iccIso":Ljava/lang/String;
    const-string v7, "us"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_0

    invoke-virtual {p3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "servingMcc":I
    const/16 v7, 0x136

    if-lt v5, v7, :cond_1

    const/16 v7, 0x13c

    if-le v5, v7, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x7

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "310470"

    aput-object v7, v0, v10

    const/4 v7, 0x1

    const-string v8, "310370"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "310032"

    aput-object v8, v0, v7

    const-string v7, "310140"

    aput-object v7, v0, v9

    const/4 v7, 0x4

    const-string v8, "311250"

    aput-object v8, v0, v7

    const/4 v7, 0x5

    const-string v8, "310400"

    aput-object v8, v0, v7

    const/4 v7, 0x6

    const-string v8, "311170"

    aput-object v8, v0, v7

    .local v0, "guam":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_0

    aget-object v7, v0, v1

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 p1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "guam":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "iccIso":Ljava/lang/String;
    .end local v5    # "servingMcc":I
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "spn":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "ons":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "234"

    invoke-virtual {p3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Orange"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "T-Mobile"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    const-string v7, "T-Mobile"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Orange"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_5
    const/4 p1, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_1
        0x8c -> :sswitch_0
    .end sparse-switch
.end method

.method public checkTddLteNetworkWorked(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 6
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    const/16 v5, 0x43

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .local v0, "mDesiredPowerState":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmNewSS()Landroid/telephony/ServiceState;

    move-result-object v1

    .local v1, "mNewSS":Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsTDDOnlyNotified:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    iget-object v3, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x2e630

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-wide/32 v3, 0x2bf20

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v3, "checkTddLteNetworkWorked sendMessageDelayed EVENT_NOTIFY_TDDLTE_DISABLED"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    iget-object v3, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    const-string v3, "checkTddLteNetworkWorked removeMessages EVENT_NOTIFY_TDDLTE_DISABLED"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPlmnByRejectCause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "rejectCode"    # I

    .prologue
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlmnByRejectCause rejectCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    sparse-switch p2, :sswitch_data_0

    const-string p1, "Searching\ufffd\ufffd"

    :cond_0
    :goto_0
    return-object p1

    :sswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040305

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :sswitch_1
    const-string p1, "Searching\ufffd\ufffd"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public getRuleByOperatorType(IZI)I
    .locals 6
    .param p1, "rule"    # I
    .param p2, "roaming"    # Z
    .param p3, "serviceState"    # I

    .prologue
    const/4 v1, 0x1

    .local v1, "SPN_RULE_SHOW_SPN":I
    const/4 v0, 0x2

    .local v0, "SPN_RULE_SHOW_PLMN":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v2

    .local v2, "operatorType":I
    const-string v4, "cdma.ruim.operator.alpha"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "spn":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return p1

    :sswitch_0
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_1
    if-nez p2, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_1
        0x8c -> :sswitch_0
    .end sparse-switch
.end method

.method public getSpnByLanguage(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .local v0, "ct":Ljava/lang/String;
    const-string v3, ""

    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpnByLanguage country:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",numeric:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    const-string v4, "TW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    const-string v4, "460"

    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "operatorNumericF":Ljava/lang/String;
    iget-object v4, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object p3, v3

    .end local v2    # "operatorNumericF":Ljava/lang/String;
    .end local p3    # "spn":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p3

    .restart local p3    # "spn":Ljava/lang/String;
    :cond_1
    const-string v4, "CN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    const-string v4, "460"

    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "numeric":I
    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object p3, v3

    goto :goto_0

    :pswitch_1
    const-string v3, "China Mobile"

    goto :goto_1

    :pswitch_2
    const-string v3, "China Unicom"

    goto :goto_1

    :pswitch_3
    const-string v3, "China Telecom"

    goto :goto_1

    :pswitch_4
    const-string v3, "China Satcom"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xb3b0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTextResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-string v0, ""

    .local v0, "temp":Ljava/lang/String;
    const-string v1, "CARD_NO_METRO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Insert SIM. Emergency Calls Only!"

    :cond_0
    return-object v0
.end method

.method public isDualmodeCardType(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertPhoneIdToSlotId(I)I

    move-result v1

    .local v1, "iSlotId":I
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getCardTypeBySlotId(I)I

    move-result v0

    .local v0, "cardType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualmodeCardType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CPTelephonyUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public secondSelectNetwork(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 11
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    const/16 v10, 0x42

    const/16 v9, 0x41

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .local v1, "mDesiredPowerState":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmSS()Landroid/telephony/ServiceState;

    move-result-object v4

    .local v4, "mSS":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmNewSS()Landroid/telephony/ServiceState;

    move-result-object v2

    .local v2, "mNewSS":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .local v3, "mPhoneId":I
    if-eqz v1, :cond_5

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPTelephonyUtils;->isDualmodeCardType(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .local v5, "msg":Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v0, 0x0

    .local v0, "delayTime":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "judge the location whether on the border :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyUtils;->comparePosition()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyUtils;->comparePosition()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v0, 0x2

    :goto_1
    iget-object v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    add-int/lit8 v8, v0, 0x1

    mul-int/lit16 v8, v8, 0x2710

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    mul-int/lit16 v7, v0, 0x2710

    int-to-long v7, v7

    invoke-virtual {p1, v5, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "delayTime":I
    :goto_2
    const/4 v7, 0x2

    if-ne v7, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v7, v7, Lcom/android/internal/telephony/PhoneBase;->mIsManualSelectNW:Z

    if-eqz v7, :cond_2

    invoke-virtual {p1, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .local v6, "msg1":Landroid/os/Message;
    iput v10, v6, Landroid/os/Message;->what:I

    const-wide/32 v7, 0x186a0

    invoke-virtual {p1, v6, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v7, "secondSelectNetwork sendMessageDelayed EVENT_DELAY_MANUAL_TO_AOTO"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    .end local v6    # "msg1":Landroid/os/Message;
    :cond_2
    const-string v7, "secondSelectNetwork sendMessageDelayed EVENT_DELAY_REFRESH_NETWORK"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "delayTime":I
    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    .end local v0    # "delayTime":I
    :cond_4
    iget-object v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v8, 0x29810

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-wide/32 v7, 0x27100

    invoke-virtual {p1, v5, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .end local v5    # "msg":Landroid/os/Message;
    :cond_5
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    invoke-virtual {p1, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    iget-object v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    const-string v7, "secondSelectNetwork removeMessages EVENT_DELAY_REFRESH_NETWORK"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected sendDelayDataTimeOutMessage(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 11
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    const/16 v5, 0x40

    const/4 v8, 0x1

    const/16 v3, -0x65

    const/4 v2, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radio state:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmCi()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .local v10, "msg":Landroid/os/Message;
    iput v5, v10, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .local v9, "mPhone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v4, 0x2

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getCardAppState(II)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->isAppReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "liuyong add send 9s send delay"

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    const-wide/16 v1, 0x2328

    invoke-virtual {p1, v10, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    .restart local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-wide/32 v4, 0x9c40

    invoke-virtual {p1, v10, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .local v0, "mSignalStrength":Landroid/telephony/SignalStrength;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v8, v1, :cond_1

    const/4 v1, 0x3

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIZ)V

    :goto_1
    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    .end local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    goto :goto_0

    .restart local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const/16 v1, 0x63

    const/4 v8, 0x0

    move v4, v2

    move v5, v3

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIZ)V

    goto :goto_1
.end method

.method protected sendDelayTimeOutMessage(Lcom/android/internal/telephony/ServiceStateTracker;Z)V
    .locals 11
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "isDsdsAct"    # Z

    .prologue
    const/16 v5, 0x3f

    const/16 v3, -0x65

    const/4 v8, 0x1

    const/4 v2, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radio state:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmCi()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .local v10, "msg":Landroid/os/Message;
    iput v5, v10, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .local v9, "mPhone":Lcom/android/internal/telephony/Phone;
    if-eqz p2, :cond_0

    const-wide/32 v1, 0xc350

    invoke-virtual {p1, v10, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    .restart local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v8, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getCardAppState(II)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->isAppReady()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v10, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0x9c40

    invoke-virtual {p1, v10, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .local v0, "mSignalStrength":Landroid/telephony/SignalStrength;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v8, v1, :cond_2

    const/4 v1, 0x3

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIZ)V

    :goto_1
    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    .end local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    goto :goto_0

    .restart local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/16 v1, 0x63

    const/4 v8, 0x0

    move v4, v2

    move v5, v3

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIZ)V

    goto :goto_1
.end method

.method public setStorePosition(III)V
    .locals 0
    .param p1, "mStoreBaseStationId"    # I
    .param p2, "mBaseStationLatitude"    # I
    .param p3, "mBaseStationLongitude"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationId:I

    iput p2, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLatitude:I

    iput p3, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLongitude:I

    return-void
.end method

.method public updateDataServiceDelayState(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 10
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x40

    const/4 v7, 0x0

    const-string v5, "persist.yulong.supermode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "superMode":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataServiceDelayState superMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "111 updateDataServiceDelayState mDelayDataStateFlag ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmSS()Landroid/telephony/ServiceState;

    move-result-object v3

    .local v3, "mSS":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmNewSS()Landroid/telephony/ServiceState;

    move-result-object v2

    .local v2, "mNewSS":Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->getDefault()Lcom/yulong/android/telephony/CPSignalStrengthEx;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->dataRegistInDoOrLTEWithVoiceService(Landroid/telephony/ServiceState;)Z

    move-result v0

    .local v0, "dataInDoOrLTEWithVoiceService":Z
    if-eqz v0, :cond_2

    const-string v5, "updateDataServiceDelayState dataInDoOrLTEWithVoiceService clear"

    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->getDefault()Lcom/yulong/android/telephony/CPSignalStrengthEx;

    move-result-object v5

    iget-boolean v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataDoOrLTEEnable:Z

    invoke-virtual {v5, v6, v3, v2}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->dataServiceDropFromDoOrLTE(ZLandroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v1

    .local v1, "delayDataDetachNeed":Z
    iget v5, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_3

    const-string v5, "updateDataServiceDelayState delayDataDetachNeed enter delay 9 second"

    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyUtils;->sendDelayDataTimeOutMessage(Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput v9, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_4

    iget v5, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    if-ne v5, v9, :cond_0

    const-string v5, "updateDataServiceDelayState delayDataDetachNeed timeout exit refresh"

    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateServiceDelayState(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 10
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x3f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "persist.yulong.supermode"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "superMode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateServiceDelayState superMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .local v0, "mDesiredPowerState":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmSS()Landroid/telephony/ServiceState;

    move-result-object v2

    .local v2, "mSS":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmNewSS()Landroid/telephony/ServiceState;

    move-result-object v1

    .local v1, "mNewSS":Landroid/telephony/ServiceState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDelayStateFlag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCallStateOtherPhone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDataActivityStateOtherPhone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDesiredPowerState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDsdsRildReset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    if-nez v0, :cond_3

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    if-eqz v4, :cond_0

    iput v9, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    goto :goto_0

    :cond_4
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I

    if-nez v4, :cond_5

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I

    if-eqz v4, :cond_6

    :cond_5
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-virtual {p0, p1, v6}, Lcom/yulong/android/telephony/CPTelephonyUtils;->sendDelayTimeOutMessage(Lcom/android/internal/telephony/ServiceStateTracker;Z)V

    const/4 v4, 0x2

    iput v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    goto/16 :goto_0

    :pswitch_1
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I

    if-nez v4, :cond_7

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I

    if-eqz v4, :cond_8

    :cond_7
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    goto/16 :goto_0

    :cond_8
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInRefresh:I

    if-ne v4, v7, :cond_9

    iput v9, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInRefresh:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1, v7}, Lcom/yulong/android/telephony/CPTelephonyUtils;->sendDelayTimeOutMessage(Lcom/android/internal/telephony/ServiceStateTracker;Z)V

    goto/16 :goto_0

    :pswitch_2
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I

    if-nez v4, :cond_a

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I

    if-eqz v4, :cond_b

    :cond_a
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    goto/16 :goto_0

    :cond_b
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInRefresh:I

    if-ne v4, v7, :cond_0

    iput v9, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInRefresh:I

    goto/16 :goto_0

    :pswitch_3
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I

    if-nez v4, :cond_c

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I

    if-eqz v4, :cond_d

    :cond_c
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    goto/16 :goto_0

    :cond_d
    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateWithDataServiceSerilization(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 10
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "persist.yulong.supermode"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "superMode":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWithDataServiceSerilization superMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v8, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataSerilizationSignalRefresh:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .local v2, "mPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmSS()Landroid/telephony/ServiceState;

    move-result-object v3

    .local v3, "mSS":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmNewSS()Landroid/telephony/ServiceState;

    move-result-object v1

    .local v1, "mNewSS":Landroid/telephony/ServiceState;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDsUser()I

    move-result v0

    .local v0, "mDefaultDataSetting":I
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .local v4, "phoneType":I
    const/4 v6, 0x2

    if-ne v6, v0, :cond_2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    if-ne v6, v9, :cond_1

    iput-boolean v9, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataSerilizationSignalRefresh:Z

    invoke-static {}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->getDefault()Lcom/yulong/android/telephony/CPSignalStrengthEx;

    move-result-object v6

    invoke-virtual {v6, v3, v1, v4}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->updateWithDataSerilization(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)V

    goto :goto_0

    :cond_1
    iput-boolean v8, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataSerilizationSignalRefresh:Z

    const-string v6, "updateWithDataServiceSerilization card two do nothing!"

    invoke-virtual {p0, v6}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-boolean v8, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataSerilizationSignalRefresh:Z

    const-string v6, "updateWithDataServiceSerilization data is not set to phone two,do nothing!"

    invoke-virtual {p0, v6}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
