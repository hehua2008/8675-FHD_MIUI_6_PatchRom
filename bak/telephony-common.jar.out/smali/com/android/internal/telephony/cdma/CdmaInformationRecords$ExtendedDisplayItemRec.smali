.class public Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedDisplayItemRec"
.end annotation


# instance fields
.field private final INFO_CHARSET:Ljava/lang/String;

.field public displayTag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field private mData:[B

.field private mLen:B


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B)V
    .locals 1
    .param p1, "tag"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    .param p2, "len"    # B

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-string v0, "US-ASCII"

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->INFO_CHARSET:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->init(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B[B)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B[B)V
    .locals 1
    .param p1, "tag"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    .param p2, "len"    # B
    .param p3, "data"    # [B

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-string v0, "US-ASCII"

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->INFO_CHARSET:Ljava/lang/String;

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->init(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B[B)V

    .line 144
    return-void
.end method

.method private init(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B[B)V
    .locals 0
    .param p1, "tag"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    .param p2, "len"    # B
    .param p3, "data"    # [B

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->displayTag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 150
    iput-byte p2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mLen:B

    .line 151
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mData:[B

    .line 152
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mData:[B

    return-object v0
.end method

.method public getDataAsString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 157
    const/4 v4, 0x0

    .line 158
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "CdmaDisplayInfoRec"

    const-string v6, "getDataAsString()"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mData:[B

    if-nez v5, :cond_0

    const-string v5, ""

    .line 168
    :goto_0
    return-object v5

    .line 160
    :cond_0
    const-string v5, "US-ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 161
    .local v1, "chs":Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 162
    .local v2, "d":Ljava/nio/charset/CharsetDecoder;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mData:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    .local v0, "b":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    move-object v5, v4

    .line 168
    goto :goto_0

    .line 165
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Ljava/nio/charset/CharacterCodingException;
    const-string v5, "CdmaDisplayInfoRec"

    const-string v6, "Error decoding"

    invoke-static {v5, v6, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    const-string v0, ""

    .line 173
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->displayTag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->mLen:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->getDataAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method
