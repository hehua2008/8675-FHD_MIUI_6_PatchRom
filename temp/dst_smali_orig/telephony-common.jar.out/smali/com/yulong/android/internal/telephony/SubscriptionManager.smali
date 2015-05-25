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

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v4, [Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    iput v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    iput-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    new-array v2, v4, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    aput-object v3, v2, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardInfo:[[I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardOneFirstIn:Z

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardTwoFirstIn:Z

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->switchPhoneFlag:Z

    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    iput v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exDeactive:I

    sget-object v2, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->IDLE:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isSedRegion:Z

    iput v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->DEACTIVATE_CARD_ONE:I

    iput v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->DEACTIVATE_CARD_TWO:I

    iput v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->ACTIVATE_CARD_ONE:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->ACTIVATE_CARD_TWO:I

    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iput-object p2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    new-array v2, v4, [Lcom/yulong/android/internal/telephony/SubscriptionData;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilReset(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v1, v2, v0

    .local v1, "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    new-instance v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v3, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    new-instance v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v3, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSubscriptionState:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v2, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v1, v2, v0

    .restart local v1    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSubscriptionState:Ljava/util/HashMap;

    sget-object v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;->DEACTIVATED:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p0, v4, v7}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

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
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    :pswitch_1
    const-string v0, "SIM"

    goto :goto_0

    :pswitch_2
    const-string v0, "USIM"

    goto :goto_0

    :pswitch_3
    const-string v0, "RUIM"

    goto :goto_0

    :pswitch_4
    const-string v0, "CSIM"

    goto :goto_0

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

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-nez v0, :cond_1

    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    :cond_0
    :goto_0
    return-void

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

    :cond_2
    iput p2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0

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

    :cond_4
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    iput p2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method private get3gpp2Index(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_2

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

    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private get3gppIndex(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_2

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

    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/yulong/android/internal/telephony/SubscriptionManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const-class v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "SubscriptionManager"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPhoneSlotService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "myBinder":Landroid/os/IBinder;
    const/4 v3, 0x0

    .local v3, "myNS":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    const-string v4, "nativePhoneSlot"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v3

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_0
    move v0, v1

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

    new-instance v1, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v1}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .local v1, "sub":Lcom/yulong/android/internal/telephony/Subscription;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v1, v2, v0

    :cond_1
    :goto_2
    move-object v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v1, v2, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleEx(I)V
    .locals 10
    .param p1, "indicator"    # I

    .prologue
    const/4 v9, -0x1

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v5, 0x0

    .local v5, "subId":I
    const/4 v1, -0x1

    .local v1, "m3gppIndex":I
    const/4 v0, -0x1

    .local v0, "m3gpp2Index":I
    const/4 v6, 0x0

    .local v6, "subStatus":I
    new-instance v3, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v3}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .local v3, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    packed-switch p1, :pswitch_data_0

    const-string v7, "modem has reseted,don\'t handle here"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

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

    const-string v7, "CT card insert slot-1 and LTE in slot-2, do not recovery"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isGloabalMode(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "GLOBAL"

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const/4 v0, 0x0

    :cond_1
    :goto_1
    const/4 v6, 0x0

    :goto_2
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v8, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-ne v7, v8, :cond_9

    const-string v7, "user has operated"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gppIndex(I)I

    move-result v1

    if-ne v1, v9, :cond_1

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gpp2Index(I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isGloabalMode(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "GLOBAL"

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const/4 v0, 0x0

    :cond_3
    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gppIndex(I)I

    move-result v1

    if-ne v1, v9, :cond_3

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gpp2Index(I)I

    move-result v0

    goto :goto_3

    :pswitch_2
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isGloabalMode(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "GLOBAL"

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const/4 v0, 0x0

    :cond_5
    :goto_4
    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gppIndex(I)I

    move-result v1

    if-ne v1, v9, :cond_5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gpp2Index(I)I

    move-result v0

    goto :goto_4

    :pswitch_3
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isGloabalMode(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "GLOBAL"

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const/4 v0, 0x0

    :cond_7
    :goto_5
    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gppIndex(I)I

    move-result v1

    if-ne v1, v9, :cond_7

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->get3gpp2Index(I)I

    move-result v0

    goto :goto_5

    :cond_9
    sget-object v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->PROCESSING:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput v5, v3, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v7

    aget-object v7, v7, v6

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput v5, v3, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    iput v0, v3, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    iput v1, v3, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .local v2, "msgEx":Landroid/os/Message;
    if-nez v6, :cond_a

    iget v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exDeactive:I

    iput v7, v2, Landroid/os/Message;->arg1:I

    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v3, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .local v4, "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processDeactivateRequests()V

    :goto_6
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->objLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    :cond_a
    iget v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v7, v2, Landroid/os/Message;->arg1:I

    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v3, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .restart local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    goto :goto_6

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

    const-string v1, "handleIccChanged: ENTER"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

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

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->onUpdateUiccStatus(Ljava/lang/Integer;)V

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

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->switchPhoneFlag:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->switchPhoneFlag:Z

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

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

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

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneEx()V

    .end local v0    # "cardIndex":Ljava/lang/Integer;
    :goto_0
    return-void

    .restart local v0    # "cardIndex":Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardOneFirstIn:Z

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardOneFirstIn:Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processActiveSubsctiption(I)V

    .end local v0    # "cardIndex":Ljava/lang/Integer;
    :cond_1
    :goto_1
    const-string v1, "handleIccChanged: EXIT"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "cardIndex":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardTwoFirstIn:Z

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardTwoFirstIn:Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processActiveSubsctiption(I)V

    goto :goto_1
.end method

.method private isGloabalMode(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const-string v1, "GLOBAL"

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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
    const/4 v3, 0x0

    .local v3, "isGsmApp":Z
    const/4 v1, 0x0

    .local v1, "isCdmaApp":Z
    const/4 v2, 0x0

    .local v2, "isGlobalmode":Z
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_5

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .local v0, "appIndex":I
    :goto_0
    if-ge v0, p3, :cond_4

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    .local v5, "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v4

    .local v4, "subAppType":Ljava/lang/String;
    const-string v6, "SIM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "USIM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    const-string v6, "CSIM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "RUIM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v1, 0x1

    .end local v4    # "subAppType":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v5    # "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_4
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .end local v0    # "appIndex":I
    :cond_5
    :goto_1
    return v2

    .restart local v0    # "appIndex":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized onUpdateUiccStatus(Ljava/lang/Integer;)V
    .locals 14
    .param p1, "cardIndex"    # Ljava/lang/Integer;

    .prologue
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

    const/4 v5, 0x0

    .local v5, "isGlobalmode":Z
    const/4 v10, 0x0

    iput v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

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

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    if-eqz v10, :cond_2

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

    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

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

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    iget v11, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    invoke-direct {p0, p1, v10, v11}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isGlobalmodeSupported(Ljava/lang/Integer;Lcom/android/internal/telephony/uicc/UiccCard;I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

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

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    if-lez v10, :cond_7

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

    :cond_3
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v12, Lcom/yulong/android/internal/telephony/SubscriptionData;

    iget v13, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    invoke-direct {v12, v13}, Lcom/yulong/android/internal/telephony/SubscriptionData;-><init>(I)V

    aput-object v12, v10, v11

    const/4 v1, 0x0

    .local v1, "appIndex":I
    :goto_1
    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumApp:I

    if-ge v1, v10, :cond_8

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v3, v10, v1

    .local v3, "cardSub":Lcom/yulong/android/internal/telephony/Subscription;
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v9

    .local v9, "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v9, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v3, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    :cond_4
    if-nez v9, :cond_5

    if-eqz v5, :cond_5

    const-string v7, "GLOBAL"

    .local v7, "subAppType":Ljava/lang/String;
    :goto_2
    const-string v10, "UNKNOWN"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    iput-object v7, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    :goto_3
    invoke-direct {p0, v3, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v7    # "subAppType":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v8

    .local v8, "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "subAppType":Ljava/lang/String;
    goto :goto_2

    .end local v8    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_6
    const/4 v10, 0x0

    iput-object v10, v3, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v10, "onUpdateUiccStatus(): UNKNOWN APP"

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .end local v1    # "appIndex":I
    .end local v3    # "cardSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v5    # "isGlobalmode":Z
    .end local v7    # "subAppType":Ljava/lang/String;
    .end local v9    # "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

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

    :cond_8
    monitor-exit p0

    return-void
.end method

.method private printPendingActivateRequests()V
    .locals 5

    .prologue
    const-string v3, "ActivatePending Queue : "

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v3, :cond_0

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v0

    .local v2, "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v1, v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

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

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private printPendingDeactivateRequests()V
    .locals 5

    .prologue
    const-string v3, "DeactivatePending Queue : "

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v3, :cond_0

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v0

    .local v2, "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v1, v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

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

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private processActivateRequests()V
    .locals 2

    .prologue
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

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    :cond_0
    return-void
.end method

.method private processActiveSubsctiption(I)V
    .locals 2
    .param p1, "cardIndex"    # I

    .prologue
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

    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->updateActivatePendingList(I)V

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

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    return-void
.end method

.method private processDeactivateRequests()V
    .locals 2

    .prologue
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

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    :cond_0
    return-void
.end method

.method private processDeactiveSubscription(I)V
    .locals 2
    .param p1, "cardIndex"    # I

    .prologue
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

    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->updateDeactivatePendingList(I)V

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

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processDeactivateRequests()V

    return-void
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;

    .local v7, "subParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/4 v6, 0x0

    .local v6, "saveGlobalSettings":Z
    const/4 v0, 0x0

    .local v0, "cause":Ljava/lang/String;
    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .local v8, "subStatus":Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;
    const/4 v1, 0x0

    .local v1, "currentSub":Lcom/yulong/android/internal/telephony/Subscription;
    const/4 v5, 0x0

    .local v5, "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    const-string v9, "SubscriptionManager"

    const-string v10, "processSetUiccSubscriptionDone"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "GLOBAL"

    iget-object v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_9

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

    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    invoke-virtual {p0, v9, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->is3gppApp(II)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "NO CHANGE IN SUBSCRIPTION"

    if-ne v9, v10, :cond_2

    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_1

    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    iput v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    const-string v9, "ACTIVATE SUCCESS"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

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

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v9, "ACTIVATE FAILED"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_3

    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2Id:I

    iput v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    const-string v9, "ACTIVATE SUCCESS"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v9, "ACTIVATE FAILED"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "ACTIVATE SUCCESS"

    if-ne v9, v10, :cond_6

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v10, "ACTIVATE SUCCESS"

    if-ne v9, v10, :cond_6

    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v0, "ACTIVATE SUCCESS"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    const/4 v11, 0x3

    aput v11, v9, v10

    :goto_2
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_5

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    if-eq v9, v10, :cond_5

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    goto :goto_1

    :cond_6
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "ACTIVATE FAILED"

    if-ne v9, v10, :cond_8

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v10, "ACTIVATE FAILED"

    if-ne v9, v10, :cond_8

    const-string v0, "ACTIVATE FAILED"

    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

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

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .local v2, "msgEx":Landroid/os/Message;
    iget v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v9, v2, Landroid/os/Message;->arg1:I

    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v1, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .local v4, "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget v11, v9, v10

    add-int/lit8 v11, v11, -0x1

    aput v11, v9, v10

    goto/16 :goto_2

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

    :cond_8
    const/4 v6, 0x1

    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v0, "GLOBAL ACTIVATE FAILED"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    aget-object v1, v9, v10

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    const/4 v11, 0x3

    aput v11, v9, v10

    goto/16 :goto_2

    :cond_9
    const-string v9, "GLOBAL"

    iget-object v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_11

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

    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    invoke-virtual {p0, v9, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->is3gppApp(II)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "NO CHANGE IN SUBSCRIPTION"

    if-ne v9, v10, :cond_d

    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_c

    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    iput v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    const-string v9, "DEACTIVATE SUCCESS"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

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

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "DEACTIVATE SUCCESS"

    if-ne v9, v10, :cond_f

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v10, "DEACTIVATE SUCCESS"

    if-ne v9, v10, :cond_f

    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v0, "DEACTIVATE SUCCESS"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_a

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exDeactive:I

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v10, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-eq v9, v10, :cond_a

    new-instance v3, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v3}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .local v3, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    move-object v3, v1

    sget-object v9, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v9, v3, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "msgEx":Landroid/os/Message;
    iget v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v9, v2, Landroid/os/Message;->arg1:I

    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v3, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .restart local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v10, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-ne v9, v10, :cond_b

    sget-object v9, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->IDLE:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

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

    :cond_c
    const-string v9, "DEACTIVATE FAILED"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    goto/16 :goto_4

    :cond_d
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_e

    iget v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2Id:I

    iput v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    const-string v9, "DEACTIVATE SUCCESS"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    goto/16 :goto_4

    :cond_e
    const-string v9, "DEACTIVATE FAILED"

    iput-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    goto/16 :goto_4

    :cond_f
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v10, "DEACTIVATE FAILED"

    if-ne v9, v10, :cond_10

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v10, "DEACTIVATE FAILED"

    if-ne v9, v10, :cond_10

    const-string v0, "DEACTIVATE FAILED"

    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    goto :goto_5

    :cond_10
    const/4 v6, 0x1

    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v0, "GLOBAL DEACTIVATE FAILED"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCurrentAppId:I

    aget-object v1, v9, v10

    goto/16 :goto_5

    :cond_11
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_16

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

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "msgEx":Landroid/os/Message;
    iget v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v9, v2, Landroid/os/Message;->arg1:I

    new-instance v3, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v3}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

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

    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v1, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .restart local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget v11, v9, v10

    add-int/lit8 v11, v11, -0x1

    aput v11, v9, v10

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

    :cond_13
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_14

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_12

    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_12

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    :cond_14
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_15

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_15
    const-string v9, "SubscriptionManager"

    const-string v10, "should not come here"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

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

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_18

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

    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v0, "ACTIVATE SUCCESS"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->retryTime:[I

    iget v10, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    const/4 v11, 0x3

    aput v11, v9, v10

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    new-instance v11, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v11, p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_18
    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v9, v10, :cond_1b

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

    sget-object v8, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v0, "DEACTIVATE SUCCESS"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    check-cast v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .restart local v5    # "phoneSubInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v1, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    if-eqz v9, :cond_19

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    iget v9, v9, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exDeactive:I

    if-ne v9, v10, :cond_19

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v10, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-eq v9, v10, :cond_19

    new-instance v3, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v3}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .restart local v3    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    iget-object v3, v5, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    sget-object v9, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v9, v3, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "msgEx":Landroid/os/Message;
    iget v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exActive:I

    iput v9, v2, Landroid/os/Message;->arg1:I

    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v4, p0, v3, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    .restart local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v7, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "msgEx":Landroid/os/Message;
    .end local v3    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v4    # "phoneSub":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    :cond_19
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v10, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-ne v9, v10, :cond_1a

    sget-object v9, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->IDLE:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

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

    :cond_1b
    const-string v9, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private declared-synchronized startNextPendingActivateRequests()Z
    .locals 28

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->printPendingActivateRequests()V

    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_4

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v27, v3, v23

    .local v27, "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    .local v25, "mPhoneSubscriptionInfo":Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    move-object/from16 v26, v0

    .local v26, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    move-object/from16 v0, v25

    iget-object v11, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->msg:Landroid/os/Message;

    .local v11, "msg":Landroid/os/Message;
    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateActivationRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    move-object/from16 v0, v27

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "GLOBAL"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "startNextPendingActivateRequests: Activating SUB : GLOBAL "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v3, v0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getGlobalAppsIndex(I)[I

    move-result-object v22

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

    .local v2, "globalSetSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_1
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v24

    if-ge v0, v3, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

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

    add-int/lit8 v24, v24, 0x1

    goto :goto_1

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

    .local v12, "setSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

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

    .end local v8    # "msgSetUiccSubDone":Landroid/os/Message;
    .end local v12    # "setSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    :cond_3
    const/4 v3, 0x1

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

    .end local v23    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized startNextPendingDeactivateRequests()Z
    .locals 27

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->printPendingDeactivateRequests()V

    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_4

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v26, v3, v23

    .local v26, "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    move-object/from16 v25, v0

    .local v25, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v11, v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->msg:Landroid/os/Message;

    .local v11, "msg":Landroid/os/Message;
    if-eqz v25, :cond_0

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateDeactivationRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    new-instance v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V

    move-object/from16 v0, v26

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "GLOBAL"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "startNextPendingDeactivateRequests: Need to deactivating SUB :GLOBAL "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v3, v0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getGlobalAppsIndex(I)[I

    move-result-object v22

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

    .local v2, "globalSetSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_1
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v24

    if-ge v0, v3, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

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

    add-int/lit8 v24, v24, 0x1

    goto :goto_1

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

    .local v12, "setSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

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

    .end local v8    # "msgSetUiccSubDone":Landroid/os/Message;
    .end local v12    # "setSubParam":Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    :cond_3
    const/4 v3, 0x1

    .end local v11    # "msg":Landroid/os/Message;
    .end local v25    # "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    .end local v26    # "sub":Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :goto_2
    monitor-exit p0

    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

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

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getSubscriptionByType(II)Lcom/yulong/android/internal/telephony/Subscription;

    move-result-object v0

    .local v0, "sub":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v0}, Lcom/yulong/android/internal/telephony/Subscription;->copyFrom(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;

    iput p1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    new-instance v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v1, p0, v0, v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "sub":Lcom/yulong/android/internal/telephony/Subscription;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getSubscriptionByType(II)Lcom/yulong/android/internal/telephony/Subscription;

    move-result-object v0

    .restart local v0    # "sub":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v0}, Lcom/yulong/android/internal/telephony/Subscription;->copyFrom(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;

    iput p1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    new-instance v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v1, p0, v0, v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

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

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getSubscriptionByType(II)Lcom/yulong/android/internal/telephony/Subscription;

    move-result-object v0

    .local v0, "sub":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v0}, Lcom/yulong/android/internal/telephony/Subscription;->copyFrom(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;

    iput p1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    new-instance v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v1, p0, v0, v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "sub":Lcom/yulong/android/internal/telephony/Subscription;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getSubscriptionByType(II)Lcom/yulong/android/internal/telephony/Subscription;

    move-result-object v0

    .restart local v0    # "sub":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v0}, Lcom/yulong/android/internal/telephony/Subscription;->copyFrom(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;

    iput p1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    new-instance v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v1, p0, v0, v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

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

    const/4 v0, 0x1

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

    const/4 v0, 0x1

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

    const/4 v0, 0x1

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

    new-instance v0, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .local v0, "newSub":Lcom/yulong/android/internal/telephony/Subscription;
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->setUiccSubsParams(Lcom/yulong/android/internal/telephony/Subscription;III)I

    move-result v1

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

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-ne v2, p2, :cond_1

    new-instance v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v3, p0, v0, p5}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v4

    aget-object v4, v4, p3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v4, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->PROCESSING:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->exFlag:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    :cond_2
    new-instance v3, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v3, p0, v0, p5}, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/Map;

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v4

    aget-object v4, v4, p3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mPhoneSubscriptionInfo:Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processDeactivateRequests()V

    goto :goto_0
.end method

.method public attach(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    iput-object p3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method public getGlobalAppsIndex(I)[I
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x2

    new-array v1, v7, [I

    .local v1, "globalAppsIndex":[I
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v4, v7

    .local v4, "numApps":I
    const/4 v3, 0x1

    .local v3, "isGsmApp":Z
    const/4 v2, 0x1

    .local v2, "isCdmaApp":Z
    const/4 v0, 0x0

    .local v0, "appIndex":I
    :goto_0
    if-ge v0, v4, :cond_4

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v5, v7, v0

    .local v5, "sub":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

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

    :cond_0
    const/4 v7, 0x1

    aput v0, v1, v7

    const/4 v3, 0x0

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

    :cond_2
    const/4 v7, 0x0

    aput v0, v1, v7

    const/4 v2, 0x0

    .end local v6    # "subAppType":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v2, "EVENT_ICC_CHANGED"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->handleIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "EVENT_SET_UICC_SUBSCRIPTION_AUTO_DONE"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_3
    const-string v2, "Registration is not in service for a long time,take a recovery operation"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .local v1, "indicator":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSEDRegion()Z

    move-result v2

    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isSedRegion:Z

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

    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->isSedRegion:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->handleEx(I)V

    goto :goto_0

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

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getPhoneSlotService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v6

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

    if-eqz v6, :cond_7

    const/4 v2, 0x0

    .local v2, "cardIndex":I
    :goto_0
    const/4 v9, 0x2

    if-ge v2, v9, :cond_7

    invoke-interface {v6, v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v7

    .local v7, "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-nez v7, :cond_1

    const-string v9, "CP_COMM: PhoneSlotService == null"

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

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

    if-lez v1, :cond_9

    const/4 v4, 0x0

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

    :cond_3
    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_5

    add-int/lit8 v1, v1, 0x1

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

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    new-instance v10, Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-direct {v10, v1}, Lcom/yulong/android/internal/telephony/SubscriptionData;-><init>(I)V

    aput-object v10, v9, v2

    new-array v5, v1, [Ljava/lang/String;

    .local v5, "mAppTypes":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "appIndex":I
    :goto_2
    add-int/lit8 v9, v1, -0x1

    if-ge v0, v9, :cond_6

    iget-object v9, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "type":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v0

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v9, v9, v0

    aget-object v10, v5, v0

    iput-object v10, v9, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v9, v9, v0

    invoke-direct {p0, v9, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v8    # "type":I
    :cond_6
    if-eqz v4, :cond_8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    new-instance v11, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v11}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    aput-object v11, v9, v10

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    const-string v10, "GLOBAL"

    iput-object v10, v9, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    add-int/lit8 v10, v1, -0x1

    invoke-direct {p0, v9, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V

    :goto_3
    if-ne v2, v12, :cond_0

    iget-boolean v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardTwoFirstIn:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardTwoFirstIn:Z

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->processDeactiveSubscription(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v0    # "appIndex":I
    .end local v1    # "appNums":I
    .end local v2    # "cardIndex":I
    .end local v4    # "isGlobalMode":Z
    .end local v5    # "mAppTypes":[Ljava/lang/String;
    .end local v6    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v7    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catch_0
    move-exception v3

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

    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_7
    return-void

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

    .restart local v8    # "type":I
    add-int/lit8 v9, v1, -0x1

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    new-instance v11, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v11}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    aput-object v11, v9, v10

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    add-int/lit8 v10, v1, -0x1

    aget-object v10, v5, v10

    iput-object v10, v9, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    add-int/lit8 v10, v1, -0x1

    invoke-direct {p0, v9, v10}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V

    goto :goto_3

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

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-ne v2, p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v0, v2, p2

    .local v0, "sub1":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

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

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-ne v2, p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v0, v2, p2

    .local v0, "sub1":Lcom/yulong/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

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

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSetSubscriptionInProgress()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    return v0
.end method

.method public isSubscriptionActivated(I)Z
    .locals 2
    .param p1, "cardIndx"    # I

    .prologue
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

    const/4 v5, -0x1

    .local v5, "m3gppIndex":I
    const/4 v4, -0x1

    .local v4, "m3gpp2Index":I
    add-int/lit8 v7, p3, 0x1

    invoke-static {v7}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPhoneType(I)I

    move-result v7

    if-ne v10, v7, :cond_7

    if-eq p4, v10, :cond_7

    const/4 v1, 0x0

    .local v1, "isGlobalMode":Z
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v7, :cond_1

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

    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    const-string v7, "GLOBAL"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v8, v8, p3

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    const-string v7, "SubscriptionManager"

    const-string v8, "set app type to GLOBAL"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_4

    const/4 v4, 0x0

    const-string v7, "GLOBAL"

    iput-object v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .end local v3    # "k":I
    :cond_1
    :goto_1
    iput p3, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    iput v4, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v7

    aget-object v7, v7, p2

    iput-object v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput p3, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v7

    if-nez v7, :cond_a

    .end local v1    # "isGlobalMode":Z
    :cond_2
    :goto_2
    return v6

    .restart local v1    # "isGlobalMode":Z
    .restart local v3    # "k":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v0, v7

    .local v0, "appNums":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v0, :cond_1

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

    :cond_5
    move v4, v2

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iput-object v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

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

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v0, v7

    .restart local v0    # "appNums":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    if-ge v2, v0, :cond_9

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

    :cond_8
    move v5, v2

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v7, v7, p3

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iput-object v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .end local v0    # "appNums":I
    .end local v2    # "j":I
    :cond_9
    iput p3, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    iput v5, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v7

    aget-object v7, v7, p2

    iput-object v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput p3, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_2

    .restart local v0    # "appNums":I
    .restart local v2    # "j":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
