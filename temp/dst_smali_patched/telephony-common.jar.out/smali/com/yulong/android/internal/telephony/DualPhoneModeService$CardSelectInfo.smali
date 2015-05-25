.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
.super Ljava/lang/Object;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;
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

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;IIII)V
    .locals 0
    .param p2, "iLeftSlotModemType"    # I
    .param p3, "iRightSlotModemType"    # I
    .param p4, "iPreferredSlotId"    # I
    .param p5, "iPreferredModemType"    # I

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iput p3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iput p4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    iput p5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    return-void
.end method


# virtual methods
.method public copyData(Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;)V
    .locals 1
    .param p1, "userselected"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    .prologue
    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    return-void
.end method
