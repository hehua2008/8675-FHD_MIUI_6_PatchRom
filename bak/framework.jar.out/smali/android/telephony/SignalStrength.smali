.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x7

.field public static final SIGNAL_STRENGTH_FLAWLESS:I = 0x6

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_PERFECT:I = 0x5

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private NUM_SIGNAL_STRENGTH_EXCEPTION:I

.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I

.field private old2GLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "perfect"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flawless"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 354
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    .line 101
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 102
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 103
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 104
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 105
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 106
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 107
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 108
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 109
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 110
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 111
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 112
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 113
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 115
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 17
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 1145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    .line 1146
    const/16 v16, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p14

    invoke-virtual/range {v2 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    .line 1149
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1150
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZI)V
    .locals 17
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z
    .param p15, "mOld2GLevel"    # I

    .prologue
    .line 1129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p14

    move/from16 v16, p15

    .line 1130
    invoke-virtual/range {v2 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    .line 1133
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1134
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    .line 152
    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    .line 155
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZI)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "mOld2GLevel"    # I

    .prologue
    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    .line 1115
    invoke-virtual/range {p0 .. p14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    .line 1118
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    .line 166
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    .line 169
    return-void
.end method

.method public constructor <init>(IIIIIIIZI)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z
    .param p9, "mOld2GLevel"    # I

    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    .line 1161
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    .line 1164
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size of signalstrength parcel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->old2GLevel:I

    .line 291
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    .line 179
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    .line 126
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 127
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 128
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 129
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 130
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 131
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 132
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 133
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 134
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 135
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 136
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 137
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 138
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 139
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 140
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1094
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of signalstrength parcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 303
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 304
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 305
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 306
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 307
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 308
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 309
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 310
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 311
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 312
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 313
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 314
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 315
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 316
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 317
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 318
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 90
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 91
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 92
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1049
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1050
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1051
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1052
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1053
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1054
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1055
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1056
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1057
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1058
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1059
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1060
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1061
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1062
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1063
    const-string v0, "Old2GLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->old2GLevel:I

    .line 1064
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 251
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 252
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 253
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 254
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 255
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 256
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 257
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 258
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 259
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 260
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 261
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 262
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 263
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 264
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 265
    iget v0, p1, Landroid/telephony/SignalStrength;->old2GLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->old2GLevel:I

    .line 266
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 994
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1003
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 995
    :catch_0
    move-exception v1

    .line 996
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1003
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1073
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1074
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1075
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1076
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1077
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1080
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1081
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1082
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1083
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1084
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1085
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1086
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1087
    const-string v0, "Old2GLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->old2GLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1088
    return-void
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    .line 535
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 536
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 537
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 559
    .local v0, "asuLevel":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 560
    return v0

    .line 540
    .end local v0    # "asuLevel":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 543
    .end local v0    # "asuLevel":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 546
    .end local v0    # "asuLevel":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 547
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 548
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_3

    .line 550
    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 551
    .end local v0    # "asuLevel":I
    :cond_3
    if-nez v1, :cond_4

    .line 553
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 556
    .end local v0    # "asuLevel":I
    :cond_4
    if-ge v1, v2, :cond_5

    move v0, v1

    .restart local v0    # "asuLevel":I
    :goto_1
    goto :goto_0

    .end local v0    # "asuLevel":I
    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 764
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 765
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 769
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 777
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 784
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 785
    .local v4, "level":I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 786
    return v4

    .line 770
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 771
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 772
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 773
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 774
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 778
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 779
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 780
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 781
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 782
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 784
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 13

    .prologue
    const/16 v12, -0x5f

    const/16 v11, -0x6e

    const/16 v10, -0x82

    const/16 v9, -0x96

    const/16 v8, -0x5a

    .line 689
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 690
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 694
    .local v1, "cdmaEcio":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getOld2GLevel()I

    move-result v5

    .line 696
    .local v5, "oldLevel":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->fiveOrFourLevelForSignal()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_d

    .line 697
    const/16 v6, -0x4b

    if-lt v0, v6, :cond_1

    const/4 v3, 0x6

    .line 706
    .local v3, "levelDbm":I
    :goto_0
    if-lt v1, v8, :cond_7

    const/4 v4, 0x6

    .line 743
    .local v4, "levelEcio":I
    :goto_1
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 744
    move v2, v3

    .line 749
    .local v2, "level":I
    :goto_2
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v6

    if-nez v6, :cond_0

    sub-int v6, v5, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    iget-boolean v6, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-nez v6, :cond_0

    .line 751
    add-int/lit8 v2, v5, -0x1

    .line 754
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldCdmaLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 755
    return v2

    .line 698
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_1
    const/16 v6, -0x55

    if-lt v0, v6, :cond_2

    const/4 v3, 0x5

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 699
    .end local v3    # "levelDbm":I
    :cond_2
    if-lt v0, v8, :cond_3

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 700
    .end local v3    # "levelDbm":I
    :cond_3
    if-lt v0, v12, :cond_4

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 701
    .end local v3    # "levelDbm":I
    :cond_4
    const/16 v6, -0x64

    if-lt v0, v6, :cond_5

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 702
    .end local v3    # "levelDbm":I
    :cond_5
    const/16 v6, -0x69

    if-lt v0, v6, :cond_6

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 703
    .end local v3    # "levelDbm":I
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 707
    :cond_7
    if-lt v1, v11, :cond_8

    const/4 v4, 0x5

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 708
    .end local v4    # "levelEcio":I
    :cond_8
    const/16 v6, -0x78

    if-lt v1, v6, :cond_9

    const/4 v4, 0x4

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 709
    .end local v4    # "levelEcio":I
    :cond_9
    if-lt v1, v10, :cond_a

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 710
    .end local v4    # "levelEcio":I
    :cond_a
    const/16 v6, -0x8c

    if-lt v1, v6, :cond_b

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 711
    .end local v4    # "levelEcio":I
    :cond_b
    if-lt v1, v9, :cond_c

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 712
    .end local v4    # "levelEcio":I
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 713
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_d
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->fiveOrFourLevelForSignal()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_18

    .line 714
    const/16 v6, -0x55

    if-lt v0, v6, :cond_e

    const/4 v3, 0x5

    .line 722
    .restart local v3    # "levelDbm":I
    :goto_3
    if-lt v1, v8, :cond_13

    const/4 v4, 0x5

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 715
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_e
    if-lt v0, v12, :cond_f

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_3

    .line 716
    .end local v3    # "levelDbm":I
    :cond_f
    const/16 v6, -0x66

    if-lt v0, v6, :cond_10

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_3

    .line 717
    .end local v3    # "levelDbm":I
    :cond_10
    const/16 v6, -0x6c

    if-lt v0, v6, :cond_11

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_3

    .line 718
    .end local v3    # "levelDbm":I
    :cond_11
    const/16 v6, -0x72

    if-lt v0, v6, :cond_12

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_3

    .line 719
    .end local v3    # "levelDbm":I
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_3

    .line 723
    :cond_13
    if-lt v1, v11, :cond_14

    const/4 v4, 0x4

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 724
    .end local v4    # "levelEcio":I
    :cond_14
    if-lt v1, v10, :cond_15

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 725
    .end local v4    # "levelEcio":I
    :cond_15
    if-lt v1, v9, :cond_16

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 726
    .end local v4    # "levelEcio":I
    :cond_16
    const/16 v6, -0xaa

    if-lt v1, v6, :cond_17

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 727
    .end local v4    # "levelEcio":I
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 729
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_18
    const/16 v6, -0x55

    if-lt v0, v6, :cond_19

    const/4 v3, 0x4

    .line 736
    .restart local v3    # "levelDbm":I
    :goto_4
    if-lt v1, v8, :cond_1d

    const/4 v4, 0x4

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 730
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_19
    if-lt v0, v12, :cond_1a

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_4

    .line 731
    .end local v3    # "levelDbm":I
    :cond_1a
    const/16 v6, -0x66

    if-lt v0, v6, :cond_1b

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_4

    .line 732
    .end local v3    # "levelDbm":I
    :cond_1b
    const/16 v6, -0x6c

    if-lt v0, v6, :cond_1c

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_4

    .line 733
    .end local v3    # "levelDbm":I
    :cond_1c
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_4

    .line 737
    :cond_1d
    if-lt v1, v11, :cond_1e

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 738
    .end local v4    # "levelEcio":I
    :cond_1e
    if-lt v1, v10, :cond_1f

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 739
    .end local v4    # "levelEcio":I
    :cond_1f
    if-lt v1, v9, :cond_20

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 740
    .end local v4    # "levelEcio":I
    :cond_20
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 746
    :cond_21
    if-ge v3, v4, :cond_22

    move v2, v3

    .restart local v2    # "level":I
    :goto_5
    goto/16 :goto_2

    .end local v2    # "level":I
    :cond_22
    move v2, v4

    goto :goto_5
.end method

.method public getDbm()I
    .locals 6

    .prologue
    const/16 v5, -0x78

    .line 571
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 572
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_2

    .line 573
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 574
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 588
    .local v1, "dBm":I
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_EXCEPTION:I

    if-ne v3, v1, :cond_7

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_7

    .line 590
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 591
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 593
    .local v2, "evdoDbm":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUM_SIGNAL_STRENGTH_EXCEPTION cdmaDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " evdoDbm ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 594
    if-ne v2, v5, :cond_5

    .line 598
    .end local v0    # "cdmaDbm":I
    .end local v1    # "dBm":I
    .end local v2    # "evdoDbm":I
    :cond_0
    :goto_1
    return v0

    .line 576
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .restart local v1    # "dBm":I
    goto :goto_0

    .line 579
    .end local v1    # "dBm":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .restart local v1    # "dBm":I
    goto :goto_0

    .line 582
    .end local v1    # "dBm":I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 583
    .restart local v0    # "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 585
    .restart local v2    # "evdoDbm":I
    if-eq v2, v5, :cond_0

    if-ne v0, v5, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lt v0, v2, :cond_0

    move v0, v2

    goto :goto_1

    .line 594
    .restart local v1    # "dBm":I
    :cond_5
    if-ne v0, v5, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    if-lt v0, v2, :cond_0

    move v0, v2

    goto :goto_1

    .line 597
    .end local v0    # "cdmaDbm":I
    .end local v2    # "evdoDbm":I
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 598
    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 7

    .prologue
    .line 849
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 850
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 854
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 861
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 868
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 869
    .local v2, "level":I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 870
    return v2

    .line 855
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 856
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 857
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 858
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 859
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 862
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 863
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 864
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 865
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 866
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 868
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 11

    .prologue
    const/16 v10, -0x55

    const/16 v9, -0x5f

    const/16 v8, -0x66

    const/16 v7, -0x6c

    const/4 v6, 0x5

    .line 795
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 796
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 801
    .local v1, "evdoSnr":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->fiveOrFourLevelForSignal()I

    move-result v5

    if-ne v5, v6, :cond_a

    .line 802
    if-lt v0, v10, :cond_0

    const/4 v3, 0x5

    .line 809
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/4 v4, 0x5

    .line 830
    .local v4, "levelEvdoSnr":I
    :goto_1
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 832
    move v2, v3

    .line 839
    .local v2, "level":I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 840
    return v2

    .line 803
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    if-lt v0, v9, :cond_1

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 804
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    if-lt v0, v8, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 805
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    if-lt v0, v7, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 806
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x72

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 807
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 810
    :cond_5
    if-lt v1, v6, :cond_6

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 811
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x3

    if-lt v1, v5, :cond_7

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 812
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x1

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 813
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    if-ltz v1, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 814
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 816
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_a
    if-lt v0, v10, :cond_b

    const/4 v3, 0x4

    .line 822
    .restart local v3    # "levelEvdoDbm":I
    :goto_3
    const/4 v5, 0x7

    if-lt v1, v5, :cond_f

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 817
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_b
    if-lt v0, v9, :cond_c

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_3

    .line 818
    .end local v3    # "levelEvdoDbm":I
    :cond_c
    if-lt v0, v8, :cond_d

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_3

    .line 819
    .end local v3    # "levelEvdoDbm":I
    :cond_d
    if-lt v0, v7, :cond_e

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_3

    .line 820
    .end local v3    # "levelEvdoDbm":I
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_3

    .line 823
    :cond_f
    if-lt v1, v6, :cond_10

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 824
    .end local v4    # "levelEvdoSnr":I
    :cond_10
    const/4 v5, 0x3

    if-lt v1, v5, :cond_11

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 825
    .end local v4    # "levelEvdoSnr":I
    :cond_11
    const/4 v5, 0x1

    if-lt v1, v5, :cond_12

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 826
    .end local v4    # "levelEvdoSnr":I
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 836
    :cond_13
    if-ge v3, v4, :cond_14

    move v2, v3

    .restart local v2    # "level":I
    :goto_4
    goto :goto_2

    .end local v2    # "level":I
    :cond_14
    move v2, v4

    goto :goto_4
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 3

    .prologue
    .line 678
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 679
    .local v0, "level":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGsmAsuLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 680
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 609
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 610
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-eq v2, v4, :cond_0

    const/16 v4, 0xc7

    if-ne v2, v4, :cond_1

    :cond_0
    move v0, v3

    .line 611
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_3

    .line 612
    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    .line 613
    add-int/lit8 v3, v0, -0x64

    add-int/lit8 v1, v3, -0x74

    .line 621
    .local v1, "dBm":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 622
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_1
    move v0, v2

    .line 610
    goto :goto_0

    .line 615
    .restart local v0    # "asu":I
    :cond_2
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .restart local v1    # "dBm":I
    goto :goto_1

    .line 619
    .end local v1    # "dBm":I
    :cond_3
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/16 v7, 0x63

    const/16 v6, 0xc

    const/16 v5, 0x8

    const/4 v4, 0x5

    .line 637
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 638
    .local v0, "asu":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getOld2GLevel()I

    move-result v2

    .line 639
    .local v2, "oldLevel":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->fiveOrFourLevelForSignal()I

    move-result v3

    if-ne v3, v4, :cond_d

    .line 640
    if-ge v0, v8, :cond_6

    .line 641
    if-lez v0, :cond_0

    if-ne v0, v7, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 663
    .local v1, "level":I
    :goto_0
    invoke-static {}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->getDefault()Lcom/yulong/android/telephony/CPSignalStrengthEx;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-virtual {v3, v1, v2, v4}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->smoothGsmSignalStrength(IIZ)I

    move-result v1

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldGsmLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 665
    return v1

    .line 642
    .end local v1    # "level":I
    :cond_1
    const/16 v3, 0xf

    if-lt v0, v3, :cond_2

    const/4 v1, 0x5

    .restart local v1    # "level":I
    goto :goto_0

    .line 643
    .end local v1    # "level":I
    :cond_2
    if-lt v0, v6, :cond_3

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 644
    .end local v1    # "level":I
    :cond_3
    const/16 v3, 0xa

    if-lt v0, v3, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 645
    .end local v1    # "level":I
    :cond_4
    if-lt v0, v5, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 646
    .end local v1    # "level":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0

    .line 648
    .end local v1    # "level":I
    :cond_6
    if-le v0, v8, :cond_7

    const/16 v3, 0xc7

    if-ne v0, v3, :cond_8

    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "level":I
    goto :goto_0

    .line 649
    .end local v1    # "level":I
    :cond_8
    const/16 v3, 0x8d

    if-lt v0, v3, :cond_9

    const/4 v1, 0x5

    .restart local v1    # "level":I
    goto :goto_0

    .line 650
    .end local v1    # "level":I
    :cond_9
    const/16 v3, 0x83

    if-lt v0, v3, :cond_a

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 651
    .end local v1    # "level":I
    :cond_a
    const/16 v3, 0x79

    if-lt v0, v3, :cond_b

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 652
    .end local v1    # "level":I
    :cond_b
    const/16 v3, 0x6f

    if-lt v0, v3, :cond_c

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 653
    .end local v1    # "level":I
    :cond_c
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0

    .line 657
    .end local v1    # "level":I
    :cond_d
    if-eqz v0, :cond_e

    if-ne v0, v7, :cond_f

    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "level":I
    goto :goto_0

    .line 658
    .end local v1    # "level":I
    :cond_f
    if-lt v0, v6, :cond_10

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 659
    .end local v1    # "level":I
    :cond_10
    if-lt v0, v5, :cond_11

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 660
    .end local v1    # "level":I
    :cond_11
    if-lt v0, v4, :cond_12

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 661
    .end local v1    # "level":I
    :cond_12
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 5

    .prologue
    .line 497
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 498
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 499
    .local v2, "level":I
    if-nez v2, :cond_0

    .line 500
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    .line 501
    if-nez v2, :cond_0

    .line 502
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 524
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 525
    return v2

    .line 506
    .end local v2    # "level":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 507
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 508
    .local v1, "evdoLevel":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    .line 509
    move v2, v0

    .restart local v2    # "level":I
    goto :goto_0

    .line 511
    .end local v2    # "level":I
    :cond_2
    if-nez v1, :cond_3

    .line 513
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    .restart local v2    # "level":I
    goto :goto_0

    .line 514
    .end local v2    # "level":I
    :cond_3
    if-nez v0, :cond_4

    .line 516
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    .restart local v2    # "level":I
    goto :goto_0

    .line 519
    .end local v2    # "level":I
    :cond_4
    if-ge v0, v1, :cond_5

    move v2, v0

    .restart local v2    # "level":I
    :goto_1
    goto :goto_0

    .end local v2    # "level":I
    :cond_5
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 4

    .prologue
    .line 943
    const/16 v0, 0x63

    .line 944
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 958
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 960
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 961
    return v0

    .line 959
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 11

    .prologue
    const/16 v10, -0x73

    const/16 v9, -0x78

    const/16 v8, -0x8c

    const/4 v7, -0x1

    const v6, 0x7fffffff

    .line 889
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->fiveOrFourLevelForSignal()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 890
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevelEx()I

    move-result v0

    .local v0, "level":I
    move v1, v0

    .line 931
    .end local v0    # "level":I
    .local v1, "level":I
    :goto_0
    return v1

    .line 893
    .end local v1    # "level":I
    :cond_0
    const/4 v2, 0x0

    .line 894
    .local v2, "levelLteRsrp":I
    const/4 v3, 0x0

    .line 896
    .local v3, "levelLteRssnr":I
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_b

    .line 899
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-eq v4, v7, :cond_2

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v6, v4, :cond_5

    :cond_2
    const/4 v2, 0x0

    .line 916
    :cond_3
    :goto_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v6, :cond_12

    const/4 v3, 0x0

    .line 923
    :goto_2
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-eq v4, v7, :cond_4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v6, v4, :cond_17

    .line 924
    :cond_4
    move v0, v3

    .line 929
    .restart local v0    # "level":I
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lte rsrp level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " snr level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v1, v0

    .line 931
    .end local v0    # "level":I
    .restart local v1    # "level":I
    goto :goto_0

    .line 900
    .end local v1    # "level":I
    :cond_5
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x61

    if-lt v4, v5, :cond_6

    const/4 v2, 0x5

    goto :goto_1

    .line 901
    :cond_6
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x69

    if-lt v4, v5, :cond_7

    const/4 v2, 0x4

    goto :goto_1

    .line 902
    :cond_7
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x6e

    if-lt v4, v5, :cond_8

    const/4 v2, 0x3

    goto :goto_1

    .line 903
    :cond_8
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v4, v10, :cond_9

    const/4 v2, 0x2

    goto :goto_1

    .line 904
    :cond_9
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v4, v9, :cond_a

    const/4 v2, 0x1

    goto :goto_1

    .line 905
    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v4, v8, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 908
    :cond_b
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-eq v4, v7, :cond_c

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v6, v4, :cond_d

    :cond_c
    const/4 v2, 0x0

    goto :goto_1

    .line 909
    :cond_d
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x5f

    if-lt v4, v5, :cond_e

    const/4 v2, 0x5

    goto :goto_1

    .line 910
    :cond_e
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x69

    if-lt v4, v5, :cond_f

    const/4 v2, 0x4

    goto :goto_1

    .line 911
    :cond_f
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v4, v10, :cond_10

    const/4 v2, 0x3

    goto/16 :goto_1

    .line 912
    :cond_10
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v4, v9, :cond_11

    const/4 v2, 0x2

    goto/16 :goto_1

    .line 913
    :cond_11
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v4, v8, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 917
    :cond_12
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0xfa

    if-lt v4, v5, :cond_13

    const/4 v3, 0x5

    goto/16 :goto_2

    .line 918
    :cond_13
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x96

    if-lt v4, v5, :cond_14

    const/4 v3, 0x4

    goto/16 :goto_2

    .line 919
    :cond_14
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_15

    const/4 v3, 0x3

    goto/16 :goto_2

    .line 920
    :cond_15
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x32

    if-lt v4, v5, :cond_16

    const/4 v3, 0x2

    goto/16 :goto_2

    .line 921
    :cond_16
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 926
    :cond_17
    move v0, v2

    .restart local v0    # "level":I
    goto/16 :goto_3
.end method

.method public getLteLevelEx()I
    .locals 10

    .prologue
    const/16 v9, -0x8c

    const/16 v8, 0xa

    const/16 v7, -0x2c

    const/16 v6, -0x69

    const/4 v5, -0x1

    .line 1263
    const/4 v1, 0x0

    .local v1, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v2, -0x1

    .line 1265
    .local v2, "snrIconLevel":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_8

    .line 1266
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v7, :cond_3

    const/4 v0, -0x1

    .line 1294
    :cond_0
    :goto_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    if-ne v3, v8, :cond_19

    .line 1295
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_14

    const/4 v2, -0x1

    .line 1312
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1316
    if-eq v2, v5, :cond_20

    if-eq v0, v5, :cond_20

    .line 1322
    if-ge v0, v2, :cond_1f

    .line 1337
    .end local v0    # "rsrpIconLevel":I
    :cond_2
    :goto_2
    return v0

    .line 1267
    .restart local v0    # "rsrpIconLevel":I
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x61

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 1268
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v6, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 1269
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x71

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 1270
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x78

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    .line 1271
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v9, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1272
    :cond_8
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    if-ne v3, v8, :cond_e

    .line 1273
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v7, :cond_9

    const/4 v0, -0x1

    goto :goto_0

    .line 1274
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v6, :cond_a

    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1275
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x72

    if-lt v3, v4, :cond_b

    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1276
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x76

    if-lt v3, v4, :cond_c

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1277
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x7b

    if-lt v3, v4, :cond_d

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1278
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1280
    :cond_e
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v7, :cond_f

    const/4 v0, -0x1

    goto/16 :goto_0

    .line 1281
    :cond_f
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_10

    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1282
    :cond_10
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_11

    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1283
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v6, :cond_12

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1284
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_13

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1285
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v9, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1296
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_15

    const/4 v2, 0x4

    goto/16 :goto_1

    .line 1297
    :cond_15
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_16

    const/4 v2, 0x3

    goto/16 :goto_1

    .line 1298
    :cond_16
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/4 v4, -0x3

    if-lt v3, v4, :cond_17

    const/4 v2, 0x2

    goto/16 :goto_1

    .line 1299
    :cond_17
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/4 v4, -0x5

    if-lt v3, v4, :cond_18

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1301
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1303
    :cond_19
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_1a

    const/4 v2, -0x1

    goto/16 :goto_1

    .line 1304
    :cond_1a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_1b

    const/4 v2, 0x4

    goto/16 :goto_1

    .line 1305
    :cond_1b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_1c

    const/4 v2, 0x3

    goto/16 :goto_1

    .line 1306
    :cond_1c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v3, v8, :cond_1d

    const/4 v2, 0x2

    goto/16 :goto_1

    .line 1307
    :cond_1d
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_1e

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1308
    :cond_1e
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    .line 1309
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1f
    move v0, v2

    .line 1322
    goto/16 :goto_2

    .line 1325
    :cond_20
    if-eq v2, v5, :cond_21

    move v0, v2

    goto/16 :goto_2

    .line 1327
    :cond_21
    if-ne v0, v5, :cond_2

    .line 1330
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_23

    const/4 v1, 0x0

    .line 1335
    :cond_22
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rssiIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1337
    goto/16 :goto_2

    .line 1331
    :cond_23
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_24

    const/4 v1, 0x4

    goto :goto_3

    .line 1332
    :cond_24
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_25

    const/4 v1, 0x3

    goto :goto_3

    .line 1333
    :cond_25
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_26

    const/4 v1, 0x2

    goto :goto_3

    .line 1334
    :cond_26
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_22

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getOld2GLevel()I
    .locals 1

    .prologue
    .line 1098
    iget v0, p0, Landroid/telephony/SignalStrength;->old2GLevel:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 4

    .prologue
    .line 1247
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1250
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1252
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD-SCDMA Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1253
    return v0

    .line 1251
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1171
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 5

    .prologue
    .line 1195
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v2

    .line 1198
    .local v2, "tdScdmaDbm":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->fiveOrFourLevelForSignal()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1199
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevelEx()I

    move-result v0

    .local v0, "level":I
    move v1, v0

    .line 1213
    .end local v0    # "level":I
    .local v1, "level":I
    :goto_0
    return v1

    .line 1203
    .end local v1    # "level":I
    :cond_0
    const/16 v3, -0x19

    if-gt v2, v3, :cond_1

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 1204
    :cond_1
    const/4 v0, 0x0

    .line 1212
    .restart local v0    # "level":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTdScdmaLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v1, v0

    .line 1213
    .end local v0    # "level":I
    .restart local v1    # "level":I
    goto :goto_0

    .line 1205
    .end local v1    # "level":I
    :cond_2
    const/16 v3, -0x4b

    if-lt v2, v3, :cond_3

    const/4 v0, 0x5

    .restart local v0    # "level":I
    goto :goto_1

    .line 1206
    .end local v0    # "level":I
    :cond_3
    const/16 v3, -0x55

    if-lt v2, v3, :cond_4

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_1

    .line 1207
    .end local v0    # "level":I
    :cond_4
    const/16 v3, -0x5f

    if-lt v2, v3, :cond_5

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_1

    .line 1208
    .end local v0    # "level":I
    :cond_5
    const/16 v3, -0x69

    if-lt v2, v3, :cond_6

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_1

    .line 1209
    .end local v0    # "level":I
    :cond_6
    const/16 v3, -0x74

    if-lt v2, v3, :cond_7

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_1

    .line 1210
    .end local v0    # "level":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_1
.end method

.method public getTdScdmaLevelEx()I
    .locals 4

    .prologue
    .line 1226
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1229
    .local v1, "tdScdmaDbm":I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 1230
    :cond_0
    const/4 v0, 0x0

    .line 1237
    .local v0, "level":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTdScdmaLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1238
    return v0

    .line 1231
    .end local v0    # "level":I
    :cond_1
    const/16 v2, -0x31

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1232
    .end local v0    # "level":I
    :cond_2
    const/16 v2, -0x49

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1233
    .end local v0    # "level":I
    :cond_3
    const/16 v2, -0x61

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1234
    .end local v0    # "level":I
    :cond_4
    const/16 v2, -0x78

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1235
    .end local v0    # "level":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 976
    const/16 v0, 0x1f

    .line 977
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZI)V
    .locals 3
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z
    .param p14, "mOld2GLevel"    # I

    .prologue
    .line 229
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 230
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 231
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 232
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 233
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 234
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 235
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 236
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 237
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 238
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 239
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 240
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 241
    const v1, 0x7fffffff

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 242
    move/from16 v0, p13

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 243
    move/from16 v0, p14

    iput v0, p0, Landroid/telephony/SignalStrength;->old2GLevel:I

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 200
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    .line 203
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 412
    return-void
.end method

.method public setOldGsmLevel(I)V
    .locals 0
    .param p1, "mOld2GLevel"    # I

    .prologue
    .line 1102
    iput p1, p0, Landroid/telephony/SignalStrength;->old2GLevel:I

    .line 1103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->old2GLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 6

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signal before validate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 381
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 382
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 384
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 385
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 386
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 389
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 390
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 391
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 392
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 395
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 400
    return-void

    :cond_4
    move v0, v1

    .line 378
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 381
    goto/16 :goto_1

    .line 382
    :cond_6
    const/16 v0, -0xa0

    goto/16 :goto_2

    :cond_7
    move v0, v3

    .line 385
    goto :goto_3

    :cond_8
    move v0, v4

    .line 390
    goto :goto_4

    :cond_9
    move v0, v4

    .line 391
    goto :goto_5

    :cond_a
    move v0, v4

    .line 392
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 325
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Landroid/telephony/SignalStrength;->old2GLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
