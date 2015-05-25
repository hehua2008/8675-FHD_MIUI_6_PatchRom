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
    .line 4252
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4253
    return-void
.end method

.method constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;IIII)V
    .locals 0
    .param p2, "iLeftSlotModemType"    # I
    .param p3, "iRightSlotModemType"    # I
    .param p4, "iPreferredSlotId"    # I
    .param p5, "iPreferredModemType"    # I

    .prologue
    .line 4268
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4269
    iput p2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4270
    iput p3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 4271
    iput p4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 4272
    iput p5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 4273
    return-void
.end method


# virtual methods
.method public copyData(Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;)V
    .locals 1
    .param p1, "userselected"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    .prologue
    .line 4282
    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4283
    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 4284
    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 4285
    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 4286
    return-void
.end method
