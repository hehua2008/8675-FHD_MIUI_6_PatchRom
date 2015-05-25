.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field AdnGrpIndex:[I

.field additionalNumbers:[Ljava/lang/String;

.field additionalNumbersNameIndex:[I

.field mAlphaTag:Ljava/lang/String;

.field mEfid:I

.field mEmails:[Ljava/lang/String;

.field mExtRecord:I

.field mNumber:Ljava/lang/String;

.field mRecordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbersNameIndex:[I

    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbers:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->AdnGrpIndex:[I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbersNameIndex:[I

    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbers:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->AdnGrpIndex:[I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "additionalNumbers"    # [Ljava/lang/String;
    .param p7, "AdnGrpIndex"    # [I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbersNameIndex:[I

    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbers:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->AdnGrpIndex:[I

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbersNameIndex:[I

    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    return-void
.end method

.method public constructor <init>(II[BI)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B
    .param p4, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbersNameIndex:[I

    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbers:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->AdnGrpIndex:[I

    const-string v0, "AdnRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdnRecord recordNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p3

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecordEx([B)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    return-void
.end method

.method private parseRecord([B)V
    .locals 8
    .param p1, "record"    # [B

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x16

    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v4, 0x0

    :try_start_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0xe

    invoke-static {p1, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    array-length v4, p1

    add-int/lit8 v1, v4, -0xe

    .local v1, "footerOffset":I
    aget-byte v4, p1, v1

    and-int/lit16 v3, v4, 0xff

    .local v3, "numberLength":I
    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0xd

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    aget-byte v4, p1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    :cond_0
    sub-int v4, v2, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    const/16 v4, 0xb

    if-le v3, v4, :cond_4

    if-ge v3, v6, :cond_4

    const-string v4, "AdnRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseRecord numberLength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v3, 0x9

    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const-string v4, "AdnRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseRecord extRecord = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .end local v1    # "footerOffset":I
    .end local v3    # "numberLength":I
    :goto_1
    return-void

    .restart local v1    # "footerOffset":I
    .restart local v3    # "numberLength":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-lt v3, v6, :cond_2

    const-string v4, "AdnRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseRecord Invalid number length numberLength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1    # "footerOffset":I
    .end local v3    # "numberLength":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "AdnRecord"

    const-string v5, "Error parsing AdnRecord"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    goto :goto_1
.end method

.method private parseRecordEx([B)V
    .locals 8
    .param p1, "record"    # [B

    .prologue
    const/16 v7, 0xff

    const/4 v5, 0x0

    const/16 v6, 0xe

    :try_start_0
    invoke-static {p1, v5, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const/4 v4, 0x0

    .local v4, "telNumCount":I
    const/16 v2, 0xe

    .local v2, "footerOffset":I
    aget-byte v5, p1, v2

    and-int/lit16 v3, v5, 0xff

    .local v3, "numberLength":I
    const/16 v5, 0x16

    if-le v3, v5, :cond_0

    if-eq v3, v7, :cond_0

    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .end local v2    # "footerOffset":I
    .end local v3    # "numberLength":I
    .end local v4    # "telNumCount":I
    :goto_0
    return-void

    .restart local v2    # "footerOffset":I
    .restart local v3    # "numberLength":I
    .restart local v4    # "telNumCount":I
    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v7, :cond_1

    const/16 v5, 0xf

    invoke-static {p1, v5, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    add-int/lit8 v5, v3, 0xe

    add-int/lit8 v2, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    :goto_1
    aget-byte v5, p1, v2

    and-int/lit16 v3, v5, 0xff

    const/4 v0, 0x0

    .local v0, "emailLength":I
    if-lez v3, :cond_2

    if-ge v3, v7, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-static {p1, v6, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    add-int v5, v2, v3

    add-int/lit8 v2, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    :goto_2
    aget-byte v5, p1, v2

    and-int/lit16 v0, v5, 0xff

    if-lez v0, :cond_3

    if-ge v0, v7, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-static {p1, v6, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    :goto_3
    if-nez v4, :cond_4

    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "emailLength":I
    .end local v2    # "footerOffset":I
    .end local v3    # "numberLength":I
    .end local v4    # "telNumCount":I
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v5, "AdnRecord"

    const-string v6, "Error parsing AdnRecord"

    invoke-static {v5, v6, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    goto/16 :goto_0

    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "footerOffset":I
    .restart local v3    # "numberLength":I
    .restart local v4    # "telNumCount":I
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .restart local v0    # "emailLength":I
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v5, "AdnRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " eL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    .prologue
    const/4 v3, 0x2

    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 12
    .param p1, "recordSize"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "adnString":[B
    add-int/lit8 v5, p1, -0xe

    .local v5, "footerOffset":I
    const-string v9, "AdnRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enter buildAdnString recordSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    if-nez v9, :cond_0

    const-string v9, "AdnRecord"

    const-string v10, "number = null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ""

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v9, :cond_1

    const-string v9, "AdnRecord"

    const-string v10, "alphaTag = null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ""

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x14

    if-le v9, v10, :cond_3

    const-string v9, "AdnRecord"

    const-string v10, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string v9, "AdnRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exit buildAdnString adnString = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v0

    :goto_1
    return-object v9

    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v5, :cond_4

    const-string v9, "AdnRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[buildAdnString] Max length of tag is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-array v0, p1, [B

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, p1, :cond_5

    const/4 v9, -0x1

    aput-byte v9, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "bcdNumber":[B
    const/4 v9, 0x0

    add-int/lit8 v10, v5, 0x1

    array-length v11, v1

    invoke-static {v1, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v5, 0x0

    array-length v10, v1

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    add-int/lit8 v9, v5, 0xc

    const/4 v10, -0x1

    aput-byte v10, v0, v9

    add-int/lit8 v9, v5, 0xd

    const/4 v10, -0x1

    aput-byte v10, v0, v9

    .end local v1    # "bcdNumber":[B
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, "byteTag":[B
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v2, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v2    # "byteTag":[B
    :catch_0
    move-exception v4

    .local v4, "ex":Lcom/android/internal/telephony/EncodeException;
    const/4 v9, 0x1

    new-array v6, v9, [B

    .local v6, "header":[B
    const/4 v9, 0x0

    const/16 v10, -0x80

    aput-byte v10, v6, v9

    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v10, "utf-16be"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .local v3, "data":[B
    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [B

    .restart local v2    # "byteTag":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v6, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    array-length v11, v3

    invoke-static {v3, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .end local v2    # "byteTag":[B
    .end local v3    # "data":[B
    :catch_1
    move-exception v8

    .local v8, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v9, "AdnRecord"

    const-string v10, "exit  buildAdnString null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIndex()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->AdnGrpIndex:[I

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdditionalNumbers([Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalNumbers"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-void
.end method

.method public setGroupIndex([I)V
    .locals 0
    .param p1, "AdnGrpIndex"    # [I

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->AdnGrpIndex:[I

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumbers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->AdnGrpIndex:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->AdnGrpIndex:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->AdnGrpIndex:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->AdnGrpIndex:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
