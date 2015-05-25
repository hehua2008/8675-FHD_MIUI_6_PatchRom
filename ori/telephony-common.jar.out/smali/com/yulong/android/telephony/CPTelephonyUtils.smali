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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mMyHandler:Landroid/os/Handler;

    .line 61
    iput-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->thread:Landroid/os/HandlerThread;

    .line 73
    iput v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationId:I

    .line 74
    iput v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLatitude:I

    .line 75
    iput v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLongitude:I

    .line 105
    sput-object p1, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 106
    sput-object p2, Lcom/yulong/android/telephony/CPTelephonyUtils;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 107
    sput-object p3, Lcom/yulong/android/telephony/CPTelephonyUtils;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CPTelephonyUtils"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->thread:Landroid/os/HandlerThread;

    .line 110
    iget-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v0, Lcom/yulong/android/telephony/CPTelephonyUtils$MyHandler;

    iget-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yulong/android/telephony/CPTelephonyUtils$MyHandler;-><init>(Lcom/yulong/android/telephony/CPTelephonyUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mMyHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method private comparePosition()Z
    .locals 4

    .prologue
    .line 774
    const v0, 0x4f35c

    .line 775
    .local v0, "mBaseStationLatitude":I
    const v1, 0x1912db

    .line 776
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

    .line 777
    const v2, 0x4f35c

    iget v3, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLatitude:I

    if-ne v2, v3, :cond_0

    const v2, 0x1912db

    iget v3, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLongitude:I

    if-ne v2, v3, :cond_0

    .line 779
    const/4 v2, 0x1

    .line 780
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/yulong/android/telephony/CPTelephonyUtils;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCPTelephonyUtils:Lcom/yulong/android/telephony/CPTelephonyUtils;

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)Lcom/yulong/android/telephony/CPTelephonyUtils;
    .locals 1
    .param p0, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCPTelephonyUtils:Lcom/yulong/android/telephony/CPTelephonyUtils;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/yulong/android/telephony/CPTelephonyUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/yulong/android/telephony/CPTelephonyUtils;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    sput-object v0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCPTelephonyUtils:Lcom/yulong/android/telephony/CPTelephonyUtils;

    .line 127
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
    .line 662
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

    .line 664
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.ACTION_NETWORK_OFFLINE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mOfflineMode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    const-string v1, "mSlotId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 669
    return-void
.end method

.method public broadcastRoamingStateChanged(Lcom/android/internal/telephony/ServiceStateTracker;ZZ)V
    .locals 5
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "roaming"    # Z
    .param p3, "mRoamingChanged"    # Z

    .prologue
    .line 730
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 731
    .local v1, "mPhoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v2

    .line 732
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

    .line 735
    new-instance v0, Landroid/content/Intent;

    const-string v3, "yulong.intent.action.ROAMING_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "mRoaming"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 738
    const-string v3, "mRoamingChanged"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    const-string v3, "mPhoneId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    const-string v3, "slotIdKey"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 742
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

    .line 199
    const-string v1, ""

    .line 200
    .local v1, "iccNumeric":Ljava/lang/String;
    const-string v2, ""

    .line 202
    .local v2, "operatorNumeric":Ljava/lang/String;
    if-ne p2, v5, :cond_2

    .line 203
    const-string v7, "cdma.ruim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    sget-object v7, Lcom/yulong/android/telephony/CPTelephonyUtils;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 209
    :goto_0
    iget-object v7, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "simNumericName":Ljava/lang/String;
    iget-object v7, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "operatorNumericName":Ljava/lang/String;
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 213
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

    .line 215
    if-eqz v4, :cond_0

    if-nez v3, :cond_4

    .line 216
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 218
    :cond_1
    :goto_1
    return v5

    .line 206
    .end local v0    # "equalsMcc":Z
    .end local v3    # "operatorNumericName":Ljava/lang/String;
    .end local v4    # "simNumericName":Ljava/lang/String;
    :cond_2
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
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

    .line 216
    goto :goto_1

    .line 218
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

    .line 243
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    .line 244
    .local v4, "operatorType":I
    sparse-switch v4, :sswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return p1

    .line 247
    :sswitch_0
    const-string v7, "cdma.ruim.operator.iso-country"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "iccIso":Ljava/lang/String;
    const-string v7, "us"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_0

    .line 251
    invoke-virtual {p3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 252
    .local v5, "servingMcc":I
    const/16 v7, 0x136

    if-lt v5, v7, :cond_1

    const/16 v7, 0x13c

    if-le v5, v7, :cond_2

    .line 253
    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    .line 255
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

    .line 256
    .local v0, "guam":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_0

    .line 257
    aget-object v7, v0, v1

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 258
    const/4 p1, 0x1

    .line 256
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "guam":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "iccIso":Ljava/lang/String;
    .end local v5    # "servingMcc":I
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "spn":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
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

    .line 269
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

    .line 271
    :cond_5
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 244
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

    .line 745
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 746
    .local v0, "mDesiredPowerState":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmNewSS()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 747
    .local v1, "mNewSS":Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 752
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsTDDOnlyNotified:Z

    if-nez v3, :cond_0

    .line 757
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 758
    .local v2, "msg":Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 759
    iget-object v3, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x2e630

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 761
    const-wide/32 v3, 0x2bf20

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 762
    const-string v3, "checkTddLteNetworkWorked sendMessageDelayed EVENT_NOTIFY_TDDLTE_DISABLED"

    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 764
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 765
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 766
    iget-object v3, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 767
    iget-object v3, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 769
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
    .line 280
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_0

    .line 281
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

    .line 282
    sparse-switch p2, :sswitch_data_0

    .line 299
    const-string p1, "Searching\ufffd\ufffd"

    .line 303
    :cond_0
    :goto_0
    return-object p1

    .line 287
    :sswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040305

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    goto :goto_0

    .line 296
    :sswitch_1
    const-string p1, "Searching\ufffd\ufffd"

    .line 297
    goto :goto_0

    .line 282
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
    .line 308
    const/4 v1, 0x1

    .line 309
    .local v1, "SPN_RULE_SHOW_SPN":I
    const/4 v0, 0x2

    .line 311
    .local v0, "SPN_RULE_SHOW_PLMN":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v2

    .line 313
    .local v2, "operatorType":I
    const-string v4, "cdma.ruim.operator.alpha"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "spn":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    .line 332
    :cond_0
    :goto_0
    return p1

    .line 318
    :sswitch_0
    const/4 p1, 0x3

    .line 319
    goto :goto_0

    .line 321
    :sswitch_1
    if-nez p2, :cond_1

    .line 322
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p3, :cond_1

    .line 324
    const/4 p1, 0x1

    .line 327
    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 328
    const/4 p1, 0x2

    goto :goto_0

    .line 316
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

    .line 684
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

    .line 686
    .local v0, "ct":Ljava/lang/String;
    const-string v3, ""

    .line 687
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

    .line 688
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

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "operatorNumericF":Ljava/lang/String;
    iget-object v4, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 693
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object p3, v3

    .line 725
    .end local v2    # "operatorNumericF":Ljava/lang/String;
    .end local p3    # "spn":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p3

    .line 696
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

    .line 699
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 700
    .local v1, "numeric":I
    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object p3, v3

    .line 723
    goto :goto_0

    .line 705
    :pswitch_1
    const-string v3, "China Mobile"

    .line 706
    goto :goto_1

    .line 710
    :pswitch_2
    const-string v3, "China Unicom"

    .line 711
    goto :goto_1

    .line 717
    :pswitch_3
    const-string v3, "China Telecom"

    .line 718
    goto :goto_1

    .line 720
    :pswitch_4
    const-string v3, "China Satcom"

    goto :goto_1

    .line 700
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
    .line 336
    const-string v0, ""

    .line 337
    .local v0, "temp":Ljava/lang/String;
    const-string v1, "CARD_NO_METRO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string v0, "Insert SIM. Emergency Calls Only!"

    .line 340
    :cond_0
    return-object v0
.end method

.method public isDualmodeCardType(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 672
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 673
    .local v1, "iSlotId":I
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getCardTypeBySlotId(I)I

    move-result v0

    .line 674
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

    .line 675
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 676
    const/4 v2, 0x1

    .line 678
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
    .line 344
    const-string v0, "CPTelephonyUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public secondSelectNetwork(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 11
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    const/16 v10, 0x42

    const/16 v9, 0x41

    .line 567
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 568
    .local v1, "mDesiredPowerState":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmSS()Landroid/telephony/ServiceState;

    move-result-object v4

    .line 569
    .local v4, "mSS":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmNewSS()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 570
    .local v2, "mNewSS":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 572
    .local v3, "mPhoneId":I
    if-eqz v1, :cond_5

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 575
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-virtual {p0, v3}, Lcom/yulong/android/telephony/CPTelephonyUtils;->isDualmodeCardType(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 584
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 585
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 586
    .local v5, "msg":Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 587
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 588
    const/4 v0, 0x0

    .line 589
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

    .line 591
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyUtils;->comparePosition()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 592
    const/4 v0, 0x2

    .line 596
    :goto_1
    iget-object v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    add-int/lit8 v8, v0, 0x1

    mul-int/lit16 v8, v8, 0x2710

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 598
    mul-int/lit16 v7, v0, 0x2710

    int-to-long v7, v7

    invoke-virtual {p1, v5, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 607
    .end local v0    # "delayTime":I
    :goto_2
    const/4 v7, 0x2

    if-ne v7, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v7, v7, Lcom/android/internal/telephony/PhoneBase;->mIsManualSelectNW:Z

    if-eqz v7, :cond_2

    .line 609
    invoke-virtual {p1, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 610
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 611
    .local v6, "msg1":Landroid/os/Message;
    iput v10, v6, Landroid/os/Message;->what:I

    .line 612
    const-wide/32 v7, 0x186a0

    invoke-virtual {p1, v6, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 613
    const-string v7, "secondSelectNetwork sendMessageDelayed EVENT_DELAY_MANUAL_TO_AOTO"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    .line 616
    .end local v6    # "msg1":Landroid/os/Message;
    :cond_2
    const-string v7, "secondSelectNetwork sendMessageDelayed EVENT_DELAY_REFRESH_NETWORK"

    invoke-virtual {p0, v7}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    .restart local v0    # "delayTime":I
    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    .line 601
    .end local v0    # "delayTime":I
    :cond_4
    iget-object v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v8, 0x29810

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 604
    const-wide/32 v7, 0x27100

    invoke-virtual {p1, v5, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 617
    .end local v5    # "msg":Landroid/os/Message;
    :cond_5
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_0

    .line 619
    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 620
    invoke-virtual {p1, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 621
    iget-object v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 622
    iget-object v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 624
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

    .line 539
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

    .line 542
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 543
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 544
    .local v10, "msg":Landroid/os/Message;
    iput v5, v10, Landroid/os/Message;->what:I

    .line 545
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 547
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

    .line 549
    const-string v1, "liuyong add send 9s send delay"

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    .line 551
    const-wide/16 v1, 0x2328

    invoke-virtual {p1, v10, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 563
    .end local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    .line 553
    .restart local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-wide/32 v4, 0x9c40

    invoke-virtual {p1, v10, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 555
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 556
    .local v0, "mSignalStrength":Landroid/telephony/SignalStrength;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v8, v1, :cond_1

    .line 557
    const/4 v1, 0x3

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIZ)V

    .line 561
    :goto_1
    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    .end local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    goto :goto_0

    .line 559
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

    .line 449
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

    .line 452
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 453
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 454
    .local v10, "msg":Landroid/os/Message;
    iput v5, v10, Landroid/os/Message;->what:I

    .line 455
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 457
    .local v9, "mPhone":Lcom/android/internal/telephony/Phone;
    if-eqz p2, :cond_0

    .line 458
    const-wide/32 v1, 0xc350

    invoke-virtual {p1, v10, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 474
    .end local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    .line 460
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

    .line 462
    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v10, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 464
    :cond_1
    const-wide/32 v4, 0x9c40

    invoke-virtual {p1, v10, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 466
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 467
    .local v0, "mSignalStrength":Landroid/telephony/SignalStrength;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v8, v1, :cond_2

    .line 468
    const/4 v1, 0x3

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIZ)V

    .line 472
    :goto_1
    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    .end local v9    # "mPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    goto :goto_0

    .line 470
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
    .line 784
    iput p1, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationId:I

    .line 785
    iput p2, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLatitude:I

    .line 786
    iput p3, p0, Lcom/yulong/android/telephony/CPTelephonyUtils;->mStoreBaseStationLongitude:I

    .line 787
    return-void
.end method

.method public updateDataServiceDelayState(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 10
    .param p1, "mSST"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x40

    const/4 v7, 0x0

    .line 480
    const-string v5, "persist.yulong.supermode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 481
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

    .line 482
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 484
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    .line 485
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 489
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

    .line 490
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmSS()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 491
    .local v3, "mSS":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmNewSS()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 492
    .local v2, "mNewSS":Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->getDefault()Lcom/yulong/android/telephony/CPSignalStrengthEx;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->dataRegistInDoOrLTEWithVoiceService(Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 493
    .local v0, "dataInDoOrLTEWithVoiceService":Z
    if-eqz v0, :cond_2

    .line 494
    const-string v5, "updateDataServiceDelayState dataInDoOrLTEWithVoiceService clear"

    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 496
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    .line 497
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    goto :goto_0

    .line 500
    :cond_2
    invoke-static {}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->getDefault()Lcom/yulong/android/telephony/CPSignalStrengthEx;

    move-result-object v5

    iget-boolean v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataDoOrLTEEnable:Z

    invoke-virtual {v5, v6, v3, v2}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->dataServiceDropFromDoOrLTE(ZLandroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v1

    .line 501
    .local v1, "delayDataDetachNeed":Z
    iget v5, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 503
    :pswitch_0
    if-eqz v1, :cond_3

    .line 504
    const-string v5, "updateDataServiceDelayState delayDataDetachNeed enter delay 9 second"

    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyUtils;->sendDelayDataTimeOutMessage(Lcom/android/internal/telephony/ServiceStateTracker;)V

    .line 506
    iput v9, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    goto :goto_0

    .line 508
    :cond_3
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 509
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    .line 510
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    goto :goto_0

    .line 514
    :pswitch_1
    if-eqz v1, :cond_4

    .line 515
    iget v5, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    if-ne v5, v9, :cond_0

    .line 516
    const-string v5, "updateDataServiceDelayState delayDataDetachNeed timeout exit refresh"

    invoke-virtual {p0, v5}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    .line 517
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    .line 518
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    goto :goto_0

    .line 521
    :cond_4
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 522
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayDataStateFlag:I

    .line 523
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataIsInRefresh:I

    goto :goto_0

    .line 501
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

    .line 350
    const-string v4, "persist.yulong.supermode"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
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

    .line 352
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 355
    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    .line 356
    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 361
    .local v0, "mDesiredPowerState":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmSS()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 362
    .local v2, "mSS":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmNewSS()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 364
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

    .line 369
    if-nez v0, :cond_3

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    if-nez v4, :cond_3

    .line 371
    :cond_2
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 372
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    if-eqz v4, :cond_0

    .line 373
    iput v9, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_4

    .line 379
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 380
    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    .line 381
    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    goto :goto_0

    .line 385
    :cond_4
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 387
    :pswitch_0
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I

    if-nez v4, :cond_5

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I

    if-eqz v4, :cond_6

    .line 389
    :cond_5
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    goto/16 :goto_0

    .line 390
    :cond_6
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 392
    invoke-virtual {p0, p1, v6}, Lcom/yulong/android/telephony/CPTelephonyUtils;->sendDelayTimeOutMessage(Lcom/android/internal/telephony/ServiceStateTracker;Z)V

    .line 393
    const/4 v4, 0x2

    iput v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    goto/16 :goto_0

    .line 398
    :pswitch_1
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I

    if-nez v4, :cond_7

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I

    if-eqz v4, :cond_8

    .line 400
    :cond_7
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    goto/16 :goto_0

    .line 403
    :cond_8
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInRefresh:I

    if-ne v4, v7, :cond_9

    .line 404
    iput v9, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    .line 405
    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    .line 406
    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInRefresh:I

    goto/16 :goto_0

    .line 408
    :cond_9
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 409
    invoke-virtual {p0, p1, v7}, Lcom/yulong/android/telephony/CPTelephonyUtils;->sendDelayTimeOutMessage(Lcom/android/internal/telephony/ServiceStateTracker;Z)V

    goto/16 :goto_0

    .line 416
    :pswitch_2
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I

    if-nez v4, :cond_a

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I

    if-eqz v4, :cond_b

    .line 418
    :cond_a
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    .line 419
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    goto/16 :goto_0

    .line 420
    :cond_b
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInRefresh:I

    if-ne v4, v7, :cond_0

    .line 421
    iput v9, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    .line 422
    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDsdsRildReset:I

    .line 423
    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInRefresh:I

    goto/16 :goto_0

    .line 428
    :pswitch_3
    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I

    if-nez v4, :cond_c

    iget v4, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I

    if-eqz v4, :cond_d

    .line 430
    :cond_c
    iput v7, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    .line 431
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    goto/16 :goto_0

    .line 433
    :cond_d
    iput v6, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDelayStateFlag:I

    goto/16 :goto_0

    .line 385
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

    .line 630
    const-string v6, "persist.yulong.supermode"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 631
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

    .line 632
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 633
    iput-boolean v8, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataSerilizationSignalRefresh:Z

    .line 658
    :goto_0
    return-void

    .line 637
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 638
    .local v2, "mPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmSS()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 639
    .local v3, "mSS":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getmNewSS()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 640
    .local v1, "mNewSS":Landroid/telephony/ServiceState;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDsUser()I

    move-result v0

    .line 641
    .local v0, "mDefaultDataSetting":I
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 643
    .local v4, "phoneType":I
    const/4 v6, 0x2

    if-ne v6, v0, :cond_2

    .line 644
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 645
    iput-boolean v9, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataSerilizationSignalRefresh:Z

    .line 646
    invoke-static {}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->getDefault()Lcom/yulong/android/telephony/CPSignalStrengthEx;

    move-result-object v6

    invoke-virtual {v6, v3, v1, v4}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->updateWithDataSerilization(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)V

    goto :goto_0

    .line 649
    :cond_1
    iput-boolean v8, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataSerilizationSignalRefresh:Z

    .line 650
    const-string v6, "updateWithDataServiceSerilization card two do nothing!"

    invoke-virtual {p0, v6}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_2
    iput-boolean v8, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataSerilizationSignalRefresh:Z

    .line 655
    const-string v6, "updateWithDataServiceSerilization data is not set to phone two,do nothing!"

    invoke-virtual {p0, v6}, Lcom/yulong/android/telephony/CPTelephonyUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
