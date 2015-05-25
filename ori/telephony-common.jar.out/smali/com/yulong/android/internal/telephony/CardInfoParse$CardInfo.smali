.class Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;
.super Ljava/lang/Object;
.source "CardInfoParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/CardInfoParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardInfo"
.end annotation


# instance fields
.field iCardType:I

.field iLeftNumPin1:I

.field iLeftNumPin2:I

.field iLeftNumPuk1:I

.field iLeftNumPuk2:I

.field szICCID:[C

.field szIMSICdma:[C

.field szIMSIGsm:[C

.field szStatePINPUK:[C

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/CardInfoParse;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/CardInfoParse;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/CardInfoParse$CardInfo;->this$0:Lcom/yulong/android/internal/telephony/CardInfoParse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
