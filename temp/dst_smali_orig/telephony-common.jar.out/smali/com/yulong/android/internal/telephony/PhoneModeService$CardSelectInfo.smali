.class Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
.super Ljava/lang/Object;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardSelectInfo"
.end annotation


# instance fields
.field public mCdmaRadio:Z

.field public mGsmRadio:Z

.field public mLeftSlotModemType:I

.field public mPreferredModemType:I

.field public mPreferredSlotId:I

.field public mRightSlotModemType:I

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService;IIII)V
    .locals 0
    .param p2, "iLeftSlotModemType"    # I
    .param p3, "iRightSlotModemType"    # I
    .param p4, "iPreferredSlotId"    # I
    .param p5, "iPreferredModemType"    # I

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iput p3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iput p4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    iput p5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    return-void
.end method


# virtual methods
.method public Isequal(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)Z
    .locals 3
    .param p1, "userselected"    # Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    iget v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v1, v0, :cond_3

    :cond_0
    iget v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-ne v1, v0, :cond_3

    :cond_1
    iget v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v1, v0, :cond_3

    :cond_2
    iget v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v1, v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return v0
.end method

.method public copyData(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)V
    .locals 1
    .param p1, "userselected"    # Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .prologue
    iget v0, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget v0, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget v0, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    iget v0, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    return-void
.end method
