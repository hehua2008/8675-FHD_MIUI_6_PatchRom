.class public final Lcom/android/internal/telephony/InboundSmsTracker;
.super Ljava/lang/Object;
.source "InboundSmsTracker.java"


# static fields
.field private static final DEST_PORT_FLAG_3GPP:I = 0x20000

.field private static final DEST_PORT_FLAG_3GPP2:I = 0x40000

.field private static final DEST_PORT_FLAG_3GPP2_WAP_PDU:I = 0x80000

.field private static final DEST_PORT_FLAG_NO_PORT:I = 0x10000

.field private static final DEST_PORT_MASK:I = 0xffff


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mDeleteWhere:Ljava/lang/String;

.field private mDeleteWhereArgs:[Ljava/lang/String;

.field private final mDestPort:I

.field private final mIs3gpp2:Z

.field private final mIs3gpp2WapPdu:Z

.field private final mMessageCount:I

.field private mNeedDelete:Z

.field private mNetworkType:I

.field private final mPdu:[B

.field private final mReferenceNumber:I

.field private final mSequenceNumber:I

.field private final mTimestamp:J


# direct methods
.method constructor <init>(Landroid/database/Cursor;Z)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCurrentFormat3gpp2"    # Z

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNeedDelete:Z

    .line 136
    const-string v5, "pdu"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 138
    const-string v5, "destination_port"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    iput v10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 141
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 142
    iput-boolean v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 158
    :goto_0
    const-string v5, "date"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 160
    const-string v5, "count"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 164
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 166
    .local v3, "rowId":J
    const-string v5, "address"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 167
    iput v10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 169
    iput v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 170
    const-string v5, "_id=?"

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 171
    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 198
    .end local v3    # "rowId":J
    :goto_1
    return-void

    .line 145
    :cond_0
    const-string v5, "destination_port"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 146
    .local v0, "destPort":I
    const/high16 v5, 0x20000

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    .line 147
    iput-boolean v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 153
    :goto_2
    const/high16 v5, 0x80000

    and-int/2addr v5, v0

    if-eqz v5, :cond_3

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 154
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    goto :goto_0

    .line 148
    :cond_1
    const/high16 v5, 0x40000

    and-int/2addr v5, v0

    if-eqz v5, :cond_2

    .line 149
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_2

    .line 151
    :cond_2
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_2

    :cond_3
    move v5, v7

    .line 153
    goto :goto_3

    .line 180
    .end local v0    # "destPort":I
    :cond_4
    const-string v5, "address"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 181
    const-string v5, "reference_number"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 182
    const-string v5, "count"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 183
    const-string v5, "sequence"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 184
    const-string v5, "network_type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNetworkType:I

    .line 185
    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNetworkType:I

    div-int/lit8 v2, v5, 0xa

    .line 186
    .local v2, "ret":I
    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v8

    sub-int v1, v5, v8

    .line 188
    .local v1, "index":I
    if-ltz v1, :cond_5

    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    if-lt v1, v5, :cond_6

    .line 189
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid PDU sequence "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 193
    :cond_6
    const-string v5, "address=? AND reference_number=? AND count=? AND network_type IN(?,?)"

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 194
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    aput-object v8, v5, v7

    iget v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    mul-int/lit8 v7, v2, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    mul-int/lit8 v7, v2, 0xa

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public constructor <init>([BJIZLjava/lang/String;IIIZI)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "referenceNumber"    # I
    .param p8, "sequenceNumber"    # I
    .param p9, "messageCount"    # I
    .param p10, "is3gpp2WapPdu"    # Z
    .param p11, "networkType"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNeedDelete:Z

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 117
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 118
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 119
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 120
    iput-boolean p10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 122
    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 123
    iput p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 124
    iput p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 125
    iput p9, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 126
    iput p11, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNetworkType:I

    .line 127
    return-void
.end method

.method constructor <init>([BJIZLjava/lang/String;ZI)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "is3gpp2WapPdu"    # Z
    .param p8, "networkType"    # I

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNeedDelete:Z

    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 83
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 84
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 85
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 86
    iput-boolean p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 89
    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 92
    iput v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 93
    iput p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNetworkType:I

    .line 94
    return-void
.end method

.method static getRealDestPort(I)I
    .locals 1
    .param p0, "destPort"    # I

    .prologue
    .line 237
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, -0x1

    .line 240
    :goto_0
    return v0

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p0

    goto :goto_0
.end method


# virtual methods
.method getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method getContentValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 201
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "pdu"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "date"

    iget-wide v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 208
    const/high16 v0, 0x10000

    .line 212
    .local v0, "destPort":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v2, :cond_3

    .line 213
    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 217
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v2, :cond_0

    .line 218
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 220
    :cond_0
    const-string v2, "destination_port"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 222
    const-string v2, "address"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v2, "reference_number"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string v2, "sequence"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v2, "count"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    :cond_1
    const-string v2, "network_type"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNetworkType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    return-object v1

    .line 210
    .end local v0    # "destPort":I
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    const v3, 0xffff

    and-int v0, v2, v3

    .restart local v0    # "destPort":I
    goto :goto_0

    .line 215
    :cond_3
    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    goto :goto_1
.end method

.method getDeleteWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    return-object v0
.end method

.method getDeleteWhereArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    return-object v0
.end method

.method getDestPort()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    return v0
.end method

.method getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_0

    const-string v0, "3gpp2"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "3gpp"

    goto :goto_0
.end method

.method getIndexOffset()I
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getMessageCount()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    return v0
.end method

.method getNeedDelete()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNeedDelete:Z

    return v0
.end method

.method getNetworkType()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNetworkType:I

    return v0
.end method

.method getPdu()[B
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    return-object v0
.end method

.method getReferenceNumber()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    return v0
.end method

.method getSequenceNumber()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    return v0
.end method

.method getSmsStatusOnIcc()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNetworkType:I

    rem-int/lit8 v0, v0, 0xa

    return v0
.end method

.method getTimestamp()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    return-wide v0
.end method

.method is3gpp2()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    return v0
.end method

.method setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 251
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 252
    return-void
.end method

.method setNeedDelete(Z)V
    .locals 0
    .param p1, "isNeedDelete"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNeedDelete:Z

    .line 339
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsTracker{timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, " destPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, " is3gpp2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 260
    const-string v1, " address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, " refNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, " seqNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, " msgCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 266
    const-string v1, " deleteWhere("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, ") deleteArgs=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    :cond_1
    const-string v1, " networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, " needDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mNeedDelete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 272
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
