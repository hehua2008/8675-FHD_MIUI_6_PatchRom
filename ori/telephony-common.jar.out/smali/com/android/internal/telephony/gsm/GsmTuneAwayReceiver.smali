.class public Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GsmTuneAwayReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_GET_PREFERRED_NETWORK_TYPE_OTHER:I = 0x1

.field private static final EVENT_GET_PREFERRED_NETWORK_TYPE_SELF:I = 0x0

.field private static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GsmTuneAwayReceiver"

.field public static final MAX_PHONE_COUNT_DUAL_SIM:I = 0x2

.field private static final PHONEID_NONE:I = 0x64

.field private static final PREF_FILE:Ljava/lang/String; = "pre-network-mode"

.field private static final PROPERTY_GTA_OPEN_KEY:Ljava/lang/String; = "persist.radio.multisim.gta"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOldDefaultDataNetwork:I

.field private mPreNetworkModeKey:Ljava/lang/String;

.field private mPreviousType:I

.field private mSubscription:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const-string v2, "pre_network_mode_sub"

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreNetworkModeKey:Ljava/lang/String;

    .line 54
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreviousType:I

    .line 153
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;-><init>(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mHandler:Landroid/os/Handler;

    .line 62
    const-string v2, "Create GsmTuneAwayReceiver!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 66
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "default_data_network"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mOldDefaultDataNetwork:I

    .line 67
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mOldDefaultDataNetwork:I

    if-ne v4, v2, :cond_0

    .line 68
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mOldDefaultDataNetwork:I

    .line 69
    const-string v2, "default_data_network"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    const-string v2, "cannot get default data network type from provider, set it to default"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V

    .line 73
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreviousType:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreviousType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->getNetworkTypeFromSP(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 39
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->setPreNetworkType(II)V

    return-void
.end method

.method private checkPhoneState(I)Z
    .locals 4
    .param p1, "sub"    # I

    .prologue
    const/4 v1, 0x1

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "cardIndex":I
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardArray()[Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardArray()[Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNetworkType(I)V
    .locals 4
    .param p1, "sub"    # I

    .prologue
    .line 149
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 151
    return-void
.end method

.method private getNetworkTypeFromSP(I)I
    .locals 5
    .param p1, "sub"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "preNetworkType":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mContext:Landroid/content/Context;

    const-string v3, "pre-network-mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 225
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreNetworkModeKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 226
    return v0
.end method

.method private static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "sub"    # I

    .prologue
    .line 121
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 122
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    .line 124
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "GsmTuneAwayReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method private setPreNetworkType(II)V
    .locals 5
    .param p1, "preNetworkType"    # I
    .param p2, "sub"    # I

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mContext:Landroid/content/Context;

    const-string v3, "pre-network-mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 217
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreNetworkModeKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    return-void
.end method

.method private syncNetworkModeToSP(I)V
    .locals 3
    .param p1, "sub"    # I

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 81
    const-string v2, "persist.radio.multisim.gta"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    .local v0, "gtaEnabled":Z
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDsUser()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mSubscription:I

    .line 91
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mSubscription:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mOldDefaultDataNetwork:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mSubscription:I

    if-eq v2, v3, :cond_0

    .line 95
    const-string v2, "data connection state changed"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOldDefaultDataNetwork = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mOldDefaultDataNetwork:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSubscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V

    .line 98
    const-class v2, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 100
    .local v1, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSubscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V

    .line 102
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mSubscription:I

    if-ne v4, v2, :cond_3

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->checkPhoneState(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->getNetworkType(I)V

    .line 112
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mSubscription:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->syncNetworkModeToSP(I)V

    .line 113
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mSubscription:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mOldDefaultDataNetwork:I

    goto/16 :goto_0

    .line 107
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mSubscription:I

    if-ne v5, v2, :cond_2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->checkPhoneState(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->getNetworkType(I)V

    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
