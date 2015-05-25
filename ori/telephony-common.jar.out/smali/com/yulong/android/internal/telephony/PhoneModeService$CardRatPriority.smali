.class public Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;
.super Ljava/lang/Object;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CardRatPriority"
.end annotation


# static fields
.field public static final CMCC:I = 0x30

.field private static final CMCCSIM:I = 0x31

.field private static final CMCCUSIM:I = 0x33

.field public static final CU:I = 0x10

.field private static final CUUSIM:I = 0x13

.field public static final NOCARD:I = 0x0

.field public static final OVERSEA:I = 0x20

.field private static final OVERSEASIM:I = 0x21

.field private static final OVERSEAUSIM:I = 0x23


# instance fields
.field private mCardType:I

.field private mOperator:Ljava/lang/String;

.field private mOperatorTag:I

.field private mPriority:I

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;


# direct methods
.method private constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;I)V
    .locals 1
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "cardType"    # I

    .prologue
    .line 466
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperator:Ljava/lang/String;

    .line 468
    iput p3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mCardType:I

    .line 469
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->setOperatorTag()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I

    .line 470
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I

    .line 471
    return-void
.end method

.method synthetic constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/yulong/android/internal/telephony/PhoneModeService$1;

    .prologue
    .line 449
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    .prologue
    .line 449
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I

    return v0
.end method

.method static synthetic access$6200(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    .prologue
    .line 449
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I

    return v0
.end method

.method private getPriority()I
    .locals 4

    .prologue
    .line 489
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: getPriority, mOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCardType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mCardType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperatorTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCardType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mCardType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I

    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mCardType:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 490
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mCardType:I

    or-int/2addr v0, v1

    return v0
.end method

.method private setOperatorTag()I
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperator:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CT"

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    :cond_0
    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0

    .line 478
    :cond_1
    const-string v0, "CM"

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    const/16 v0, 0x30

    goto :goto_0

    .line 480
    :cond_2
    const-string v0, "CU"

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    const/16 v0, 0x10

    goto :goto_0

    .line 483
    :cond_3
    const/16 v0, 0x20

    goto :goto_0
.end method
