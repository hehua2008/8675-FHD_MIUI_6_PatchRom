.class public Lcom/yulong/android/internal/telephony/CardInfoParse;
.super Ljava/lang/Object;
.source "CardInfoParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;
    }
.end annotation


# static fields
.field public static final CC_OPERID_MAXLEN:I = 0xa

.field public static final CC_OPERNAME_MAXLEN:I = 0x32

.field public static final CONTENT_MAXLEN:I = 0x80

.field public static final ID_ARRAY_MAXLEN:I = 0x18

.field private static final LOG_TAG:Ljava/lang/String; = "CardInfoParse"

.field private static sInstance:Lcom/yulong/android/internal/telephony/CardInfoParse;


# instance fields
.field private mCdmaContent:[C

.field private mCdmaOperId:[C

.field private mCdmaOperName:Ljava/lang/String;

.field private mContentLen:I

.field private mGsmContent:[C

.field private mGsmOperId:[C

.field private mGsmOperName:Ljava/lang/String;

.field private mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field private mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaContent:[C

    new-array v0, v2, [C

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmContent:[C

    new-instance v0, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;-><init>(Lcom/yulong/android/internal/telephony/CardInfoParse;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    new-array v1, v2, [C

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szICCID:[C

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    new-array v1, v2, [C

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSICdma:[C

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    new-array v1, v2, [C

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSIGsm:[C

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    new-array v1, v2, [C

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szStatePINPUK:[C

    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    new-array v0, v3, [C

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperId:[C

    new-array v0, v3, [C

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperId:[C

    return-void
.end method

.method private convertInfo(Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    .locals 6
    .param p1, "slotCardInfo"    # Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget v1, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iCardType:I

    .local v1, "type":I
    const-string v2, ""

    iput-object v2, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iCardType:I

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iput v1, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iCardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSICdma:[C

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperId:[C

    invoke-virtual {p0, v2, v3, v5}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameByIMSI([C[CI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperName:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperId:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperName:Ljava/lang/String;

    iput-object v2, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iCardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSIGsm:[C

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperId:[C

    invoke-virtual {p0, v2, v3, v5}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameByIMSI([C[CI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperName:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperId:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperName:Ljava/lang/String;

    iput-object v2, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iCardType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSIGsm:[C

    aget-char v2, v2, v4

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSIGsm:[C

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperId:[C

    invoke-virtual {p0, v2, v3, v5}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameByIMSI([C[CI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperName:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperId:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    :cond_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSICdma:[C

    aget-char v2, v2, v4

    if-eqz v2, :cond_5

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSICdma:[C

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperId:[C

    invoke-virtual {p0, v2, v3, v5}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameByIMSI([C[CI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperName:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperId:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    :cond_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSICdma:[C

    aget-char v2, v2, v4

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSIGsm:[C

    aget-char v2, v2, v4

    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperId:[C

    const/4 v3, 0x5

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    .local v0, "tempStr":Ljava/lang/String;
    const-string v2, "46099"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x2

    .end local v0    # "tempStr":Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperName:Ljava/lang/String;

    iput-object v2, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0    # "tempStr":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public static getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/internal/telephony/CardInfoParse;->sInstance:Lcom/yulong/android/internal/telephony/CardInfoParse;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulong/android/internal/telephony/CardInfoParse;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/CardInfoParse;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/CardInfoParse;->sInstance:Lcom/yulong/android/internal/telephony/CardInfoParse;

    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/CardInfoParse;->sInstance:Lcom/yulong/android/internal/telephony/CardInfoParse;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "CardInfoParse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public convertStringToInt([CII)I
    .locals 5
    .param p1, "str"    # [C
    .param p2, "iBegIndex"    # I
    .param p3, "iEndIndex"    # I

    .prologue
    move v1, p2

    .local v1, "iCur":I
    const/4 v2, 0x0

    .local v2, "result":I
    const/4 v0, 0x0

    .local v0, "bNegative":Z
    :goto_0
    if-ge v1, p3, :cond_3

    aget-char v3, p1, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-char v3, p1, v1

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    aget-char v3, p1, v1

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    aget-char v3, p1, v1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    mul-int/lit8 v3, v2, 0xa

    aget-char v4, p1, v1

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x30

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    mul-int/lit8 v2, v2, -0x1

    :cond_4
    return v2
.end method

.method findNextComma([CII)I
    .locals 4
    .param p1, "content"    # [C
    .param p2, "curIndex"    # I
    .param p3, "iLen"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "result":I
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_0

    aget-char v2, p1, v0

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    :cond_0
    if-ge v0, p3, :cond_1

    move v1, v0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getCarrierNameByIMSI([C[CI)Ljava/lang/String;
    .locals 5
    .param p1, "strIMSI"    # [C
    .param p2, "pszOperID"    # [C
    .param p3, "lIDSize"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "carrierName":Ljava/lang/String;
    if-nez p2, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, p2, p1, v1}, Lcom/yulong/android/internal/telephony/CardInfoParse;->strSafetyCopy([C[CI)I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-direct {v2, p2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method getCarrierNameByOperId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pszOperID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x0

    .local v0, "carrierName":Ljava/lang/String;
    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getCarrierNameBySlotInfo(Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    .locals 2
    .param p1, "slotCardInfo"    # Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .prologue
    iget v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "getCarrierNameByOperId  CardType_RUIM."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/CardInfoParse;->log(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameByOperId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperName:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperName:Ljava/lang/String;

    iput-object v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "getCarrierNameByOperId  CardType_SIM, mGsmOperId = null."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/CardInfoParse;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameByOperId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarrierNameByOperId  CardType_SIM :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/CardInfoParse;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperName:Ljava/lang/String;

    iput-object v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameByOperId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperName:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaOperName:Ljava/lang/String;

    iput-object v0, p1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    goto :goto_0
.end method

.method parseCdmaCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z
    .locals 6
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "slotCardInfo"    # Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .local v2, "pszCommand":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "inLen":I
    if-nez v2, :cond_0

    const-string v4, "parseCdmaCommand, mContent == null"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/CardInfoParse;->log(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    :goto_1
    if-ge v0, v1, :cond_1

    aget-char v4, v2, v0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaContent:[C

    aget-char v5, v2, v0

    aput-char v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mContentLen:I

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaContent:[C

    aput-char v3, v4, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseCommand, len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mContentLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/CardInfoParse;->log(Ljava/lang/String;)V

    iget v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mContentLen:I

    invoke-virtual {p0, p2, v3}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseContent(Lcom/yulong/android/internal/telephony/SlotCardInfo;I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method parseContent(Lcom/yulong/android/internal/telephony/SlotCardInfo;I)Z
    .locals 6
    .param p1, "slotCardInfo"    # Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .param p2, "iLen"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "curIndex":I
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mCdmaContent:[C

    .local v0, "content":[C
    invoke-virtual {p0, v0, v1, p2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->findNextComma([CII)I

    move-result v2

    .local v2, "nextComIndex":I
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->convertStringToInt([CII)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iCardType:I

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->findNextComma([CII)I

    move-result v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szStatePINPUK:[C

    sub-int v4, v2, v1

    invoke-static {v0, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->findNextComma([CII)I

    move-result v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->convertStringToInt([CII)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iLeftNumPin1:I

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->findNextComma([CII)I

    move-result v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->convertStringToInt([CII)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iLeftNumPin2:I

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->findNextComma([CII)I

    move-result v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->convertStringToInt([CII)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iLeftNumPuk1:I

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->findNextComma([CII)I

    move-result v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->convertStringToInt([CII)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iLeftNumPuk2:I

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->findNextComma([CII)I

    move-result v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szICCID:[C

    sub-int v4, v2, v1

    invoke-static {v0, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->findNextComma([CII)I

    move-result v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSICdma:[C

    sub-int v4, v2, v1

    invoke-static {v0, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x1

    if-ge v1, p2, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSIGsm:[C

    sub-int v4, p2, v1

    invoke-static {v0, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iCardType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pin1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iLeftNumPin1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pin2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iLeftNumPin2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/CardInfoParse;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "puk1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iLeftNumPuk1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", puk2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->iLeftNumPuk2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/CardInfoParse;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/CardInfoParse;->convertInfo(Lcom/yulong/android/internal/telephony/SlotCardInfo;)V

    const/4 v3, 0x1

    return v3

    :cond_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mySubCardInfo:Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->szIMSIGsm:[C

    aput-char v5, v3, v5

    goto :goto_0
.end method

.method parseGsmCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z
    .locals 6
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "slotCardInfo"    # Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .local v2, "pszCommand":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "inLen":I
    if-nez v2, :cond_0

    const-string v4, "parseGsmCommand, pszCommand == null"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/CardInfoParse;->log(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    :goto_1
    if-ge v0, v1, :cond_1

    aget-char v4, v2, v0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmContent:[C

    aget-char v5, v2, v0

    aput-char v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mContentLen:I

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmContent:[C

    aput-char v3, v4, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseCommand, len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mContentLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mGsmContent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmContent:[C

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/CardInfoParse;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmContent:[C

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperId:[C

    const/16 v5, 0xa

    invoke-virtual {p0, v3, v4, v5}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameByIMSI([C[CI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/CardInfoParse;->mGsmOperId:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    const-string v3, "CardInfoParse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: slotCardInfo.mCardCarrierName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",slotCardInfo.mGsmOperId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0
.end method

.method strSafetyCopy([C[CI)I
    .locals 4
    .param p1, "dst"    # [C
    .param p2, "src"    # [C
    .param p3, "dstSize"    # I

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    array-length v1, p2

    .local v1, "srcLen":I
    add-int/lit8 v3, p3, -0x1

    if-le v3, v1, :cond_4

    move v0, v1

    .local v0, "dstLen":I
    :goto_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-lez v0, :cond_3

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    aput-char v2, p1, v0

    goto :goto_0

    .end local v0    # "dstLen":I
    :cond_4
    add-int/lit8 v0, p3, -0x1

    goto :goto_1
.end method
