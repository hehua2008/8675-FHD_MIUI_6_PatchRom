.class public Lcom/yulong/android/internal/telephony/SlotCardInfo;
.super Ljava/lang/Object;
.source "SlotCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/internal/telephony/SlotCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR_MGR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/internal/telephony/SlotCardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActive:I

.field public mAppTypes:Ljava/lang/String;

.field public mCardCarrierName:Ljava/lang/String;

.field public mCardType:I

.field public mCdmaApplicationState:I

.field public mCdmaImsi:Ljava/lang/String;

.field public mCsimImsi:Ljava/lang/String;

.field public mDualGAppState:I

.field public mGsmApplicationState:I

.field public mGsmImsi:Ljava/lang/String;

.field public mGsmOperId:Ljava/lang/String;

.field public mIccId:Ljava/lang/String;

.field public mIs3GUimCard:I

.field public mIsimImsi:Ljava/lang/String;

.field public mMCCMNC:Ljava/lang/String;

.field public mModemId:I

.field public mPin1:Ljava/lang/String;

.field public mPinNumLeft:B

.field public mPukNumLeft:B

.field public mScanned:I

.field public mUniversalPinState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/internal/telephony/SlotCardInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/SlotCardInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->CREATOR_MGR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/yulong/android/internal/telephony/SlotCardInfo$2;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/SlotCardInfo$2;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mActive"    # I
    .param p2, "mModemId"    # I
    .param p3, "mCardType"    # I
    .param p4, "mUniversalPinState"    # I
    .param p5, "mPinNumLeft"    # B
    .param p6, "mPukNumLeft"    # B
    .param p7, "mIccId"    # Ljava/lang/String;
    .param p8, "mCardCarrierName"    # Ljava/lang/String;
    .param p9, "mMCCMNC"    # Ljava/lang/String;
    .param p10, "mGsmOperId"    # Ljava/lang/String;
    .param p11, "mPin1"    # Ljava/lang/String;
    .param p12, "flag"    # I
    .param p13, "mCsimImsi"    # Ljava/lang/String;
    .param p14, "mIsimImsi"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    iput p2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    iput p3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    iput p4, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    iput-byte p5, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    iput-byte p6, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    iput-object p7, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    iput-object p8, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    iput-object p9, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    iput-object p10, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    iput-object p11, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    iput-object p13, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    iput-object p14, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "mActive"    # I
    .param p2, "mModemId"    # I
    .param p3, "mCardType"    # I
    .param p4, "mUniversalPinState"    # I
    .param p5, "mPinNumLeft"    # B
    .param p6, "mPukNumLeft"    # B
    .param p7, "mIccId"    # Ljava/lang/String;
    .param p8, "mCardCarrierName"    # Ljava/lang/String;
    .param p9, "mMCCMNC"    # Ljava/lang/String;
    .param p10, "mGsmOperId"    # Ljava/lang/String;
    .param p11, "mPin1"    # Ljava/lang/String;
    .param p12, "mCsimImsi"    # Ljava/lang/String;
    .param p13, "mIsimImsi"    # Ljava/lang/String;
    .param p14, "mCdmaApplicationState"    # I
    .param p15, "mGsmApplicationState"    # I
    .param p16, "mDualGAppState"    # I
    .param p17, "mGsmImsi"    # Ljava/lang/String;
    .param p18, "mCdmaImsi"    # Ljava/lang/String;
    .param p19, "mIs3GUimCard"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    iput p2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    iput p3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    iput p4, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    iput-byte p5, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    iput-byte p6, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    iput-object p7, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    iput-object p8, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    iput-object p9, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    iput-object p10, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    iput-object p11, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    iput-object p12, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    iput-object p13, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    iput p14, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    move/from16 v0, p15

    iput v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    move/from16 v0, p16

    iput v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    move/from16 v0, p19

    iput v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mActive"    # I
    .param p2, "mScanned"    # I
    .param p3, "mModemId"    # I
    .param p4, "mCardType"    # I
    .param p5, "mUniversalPinState"    # I
    .param p6, "mIccId"    # Ljava/lang/String;
    .param p7, "mCdmaImsi"    # Ljava/lang/String;
    .param p8, "mGsmImsi"    # Ljava/lang/String;
    .param p9, "mMCCMNC"    # Ljava/lang/String;
    .param p10, "mGsmOperId"    # Ljava/lang/String;
    .param p11, "mPin1"    # Ljava/lang/String;
    .param p12, "mAppTypes"    # Ljava/lang/String;
    .param p13, "mCsimImsi"    # Ljava/lang/String;
    .param p14, "mIsimImsi"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    iput p2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    iput p3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    iput p4, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    iput p5, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    iput-object p6, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    iput-object p7, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    iput-object p8, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    iput-object p9, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    iput-object p10, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    iput-object p11, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    iput-object p12, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    iput-object p13, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    iput-object p14, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    return-void
.end method

.method public static createFromParcelForSerivceCheckCard(Landroid/os/Parcel;)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 15
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "mActive":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "mModemId":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "mCardType":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "mUniversalPinState":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .local v5, "mPinNumLeft":B
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .local v6, "mPukNumLeft":B
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "mIccId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "mCardCarrierName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "mMCCMNC":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "mGsmOperId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "mPin1":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "mCsimImsi":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, "mIsimImsi":Ljava/lang/String;
    new-instance v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>(IIIIBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public MemSetSlotCardInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    iput v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    iput-byte v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    iput-byte v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    iput v3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    iput v3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    iput v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    return-void
.end method

.method public SlotCardInfoCdmaImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "CdmaImsi"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    return-void
.end method

.method public SlotCardInfoGsmImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "GsmImsi"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCardType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mUniversalPinState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mIccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mMCCMNC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mGsmOperId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mCardCarrierName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mCdmaImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mGsmImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mAppTypes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mCsimImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mIsimImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "cardInfo":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void
.end method
