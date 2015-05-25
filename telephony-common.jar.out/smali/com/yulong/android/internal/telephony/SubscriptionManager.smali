.class public Lcom/yulong/android/internal/telephony/SubscriptionManager;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/SubscriptionManager$1;,
        Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;,
        Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;,
        Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;,
        Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;,
        Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    }
.end annotation


# static fields
.field private static final APPNUMS_MAX:I = 0x8

.field private static final APPNUM_NOCARD:I = 0x1

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x0

.field private static final EVENT_RIL_RESET:I = 0x3

.field private static final EVENT_SET_UICC_SUBSCRIPTION_AUTO_DONE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static NUM_SUBSCRIPTIONS:I = 0x0

.field public static final RIL_MAX_CARDS:I = 0x2

.field private static final SUB_ACTIVATE:I = 0x1

.field public static final SUB_ACTIVATE_FAILED:Ljava/lang/String; = "ACTIVATE FAILED"

.field public static final SUB_ACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "ACTIVATE NOT SUPPORTED"

.field public static final SUB_ACTIVATE_SUCCESS:Ljava/lang/String; = "ACTIVATE SUCCESS"

.field private static final SUB_DEACTIVATE:I = 0x0

.field public static final SUB_DEACTIVATE_FAILED:Ljava/lang/String; = "DEACTIVATE FAILED"

.field public static final SUB_DEACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "DEACTIVATE NOT SUPPORTED"

.field public static final SUB_DEACTIVATE_SUCCESS:Ljava/lang/String; = "DEACTIVATE SUCCESS"

.field public static final SUB_GLOBAL_ACTIVATE_FAILED:Ljava/lang/String; = "GLOBAL ACTIVATE FAILED"

.field public static final SUB_GLOBAL_DEACTIVATE_FAILED:Ljava/lang/String; = "GLOBAL DEACTIVATE FAILED"

.field public static final SUB_NOT_CHANGED:Ljava/lang/String; = "NO CHANGE IN SUBSCRIPTION"

.field private static final m3gpp:I = 0x0

.field private static final m3gpp2:I = 0x1

.field private static sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;


# instance fields
.field private final ACTIVATE_CARD_ONE:I

.field private final ACTIVATE_CARD_TWO:I

.field private final DEACTIVATE_CARD_ONE:I

.field private final DEACTIVATE_CARD_TWO:I

.field public cardInfo:[[I

.field cardOneFirstIn:Z

.field cardTwoFirstIn:Z

.field private exActive:I

.field private exDeactive:I

.field private exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

.field private isSedRegion:Z

.field private mActivatePending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppId:I

.field private mDeactivatePending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNumApp:I

.field private mNumPhones:I

.field private mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

.field private mSetSubscriptionInProgress:Z

.field private mSubscriptionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private objLock:Ljava/util/concurrent/locks/Lock;

.field private retryTime:[I

.field switchPhoneFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    sput v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 189
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    iput v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    .line 94
    new-array v2, v4, [Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    .line 95
    iput v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    .line 97
    iput-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    .line 100
    new-array v2, v4, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    aput-object v3, v2, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardInfo:[[I

    .line 104
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardOneFirstIn:Z

    .line 105
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardTwoFirstIn:Z

    .line 106
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->switchPhoneFlag:Z

    .line 111
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 114
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    .line 115
    iput v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    .line 116
    iput v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exDeactive:I

    .line 117
    sget-object v2, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->IDLE:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    .line 118
    new-array v2, v4, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    .line 119
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isSedRegion:Z

    .line 121
    iput v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->DEACTIVATE_CARD_ONE:I

    .line 122
    iput v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->DEACTIVATE_CARD_TWO:I

    .line 123
    iput v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->ACTIVATE_CARD_ONE:I

    .line 124
    const/4 v2, 0x4

    iput v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->ACTIVATE_CARD_TWO:I

    .line 190
    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 193
    iput-object p3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 194
    iput-object p2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 195
    new-array v2, v4, [Lcom/yulong/android/internal/telephony/SubscriptionData;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    .line 197
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    .line 198
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v1, v2, v0

    .line 202
    .local v1, "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    new-instance v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v3, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    new-instance v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v3, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSubscriptionState:Ljava/util/HashMap;

    .line 207
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 208
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v1, v2, v0

    .line 209
    .restart local v1    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSubscriptionState:Ljava/util/HashMap;

    sget-object v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;->DEACTIVATED:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v1    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    .line 218
    :goto_2
    return-void

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p0, v4, v7}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

    .line 100
    nop

    :array_0
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 118
    :array_2
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 578
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 595
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 580
    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 583
    :pswitch_1
    const-string v0, "SIM"

    goto :goto_0

    .line 586
    :pswitch_2
    const-string v0, "USIM"

    goto :goto_0

    .line 589
    :pswitch_3
    const-string v0, "RUIM"

    goto :goto_0

    .line 592
    :pswitch_4
    const-string v0, "CSIM"

    goto :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V
    .locals 3
    .param p1, "cardSub"    # Lcom/yulong/android/internal/telephony/Subscription;
    .param p2, "appIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 550
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 551
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 552
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    :cond_2
    iput p2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 556
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0

    .line 557
    :cond_3
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v1, "GLOBAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    :cond_4
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 561
    iput p2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method private get3gpp2Index(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1321
    const-string v1, "RUIM"

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CSIM"

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1325
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 1320
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1325
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private get3gppIndex(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1330
    const-string v1, "SIM"

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USIM"

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1334
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 1329
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1334
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/yulong/android/internal/telephony/SubscriptionManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 164
    const-class v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "SubscriptionManager"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    .line 168
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPhoneSlotService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 5

    .prologue
    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, "i":I
    const/4 v2, 0x0

    .line 679
    .local v2, "myBinder":Landroid/os/IBinder;
    const/4 v3, 0x0

    .local v3, "myNS":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move v1, v0

    .line 681
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 682
    const-string v4, "nativePhoneSlot"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 683
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v3

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_0
    move v0, v1

    .line 686
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    return-object v3
.end method

.method private getSubscriptionByType(II)Lcom/yulong/android/internal/telephony/Subscription;
    .locals 4
    .param p1, "cardIndex"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v3, -0x1

    .line 815
    new-instance v1, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v1}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .line 816
    .local v1, "sub":Lcom/yulong/android/internal/telephony/Subscription;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 817
    const/4 v2, 0x0

    .line 830
    :goto_0
    return-object v2

    .line 819
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 820
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    if-le v2, v3, :cond_2

    .line 822
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v1, v2, v0

    :cond_1
    :goto_2
    move-object v2, v1

    .line 830
    goto :goto_0

    .line 824
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    if-le v2, v3, :cond_3

    .line 826
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v1, v2, v0

    .line 827
    goto :goto_2

    .line 819
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleEx(I)V
    .locals 10
    .param p1, "indicator"    # I

    .prologue
    const/4 v9, -0x1

    .line 251
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 252
    const/4 v5, 0x0

    .line 253
    .local v5, "subId":I
    const/4 v1, -0x1

    .line 254
    .local v1, "m3gppIndex":I
    const/4 v0, -0x1

    .line 255
    .local v0, "m3gpp2Index":I
    const/4 v6, 0x0

    .line 256
    .local v6, "subStatus":I
    new-instance v3, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v3}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .line 257
    .local v3, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    packed-switch p1, :pswitch_data_0

    .line 319
    const-string v7, "modem has reseted,don\'t handle here"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 320
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 348
    :goto_0
    return-void

    .line 260
    :pswitch_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->isLTESwitched()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 263
    const-string v7, "CT card insert slot-1 and LTE in slot-2, do not recovery"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 264
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 267
    :cond_0
    const/4 v5, 0x0

    .line 268
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isGloabalMode(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 269
    const-string v7, "GLOBAL"

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 270
    const/4 v0, 0x0

    .line 277
    :cond_1
    :goto_1
    const/4 v6, 0x0

    .line 323
    :goto_2
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v8, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-ne v7, v8, :cond_9

    .line 324
    const-string v7, "user has operated"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 325
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 272
    :cond_2
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gppIndex(I)I

    move-result v1

    .line 273
    if-ne v1, v9, :cond_1

    .line 274
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gpp2Index(I)I

    move-result v0

    goto :goto_1

    .line 280
    :pswitch_1
    const/4 v5, 0x1

    .line 281
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isGloabalMode(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 282
    const-string v7, "GLOBAL"

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 283
    const/4 v0, 0x0

    .line 290
    :cond_3
    :goto_3
    const/4 v6, 0x0

    .line 291
    goto :goto_2

    .line 285
    :cond_4
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gppIndex(I)I

    move-result v1

    .line 286
    if-ne v1, v9, :cond_3

    .line 287
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gpp2Index(I)I

    move-result v0

    goto :goto_3

    .line 293
    :pswitch_2
    const/4 v5, 0x0

    .line 294
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isGloabalMode(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 295
    const-string v7, "GLOBAL"

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    .line 303
    :cond_5
    :goto_4
    const/4 v6, 0x1

    .line 304
    goto :goto_2

    .line 298
    :cond_6
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gppIndex(I)I

    move-result v1

    .line 299
    if-ne v1, v9, :cond_5

    .line 300
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gpp2Index(I)I

    move-result v0

    goto :goto_4

    .line 306
    :pswitch_3
    const/4 v5, 0x1

    .line 307
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isGloabalMode(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 308
    const-string v7, "GLOBAL"

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    .line 316
    :cond_7
    :goto_5
    const/4 v6, 0x1

    .line 317
    goto :goto_2

    .line 311
    :cond_8
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gppIndex(I)I

    move-result v1

    .line 312
    if-ne v1, v9, :cond_7

    .line 313
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gpp2Index(I)I

    move-result v0

    goto :goto_5

    .line 328
    :cond_9
    sget-object v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->PROCESSING:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    .line 330
    iput v5, v3, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 331
    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v7

    aget-object v7, v7, v6

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 332
    iput v5, v3, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 333
    iput v0, v3, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 334
    iput v1, v3, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 335
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 336
    .local v2, "msgEx":Landroid/os/Message;
    if-nez v6, :cond_a

    .line 337
    iget v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exDeactive:I

    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 338
    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v3, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .line 339
    .local v4, "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processDeactivateRequests()V

    .line 347
    :goto_6
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 342
    .end local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    :cond_a
    iget v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 343
    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v3, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .line 344
    .restart local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    goto :goto_6

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleIccChanged(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 694
    const-string v1, "handleIccChanged: ENTER"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 696
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 697
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 698
    .local v0, "cardIndex":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIccChanged: cardIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 700
    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->onUpdateUiccStatus(Ljava/lang/Integer;)V

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIccChanged: mCardSubData[cardIndex] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 703
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->switchPhoneFlag:Z

    if-eqz v1, :cond_0

    .line 704
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->switchPhoneFlag:Z

    .line 705
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ne v5, v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->isgsm()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 711
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneEx()V

    .line 730
    .end local v0    # "cardIndex":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 719
    .restart local v0    # "cardIndex":Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 720
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardOneFirstIn:Z

    if-eqz v1, :cond_2

    .line 721
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardOneFirstIn:Z

    .line 722
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processActiveSubsctiption(I)V

    .line 729
    .end local v0    # "cardIndex":Ljava/lang/Integer;
    :cond_1
    :goto_1
    const-string v1, "handleIccChanged: EXIT"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 723
    .restart local v0    # "cardIndex":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardTwoFirstIn:Z

    if-eqz v1, :cond_1

    .line 724
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardTwoFirstIn:Z

    .line 725
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processActiveSubsctiption(I)V

    goto :goto_1
.end method

.method private isGloabalMode(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1312
    const-string v1, "GLOBAL"

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1313
    const/4 v1, 0x1

    .line 1316
    :goto_1
    return v1

    .line 1311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1316
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isGlobalmodeSupported(Ljava/lang/Integer;Lcom/android/internal/telephony/uicc/UiccCard;I)Z
    .locals 7
    .param p1, "cardIndex"    # Ljava/lang/Integer;
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "numApps"    # I

    .prologue
    .line 452
    const/4 v3, 0x0

    .local v3, "isGsmApp":Z
    const/4 v1, 0x0

    .local v1, "isCdmaApp":Z
    const/4 v2, 0x0

    .line 453
    .local v2, "isGlobalmode":Z
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_5

    if-eqz p2, :cond_5

    .line 454
    const/4 v0, 0x0

    .local v0, "appIndex":I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 455
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    .line 456
    .local v5, "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v5, :cond_3

    .line 457
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, "subAppType":Ljava/lang/String;
    const-string v6, "SIM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "USIM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 459
    :cond_0
    const/4 v3, 0x1

    .line 461
    :cond_1
    const-string v6, "CSIM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "RUIM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 462
    :cond_2
    const/4 v1, 0x1

    .line 454
    .end local v4    # "subAppType":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    .end local v5    # "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_4
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .line 468
    .end local v0    # "appIndex":I
    :cond_5
    :goto_1
    return v2

    .line 466
    .restart local v0    # "appIndex":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method private declared-synchronized onUpdateUiccStatus(Ljava/lang/Integer;)V
    .locals 14
    .param p1, "cardIndex"    # Ljava/lang/Integer;

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpdateUiccStatus: cardIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 476
    const/4 v5, 0x0

    .line 477
    .local v5, "isGlobalmode":Z
    const/4 v10, 0x0

    iput v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    .line 478
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardArray()[Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v12

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 479
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    if-eqz v10, :cond_2

    .line 480
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplications()[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .local v2, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v2, v4

    .line 481
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 482
    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    .line 480
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 485
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpdateUiccStatus():real number of apps : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 486
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    iget v11, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    invoke-direct {p0, p1, v10, v11}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isGlobalmodeSupported(Ljava/lang/Integer;Lcom/android/internal/telephony/uicc/UiccCard;I)Z

    move-result v5

    .line 487
    if-eqz v5, :cond_2

    .line 488
    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    .line 491
    .end local v2    # "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpdateUiccStatus(): currrent number of apps : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 493
    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    if-lez v10, :cond_7

    .line 494
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpdateUiccStatus(): mCardSubData["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 499
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-nez v10, :cond_8

    .line 501
    :cond_3
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v12, Lcom/yulong/android/internal/telephony/SubscriptionData;

    iget v13, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    invoke-direct {v12, v13}, Lcom/yulong/android/internal/telephony/SubscriptionData;-><init>(I)V

    aput-object v12, v10, v11

    .line 503
    const/4 v1, 0x0

    .local v1, "appIndex":I
    :goto_1
    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    if-ge v1, v10, :cond_8

    .line 504
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v3, v10, v1

    .line 505
    .local v3, "cardSub":Lcom/yulong/android/internal/telephony/Subscription;
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v9

    .line 507
    .local v9, "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v9, :cond_4

    .line 508
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v3, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 514
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    .line 519
    :cond_4
    if-nez v9, :cond_5

    if-eqz v5, :cond_5

    .line 520
    const-string v7, "GLOBAL"

    .line 527
    .local v7, "subAppType":Ljava/lang/String;
    :goto_2
    const-string v10, "UNKNOWN"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 528
    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 538
    :goto_3
    invoke-direct {p0, v3, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 522
    .end local v7    # "subAppType":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v8

    .line 523
    .local v8, "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "subAppType":Ljava/lang/String;
    goto :goto_2

    .line 530
    .end local v8    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_6
    const/4 v10, 0x0

    iput-object v10, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 531
    const-string v10, "onUpdateUiccStatus(): UNKNOWN APP"

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 475
    .end local v1    # "appIndex":I
    .end local v3    # "cardSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v5    # "isGlobalmode":Z
    .end local v7    # "subAppType":Ljava/lang/String;
    .end local v9    # "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 544
    .restart local v5    # "isGlobalmode":Z
    :cond_7
    :try_start_1
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v12, Lcom/yulong/android/internal/telephony/SubscriptionData;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/yulong/android/internal/telephony/SubscriptionData;-><init>(I)V

    aput-object v12, v10, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :cond_8
    monitor-exit p0

    return-void
.end method

.method private printPendingActivateRequests()V
    .locals 5

    .prologue
    .line 975
    const-string v3, "ActivatePending Queue : "

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 976
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 977
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v0

    .line 978
    .local v2, "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 979
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v1, v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    .line 980
    .local v1, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 982
    .end local v1    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private printPendingDeactivateRequests()V
    .locals 5

    .prologue
    .line 988
    const-string v3, "DeactivatePending Queue : "

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 989
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 990
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v0

    .line 991
    .local v2, "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 992
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v1, v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    .line 993
    .local v1, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    .end local v1    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private processActivateRequests()V
    .locals 2

    .prologue
    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processActivateRequests: mSetSubscriptionInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 847
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v0, :cond_0

    .line 848
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 850
    :cond_0
    return-void
.end method

.method private processActiveSubsctiption(I)V
    .locals 2
    .param p1, "cardIndex"    # I

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processActiveSubsctiption: CARD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->updateActivatePendingList(I)V

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCardInfoAvailable: mSetSubscriptionInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    .line 750
    return-void
.end method

.method private processDeactivateRequests()V
    .locals 2

    .prologue
    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDeactivateRequests: mSetSubscriptionInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 839
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v0, :cond_0

    .line 840
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 842
    :cond_0
    return-void
.end method

.method private processDeactiveSubscription(I)V
    .locals 2
    .param p1, "cardIndex"    # I

    .prologue
    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDeactiveSubscription: CARD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 783
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->updateDeactivatePendingList(I)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDeactiveSubsctiption: mSetSubscriptionInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 786
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processDeactivateRequests()V

    .line 787
    return-void
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1035
    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;

    .line 1036
    .local v7, "subParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/4 v6, 0x0

    .line 1037
    .local v6, "saveGlobalSettings":Z
    const/4 v0, 0x0

    .line 1038
    .local v0, "cause":Ljava/lang/String;
    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1039
    .local v8, "subStatus":Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;
    const/4 v1, 0x0

    .line 1040
    .local v1, "currentSub":Lcom/yulong/android/internal/telephony/Subscription;
    const/4 v5, 0x0

    .line 1042
    .local v5, "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    const-string v9, "SubscriptionManager"

    const-string v10, "processSetUiccSubscriptionDone"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string v9, "GLOBAL"

    iget-object v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_9

    .line 1045
    const-string v9, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processSetUiccSubscriptionDone: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const-string v9, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processSetUiccSubscriptionDone: subParam.app3gppId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "subParam.app3gppId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2Id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    iget v12, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    invoke-virtual {p0, v11, v12}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->is3gppApp(II)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    iget v12, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2Id:I

    invoke-virtual {p0, v11, v12}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->is3gpp2App(II)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    invoke-virtual {p0, v9, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->is3gppApp(II)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "NO CHANGE IN SUBSCRIPTION"

    if-ne v9, v10, :cond_2

    .line 1054
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_1

    .line 1055
    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    iput v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    .line 1056
    const-string v9, "ACTIVATE SUCCESS"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    .line 1068
    :goto_0
    const-string v9, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currrent status is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const-string v9, "NO CHANGE IN SUBSCRIPTION"

    iget-object v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "NO CHANGE IN SUBSCRIPTION"

    iget-object v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1249
    :cond_0
    :goto_1
    return-void

    .line 1058
    :cond_1
    const-string v9, "ACTIVATE FAILED"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    goto :goto_0

    .line 1061
    :cond_2
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_3

    .line 1062
    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2Id:I

    iput v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    .line 1063
    const-string v9, "ACTIVATE SUCCESS"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    goto :goto_0

    .line 1065
    :cond_3
    const-string v9, "ACTIVATE FAILED"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    goto :goto_0

    .line 1074
    :cond_4
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "ACTIVATE SUCCESS"

    if-ne v9, v10, :cond_6

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v10, "ACTIVATE SUCCESS"

    if-ne v9, v10, :cond_6

    .line 1076
    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1077
    const-string v0, "ACTIVATE SUCCESS"

    .line 1078
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 1079
    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    .line 1080
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    const/4 v11, 0x3

    aput v11, v9, v10

    .line 1107
    :goto_2
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_5

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    if-eq v9, v10, :cond_5

    .line 1108
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1109
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1242
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1244
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1247
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    goto :goto_1

    .line 1082
    :cond_6
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "ACTIVATE FAILED"

    if-ne v9, v10, :cond_8

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v10, "ACTIVATE FAILED"

    if-ne v9, v10, :cond_8

    .line 1084
    const-string v0, "ACTIVATE FAILED"

    .line 1085
    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1086
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 1087
    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    .line 1089
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_7

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v10, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-eq v9, v10, :cond_7

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget v9, v9, v10

    if-lez v9, :cond_7

    .line 1090
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1091
    .local v2, "msgEx":Landroid/os/Message;
    iget v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 1092
    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v1, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .line 1093
    .local v4, "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget v11, v9, v10

    add-int/lit8 v11, v11, -0x1

    aput v11, v9, v10

    goto/16 :goto_2

    .line 1096
    .end local v2    # "msgEx":Landroid/os/Message;
    .end local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    :cond_7
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1100
    :cond_8
    const/4 v6, 0x1

    .line 1101
    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1102
    const-string v0, "GLOBAL ACTIVATE FAILED"

    .line 1103
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    aget-object v1, v9, v10

    .line 1104
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    const/4 v11, 0x3

    aput v11, v9, v10

    goto/16 :goto_2

    .line 1112
    :cond_9
    const-string v9, "GLOBAL"

    iget-object v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_11

    .line 1114
    const-string v9, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processSetUiccSubscriptionDone: subParam.app3gppId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "subParam.app3gppId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2Id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    iget v12, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    invoke-virtual {p0, v11, v12}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->is3gppApp(II)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    iget v12, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2Id:I

    invoke-virtual {p0, v11, v12}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->is3gpp2App(II)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    invoke-virtual {p0, v9, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->is3gppApp(II)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "NO CHANGE IN SUBSCRIPTION"

    if-ne v9, v10, :cond_d

    .line 1121
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_c

    .line 1122
    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    iput v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    .line 1123
    const-string v9, "DEACTIVATE SUCCESS"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    .line 1135
    :goto_4
    const-string v9, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currrent status is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const-string v9, "NO CHANGE IN SUBSCRIPTION"

    iget-object v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "NO CHANGE IN SUBSCRIPTION"

    iget-object v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1141
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "DEACTIVATE SUCCESS"

    if-ne v9, v10, :cond_f

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v10, "DEACTIVATE SUCCESS"

    if-ne v9, v10, :cond_f

    .line 1143
    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1144
    const-string v0, "DEACTIVATE SUCCESS"

    .line 1145
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 1146
    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    .line 1149
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_a

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exDeactive:I

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v10, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-eq v9, v10, :cond_a

    .line 1150
    new-instance v3, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v3}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .line 1151
    .local v3, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    move-object v3, v1

    .line 1152
    sget-object v9, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v9, v3, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1153
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1154
    .restart local v2    # "msgEx":Landroid/os/Message;
    iget v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 1155
    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v3, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .line 1156
    .restart local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    .end local v2    # "msgEx":Landroid/os/Message;
    .end local v3    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    :cond_a
    :goto_5
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_b

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exDeactive:I

    if-eq v9, v10, :cond_b

    .line 1173
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1174
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1175
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v10, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-ne v9, v10, :cond_b

    .line 1176
    sget-object v9, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->IDLE:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    .line 1178
    :cond_b
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1125
    :cond_c
    const-string v9, "DEACTIVATE FAILED"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    goto/16 :goto_4

    .line 1128
    :cond_d
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_e

    .line 1129
    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2Id:I

    iput v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    .line 1130
    const-string v9, "DEACTIVATE SUCCESS"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    goto/16 :goto_4

    .line 1132
    :cond_e
    const-string v9, "DEACTIVATE FAILED"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    goto/16 :goto_4

    .line 1159
    :cond_f
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "DEACTIVATE FAILED"

    if-ne v9, v10, :cond_10

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v10, "DEACTIVATE FAILED"

    if-ne v9, v10, :cond_10

    .line 1161
    const-string v0, "DEACTIVATE FAILED"

    .line 1162
    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1163
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 1164
    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    goto :goto_5

    .line 1166
    :cond_10
    const/4 v6, 0x1

    .line 1167
    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1168
    const-string v0, "GLOBAL DEACTIVATE FAILED"

    .line 1169
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    aget-object v1, v9, v10

    goto/16 :goto_5

    .line 1179
    :cond_11
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_16

    .line 1180
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_13

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    if-ne v9, v10, :cond_13

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v10, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-eq v9, v10, :cond_13

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget v9, v9, v10

    if-lez v9, :cond_13

    .line 1181
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1182
    .restart local v2    # "msgEx":Landroid/os/Message;
    iget v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 1183
    new-instance v3, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v3}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .line 1184
    .restart local v3    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v3, v9, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    .line 1185
    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v1, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .line 1186
    .restart local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget v11, v9, v10

    add-int/lit8 v11, v11, -0x1

    aput v11, v9, v10

    .line 1201
    .end local v2    # "msgEx":Landroid/os/Message;
    .end local v3    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    :cond_12
    :goto_6
    const-string v9, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " exception happend , print exception :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1189
    :cond_13
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_14

    .line 1190
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    :goto_7
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_12

    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_12

    .line 1197
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1198
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    .line 1191
    :cond_14
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_15

    .line 1192
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1194
    :cond_15
    const-string v9, "SubscriptionManager"

    const-string v10, "should not come here"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1203
    :cond_16
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_17

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    if-eq v9, v10, :cond_17

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exDeactive:I

    if-eq v9, v10, :cond_17

    .line 1204
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1205
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1207
    :cond_17
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_18

    .line 1208
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subscription of SUB:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Activated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1209
    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1210
    const-string v0, "ACTIVATE SUCCESS"

    .line 1211
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 1212
    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    .line 1213
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    const/4 v11, 0x3

    aput v11, v9, v10

    .line 1215
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1217
    :cond_18
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_1b

    .line 1218
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subscription of SUB:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Deactivated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1219
    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1220
    const-string v0, "DEACTIVATE SUCCESS"

    .line 1221
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 1222
    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    .line 1224
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_19

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exDeactive:I

    if-ne v9, v10, :cond_19

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v10, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-eq v9, v10, :cond_19

    .line 1225
    new-instance v3, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v3}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .line 1226
    .restart local v3    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    iget-object v3, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    .line 1227
    sget-object v9, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v9, v3, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1228
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 1229
    .restart local v2    # "msgEx":Landroid/os/Message;
    iget v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 1230
    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v3, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .line 1231
    .restart local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    .end local v2    # "msgEx":Landroid/os/Message;
    .end local v3    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    :cond_19
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v10, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-ne v9, v10, :cond_1a

    .line 1234
    sget-object v9, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->IDLE:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    .line 1237
    :cond_1a
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1239
    :cond_1b
    const-string v9, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private declared-synchronized startNextPendingActivateRequests()Z
    .locals 28

    .prologue
    .line 857
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->printPendingActivateRequests()V

    .line 859
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_4

    .line 860
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v27, v3, v23

    .line 861
    .local v27, "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 862
    .local v25, "mPhoneSubscriptionInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    move-object/from16 v26, v0

    .line 863
    .local v26, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    move-object/from16 v0, v25

    iget-object v11, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->msg:Landroid/os/Message;

    .line 864
    .local v11, "msg":Landroid/os/Message;
    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_0

    .line 866
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateActivationRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    move-object/from16 v0, v27

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    :cond_0
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 873
    :cond_1
    const-string v3, "GLOBAL"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 874
    const-string v3, "startNextPendingActivateRequests: Activating SUB : GLOBAL "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 875
    move-object/from16 v0, v26

    iget v3, v0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getGlobalAppsIndex(I)[I

    move-result-object v22

    .line 877
    .local v22, "globalAppsIndex":[I
    new-instance v2, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;

    move-object/from16 v0, v26

    iget v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const/4 v3, 0x1

    aget v7, v22, v3

    const/4 v3, 0x0

    aget v8, v22, v3

    const-string v9, "NO CHANGE IN SUBSCRIPTION"

    const-string v10, "NO CHANGE IN SUBSCRIPTION"

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;ILcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 882
    .local v2, "globalSetSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_1
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v24

    if-ge v0, v3, :cond_3

    .line 883
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 886
    .local v8, "msgSetUiccSubDone":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v26

    iget v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    aget-object v3, v3, v4

    move-object/from16 v0, v26

    iget v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    aget v5, v22, v24

    move-object/from16 v0, v26

    iget v6, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->ordinal()I

    move-result v7

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 882
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 891
    .end local v2    # "globalSetSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    .end local v8    # "msgSetUiccSubDone":Landroid/os/Message;
    .end local v22    # "globalAppsIndex":[I
    .end local v24    # "j":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNextPendingActivateRequests: Activating SUB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 893
    new-instance v12, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;

    move-object/from16 v0, v26

    iget v14, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    move-object/from16 v0, v26

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const-string v19, "NO CHANGE IN SUBSCRIPTION"

    const-string v20, "NO CHANGE IN SUBSCRIPTION"

    move-object/from16 v13, p0

    move-object/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;ILcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 898
    .local v12, "setSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 900
    .restart local v8    # "msgSetUiccSubDone":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v26

    iget v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    aget-object v3, v3, v4

    move-object/from16 v0, v26

    iget v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v5

    move-object/from16 v0, v26

    iget v6, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->ordinal()I

    move-result v7

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    .end local v8    # "msgSetUiccSubDone":Landroid/os/Message;
    .end local v12    # "setSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    :cond_3
    const/4 v3, 0x1

    .line 908
    .end local v11    # "msg":Landroid/os/Message;
    .end local v25    # "mPhoneSubscriptionInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    .end local v26    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v27    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :goto_2
    monitor-exit p0

    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 857
    .end local v23    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized startNextPendingDeactivateRequests()Z
    .locals 27

    .prologue
    .line 918
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->printPendingDeactivateRequests()V

    .line 920
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_4

    .line 921
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v26, v3, v23

    .line 922
    .local v26, "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    move-object/from16 v25, v0

    .line 924
    .local v25, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v11, v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->msg:Landroid/os/Message;

    .line 925
    .local v11, "msg":Landroid/os/Message;
    if-eqz v25, :cond_0

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_0

    .line 927
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateDeactivationRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    move-object/from16 v0, v26

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    :cond_0
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 933
    :cond_1
    const-string v3, "GLOBAL"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 934
    const-string v3, "startNextPendingDeactivateRequests: Need to deactivating SUB :GLOBAL "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, v25

    iget v3, v0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getGlobalAppsIndex(I)[I

    move-result-object v22

    .line 936
    .local v22, "globalAppsIndex":[I
    new-instance v2, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const/4 v3, 0x1

    aget v7, v22, v3

    const/4 v3, 0x0

    aget v8, v22, v3

    const-string v9, "NO CHANGE IN SUBSCRIPTION"

    const-string v10, "NO CHANGE IN SUBSCRIPTION"

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;ILcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 940
    .local v2, "globalSetSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_1
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v24

    if-ge v0, v3, :cond_3

    .line 941
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 944
    .local v8, "msgSetUiccSubDone":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    aget-object v3, v3, v4

    move-object/from16 v0, v25

    iget v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    aget v5, v22, v24

    move-object/from16 v0, v25

    iget v6, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->ordinal()I

    move-result v7

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 940
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 950
    .end local v2    # "globalSetSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    .end local v8    # "msgSetUiccSubDone":Landroid/os/Message;
    .end local v22    # "globalAppsIndex":[I
    .end local v24    # "j":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNextPendingDeactivateRequests: Need to deactivating SUB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 952
    new-instance v12, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;

    move-object/from16 v0, v25

    iget v14, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const-string v19, "NO CHANGE IN SUBSCRIPTION"

    const-string v20, "NO CHANGE IN SUBSCRIPTION"

    move-object/from16 v13, p0

    move-object/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;ILcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 957
    .local v12, "setSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 959
    .restart local v8    # "msgSetUiccSubDone":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    aget-object v3, v3, v4

    move-object/from16 v0, v25

    iget v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v5

    move-object/from16 v0, v25

    iget v6, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->ordinal()I

    move-result v7

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    .end local v8    # "msgSetUiccSubDone":Landroid/os/Message;
    .end local v12    # "setSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    :cond_3
    const/4 v3, 0x1

    .line 968
    .end local v11    # "msg":Landroid/os/Message;
    .end local v25    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v26    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :goto_2
    monitor-exit p0

    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 918
    .end local v23    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private updateActivatePendingList(I)V
    .locals 5
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 753
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 754
    invoke-direct {p0, p1, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getSubscriptionByType(II)Lcom/yulong/android/internal/telephony/Subscription;

    move-result-object v0

    .line 755
    .local v0, "sub":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {v0, v0}, Lcom/yulong/android/internal/telephony/Subscription;->copyFrom(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;

    .line 757
    iput p1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 758
    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 759
    new-instance v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v1, p0, v0, v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 760
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .end local v0    # "sub":Lcom/yulong/android/internal/telephony/Subscription;
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 764
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getSubscriptionByType(II)Lcom/yulong/android/internal/telephony/Subscription;

    move-result-object v0

    .line 765
    .restart local v0    # "sub":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 766
    invoke-virtual {v0, v0}, Lcom/yulong/android/internal/telephony/Subscription;->copyFrom(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;

    .line 767
    iput p1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 768
    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 769
    new-instance v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v1, p0, v0, v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 770
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateDeactivatePendingList(I)V
    .locals 5
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 791
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 792
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getSubscriptionByType(II)Lcom/yulong/android/internal/telephony/Subscription;

    move-result-object v0

    .line 793
    .local v0, "sub":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 794
    invoke-virtual {v0, v0}, Lcom/yulong/android/internal/telephony/Subscription;->copyFrom(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;

    .line 795
    iput p1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 796
    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 797
    new-instance v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v1, p0, v0, v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 798
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    .end local v0    # "sub":Lcom/yulong/android/internal/telephony/Subscription;
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 802
    invoke-direct {p0, p1, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getSubscriptionByType(II)Lcom/yulong/android/internal/telephony/Subscription;

    move-result-object v0

    .line 803
    .restart local v0    # "sub":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 804
    invoke-virtual {v0, v0}, Lcom/yulong/android/internal/telephony/Subscription;->copyFrom(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;

    .line 805
    iput p1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 806
    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 807
    new-instance v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v1, p0, v0, v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 808
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private validateActivationRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z
    .locals 2
    .param p1, "sub"    # Lcom/yulong/android/internal/telephony/Subscription;

    .prologue
    .line 1000
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    sget v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    sget v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yulong/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1004
    const/4 v0, 0x1

    .line 1006
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateDeactivationRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z
    .locals 2
    .param p1, "sub"    # Lcom/yulong/android/internal/telephony/Subscription;

    .prologue
    .line 1012
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    sget v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    sget v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yulong/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1016
    const/4 v0, 0x1

    .line 1018
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z
    .locals 3
    .param p1, "sub"    # Lcom/yulong/android/internal/telephony/Subscription;

    .prologue
    .line 566
    const-string v0, "SubscriptionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validuicc slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yulong/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    sget v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    sget v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yulong/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 572
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activateorDeactivateRequest([IIIILandroid/os/Message;)I
    .locals 6
    .param p1, "selectParam"    # [I
    .param p2, "subState"    # I
    .param p3, "rilIndex"    # I
    .param p4, "mode"    # I
    .param p5, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 359
    new-instance v0, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .line 360
    .local v0, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->setUiccSubsParams(Lcom/yulong/android/internal/telephony/Subscription;III)I

    move-result v1

    .line 361
    .local v1, "res":I
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter activateorDeactivateRequest res:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rilIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eq v1, v2, :cond_0

    .line 364
    const/4 v2, 0x0

    .line 383
    :goto_0
    return v2

    .line 367
    :cond_0
    if-ne v2, p2, :cond_1

    .line 368
    new-instance v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v3, p0, v0, p5}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 369
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v4

    aget-object v4, v4, p3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    goto :goto_0

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->PROCESSING:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-ne v3, v4, :cond_2

    .line 374
    sget-object v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    .line 376
    :cond_2
    new-instance v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v3, p0, v0, p5}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .line 377
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v4

    aget-object v4, v4, p3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processDeactivateRequests()V

    goto :goto_0
.end method

.method public attach(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 172
    iput-object p3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 173
    return-void
.end method

.method public getGlobalAppsIndex(I)[I
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 1256
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 1257
    .local v1, "globalAppsIndex":[I
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v7, :cond_4

    .line 1258
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v4, v7

    .line 1259
    .local v4, "numApps":I
    const/4 v3, 0x1

    .local v3, "isGsmApp":Z
    const/4 v2, 0x1

    .line 1260
    .local v2, "isCdmaApp":Z
    const/4 v0, 0x0

    .local v0, "appIndex":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 1261
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v5, v7, v0

    .line 1262
    .local v5, "sub":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v5, :cond_3

    .line 1263
    iget-object v6, v5, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 1264
    .local v6, "subAppType":Ljava/lang/String;
    const-string v7, "SIM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USIM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    .line 1266
    :cond_0
    const/4 v7, 0x1

    aput v0, v1, v7

    .line 1267
    const/4 v3, 0x0

    .line 1269
    :cond_1
    const-string v7, "CSIM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "RUIM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    .line 1271
    :cond_2
    const/4 v7, 0x0

    aput v0, v1, v7

    .line 1272
    const/4 v2, 0x0

    .line 1260
    .end local v6    # "subAppType":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1277
    .end local v0    # "appIndex":I
    .end local v2    # "isCdmaApp":Z
    .end local v3    # "isGsmApp":Z
    .end local v4    # "numApps":I
    .end local v5    # "sub":Lcom/yulong/android/internal/telephony/Subscription;
    :cond_4
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscriptionManager enter handleMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 229
    :pswitch_1
    const-string v2, "EVENT_ICC_CHANGED"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 230
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->handleIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v2, "EVENT_SET_UICC_SUBSCRIPTION_AUTO_DONE"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 234
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 237
    :pswitch_3
    const-string v2, "Registration is not in service for a long time,take a recovery operation"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 238
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 239
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 240
    .local v1, "indicator":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSEDRegion()Z

    move-result v2

    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isSedRegion:Z

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current region is in sed region? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isSedRegion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 242
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isSedRegion:Z

    if-nez v2, :cond_0

    .line 243
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->handleEx(I)V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public initCardInfo()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 610
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getPhoneSlotService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v6

    .line 611
    .local v6, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CP_COMM: myNativeSlotService == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 612
    if-eqz v6, :cond_7

    .line 613
    const/4 v2, 0x0

    .local v2, "cardIndex":I
    :goto_0
    const/4 v9, 0x2

    if-ge v2, v9, :cond_7

    .line 614
    invoke-interface {v6, v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v7

    .line 616
    .local v7, "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-nez v7, :cond_1

    .line 617
    const-string v9, "CP_COMM: PhoneSlotService == null"

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 613
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initCardInfo iSlotId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", initCardInfo == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 623
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 624
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    .line 625
    .local v1, "appNums":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initCardInfo get real number of app is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 627
    if-lez v1, :cond_9

    .line 628
    const/4 v4, 0x0

    .line 629
    .local v4, "isGlobalMode":Z
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    const-string v10, "3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    const-string v10, "4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 631
    :cond_3
    const/4 v4, 0x1

    .line 633
    :cond_4
    if-eqz v4, :cond_5

    .line 634
    add-int/lit8 v1, v1, 0x1

    .line 636
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initCardInfo current number of app is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 637
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    new-instance v10, Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-direct {v10, v1}, Lcom/yulong/android/internal/telephony/SubscriptionData;-><init>(I)V

    aput-object v10, v9, v2

    .line 638
    new-array v5, v1, [Ljava/lang/String;

    .line 639
    .local v5, "mAppTypes":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "appIndex":I
    :goto_2
    add-int/lit8 v9, v1, -0x1

    if-ge v0, v9, :cond_6

    .line 640
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 641
    .local v8, "type":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v0

    .line 643
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v9, v9, v0

    aget-object v10, v5, v0

    iput-object v10, v9, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 644
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v9, v9, v0

    invoke-direct {p0, v9, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 646
    .end local v8    # "type":I
    :cond_6
    if-eqz v4, :cond_8

    .line 647
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    new-instance v11, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v11}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    aput-object v11, v9, v10

    .line 648
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    const-string v10, "GLOBAL"

    iput-object v10, v9, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 649
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    add-int/lit8 v10, v1, -0x1

    invoke-direct {p0, v9, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V

    .line 658
    :goto_3
    if-ne v2, v12, :cond_0

    iget-boolean v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardTwoFirstIn:Z

    if-eqz v9, :cond_0

    .line 659
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardTwoFirstIn:Z

    .line 660
    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processDeactiveSubscription(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 670
    .end local v0    # "appIndex":I
    .end local v1    # "appNums":I
    .end local v2    # "cardIndex":I
    .end local v4    # "isGlobalMode":Z
    .end local v5    # "mAppTypes":[Ljava/lang/String;
    .end local v6    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v7    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catch_0
    move-exception v3

    .line 672
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CP_COMM: initCardInfo ex:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 674
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_7
    return-void

    .line 651
    .restart local v0    # "appIndex":I
    .restart local v1    # "appNums":I
    .restart local v2    # "cardIndex":I
    .restart local v4    # "isGlobalMode":Z
    .restart local v5    # "mAppTypes":[Ljava/lang/String;
    .restart local v6    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .restart local v7    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :cond_8
    :try_start_1
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 652
    .restart local v8    # "type":I
    add-int/lit8 v9, v1, -0x1

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    .line 653
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    new-instance v11, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v11}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    aput-object v11, v9, v10

    .line 654
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    add-int/lit8 v10, v1, -0x1

    aget-object v10, v5, v10

    iput-object v10, v9, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 655
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    add-int/lit8 v10, v1, -0x1

    invoke-direct {p0, v9, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V

    goto :goto_3

    .line 664
    .end local v0    # "appIndex":I
    .end local v4    # "isGlobalMode":Z
    .end local v5    # "mAppTypes":[Ljava/lang/String;
    .end local v8    # "type":I
    :cond_9
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    new-instance v10, Lcom/yulong/android/internal/telephony/SubscriptionData;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/yulong/android/internal/telephony/SubscriptionData;-><init>(I)V

    aput-object v10, v9, v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public is3gpp2App(II)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1296
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v2, :cond_0

    .line 1297
    const/4 v2, -0x1

    if-ne v2, p2, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return v1

    .line 1300
    :cond_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v0, v2, p2

    .line 1301
    .local v0, "sub1":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    .line 1302
    iget-object v2, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v3, "CSIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v3, "RUIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1303
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public is3gppApp(II)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1281
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v2, :cond_0

    .line 1282
    const/4 v2, -0x1

    if-ne v2, p2, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return v1

    .line 1285
    :cond_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v0, v2, p2

    .line 1286
    .local v0, "sub1":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    .line 1287
    iget-object v2, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1288
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSetSubscriptionInProgress()Z
    .locals 1

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    return v0
.end method

.method public isSubscriptionActivated(I)Z
    .locals 2
    .param p1, "cardIndx"    # I

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSubscriptionState:Ljava/util/HashMap;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;->ACTIVATED:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUiccSubsParams(Lcom/yulong/android/internal/telephony/Subscription;III)I
    .locals 11
    .param p1, "sub"    # Lcom/yulong/android/internal/telephony/Subscription;
    .param p2, "subState"    # I
    .param p3, "rilIndex"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v6, -0x1

    .line 387
    const-string v7, "SubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUiccSubsParams mode :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",rilIndex :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",subState :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v5, -0x1

    .line 390
    .local v5, "m3gppIndex":I
    const/4 v4, -0x1

    .line 392
    .local v4, "m3gpp2Index":I
    add-int/lit8 v7, p3, 0x1

    invoke-static {v7}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPhoneType(I)I

    move-result v7

    if-ne v10, v7, :cond_7

    if-eq p4, v10, :cond_7

    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, "isGlobalMode":Z
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v7, :cond_1

    .line 396
    const-string v7, "SubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCardSubData :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 398
    const-string v7, "GLOBAL"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v8, v8, p3

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 399
    const/4 v1, 0x1

    .line 400
    const-string v7, "SubscriptionManager"

    const-string v8, "set app type to GLOBAL"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    if-eqz v1, :cond_4

    .line 405
    const/4 v4, 0x0

    .line 406
    const-string v7, "GLOBAL"

    iput-object v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 419
    .end local v3    # "k":I
    :cond_1
    :goto_1
    iput p3, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 420
    iput v4, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 421
    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v7

    aget-object v7, v7, p2

    iput-object v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 422
    iput p3, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 423
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 447
    .end local v1    # "isGlobalMode":Z
    :cond_2
    :goto_2
    return v6

    .line 397
    .restart local v1    # "isGlobalMode":Z
    .restart local v3    # "k":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    :cond_4
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v0, v7

    .line 409
    .local v0, "appNums":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v0, :cond_1

    .line 410
    const-string v7, "RUIM"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v8, v8, p3

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "CSIM"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v8, v8, p3

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 412
    :cond_5
    move v4, v2

    .line 413
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iput-object v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    goto :goto_1

    .line 409
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 427
    .end local v0    # "appNums":I
    .end local v1    # "isGlobalMode":Z
    .end local v2    # "j":I
    .end local v3    # "k":I
    :cond_7
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v7, :cond_9

    .line 429
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v0, v7

    .line 430
    .restart local v0    # "appNums":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    if-ge v2, v0, :cond_9

    .line 431
    const-string v7, "USIM"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v8, v8, p3

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "SIM"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v8, v8, p3

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 433
    :cond_8
    move v5, v2

    .line 434
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iput-object v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 439
    .end local v0    # "appNums":I
    .end local v2    # "j":I
    :cond_9
    iput p3, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 440
    iput v5, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 441
    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v7

    aget-object v7, v7, p2

    iput-object v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 442
    iput p3, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 443
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 447
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 430
    .restart local v0    # "appNums":I
    .restart local v2    # "j":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
