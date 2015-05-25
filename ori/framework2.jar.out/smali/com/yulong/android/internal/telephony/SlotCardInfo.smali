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
    .line 32
    new-instance v0, Lcom/yulong/android/internal/telephony/SlotCardInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/SlotCardInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->CREATOR_MGR:Landroid/os/Parcelable$Creator;

    .line 66
    new-instance v0, Lcom/yulong/android/internal/telephony/SlotCardInfo$2;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/SlotCardInfo$2;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
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
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 268
    iput p2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    .line 269
    iput p3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 270
    iput p4, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 271
    iput-byte p5, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 272
    iput-byte p6, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 273
    iput-object p7, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 274
    iput-object p8, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    .line 275
    iput-object p9, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 276
    iput-object p10, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 277
    iput-object p11, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 278
    iput-object p13, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    .line 279
    iput-object p14, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    .line 280
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
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 240
    iput p2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    .line 241
    iput p3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 242
    iput p4, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 243
    iput-byte p5, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 244
    iput-byte p6, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 245
    iput-object p7, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 246
    iput-object p8, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    .line 247
    iput-object p9, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 248
    iput-object p10, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 249
    iput-object p11, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 250
    iput-object p12, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    .line 251
    iput-object p13, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    .line 252
    iput p14, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    .line 253
    move/from16 v0, p15

    iput v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    .line 254
    move/from16 v0, p16

    iput v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    .line 255
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 256
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 257
    move/from16 v0, p19

    iput v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    .line 260
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
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 218
    iput p2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    .line 219
    iput p3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    .line 220
    iput p4, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 221
    iput p5, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 222
    iput-object p6, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 223
    iput-object p7, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 224
    iput-object p8, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 225
    iput-object p9, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 226
    iput-object p10, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 227
    iput-object p11, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 228
    iput-object p12, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    .line 229
    iput-object p13, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    .line 230
    iput-object p14, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public static createFromParcelForSerivceCheckCard(Landroid/os/Parcel;)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 15
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .local v1, "mActive":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "mModemId":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 80
    .local v3, "mCardType":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    .local v4, "mUniversalPinState":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 82
    .local v5, "mPinNumLeft":B
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 84
    .local v6, "mPukNumLeft":B
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "mIccId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "mCardCarrierName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, "mMCCMNC":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "mGsmOperId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "mPin1":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, "mCsimImsi":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 93
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

    .line 165
    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 166
    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    .line 167
    iput v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 168
    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 169
    iput-byte v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 170
    iput-byte v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 176
    iput v3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    .line 177
    iput v3, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    .line 178
    iput v1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    .line 183
    iput v2, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    .line 184
    return-void
.end method

.method public SlotCardInfoCdmaImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "CdmaImsi"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public SlotCardInfoGsmImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "GsmImsi"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 350
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

    .line 355
    .local v0, "cardInfo":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 320
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mModemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-byte v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 325
    iget-byte v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 327
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardCarrierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIsimImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget v0, p0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    :cond_0
    return-void
.end method
