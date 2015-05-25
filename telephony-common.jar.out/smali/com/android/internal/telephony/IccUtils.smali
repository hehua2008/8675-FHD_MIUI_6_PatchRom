.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"

.field private static hexString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 684
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/android/internal/telephony/IccUtils;->hexString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HexToChar(I)C
    .locals 1
    .param p0, "data"    # I

    .prologue
    const/16 v0, 0x30

    .line 583
    packed-switch p0, :pswitch_data_0

    .line 618
    :goto_0
    :pswitch_0
    return v0

    .line 588
    :pswitch_1
    const/16 v0, 0x31

    goto :goto_0

    .line 590
    :pswitch_2
    const/16 v0, 0x32

    goto :goto_0

    .line 592
    :pswitch_3
    const/16 v0, 0x33

    goto :goto_0

    .line 594
    :pswitch_4
    const/16 v0, 0x34

    goto :goto_0

    .line 596
    :pswitch_5
    const/16 v0, 0x35

    goto :goto_0

    .line 598
    :pswitch_6
    const/16 v0, 0x36

    goto :goto_0

    .line 600
    :pswitch_7
    const/16 v0, 0x37

    goto :goto_0

    .line 602
    :pswitch_8
    const/16 v0, 0x38

    goto :goto_0

    .line 604
    :pswitch_9
    const/16 v0, 0x39

    goto :goto_0

    .line 606
    :pswitch_a
    const/16 v0, 0x41

    goto :goto_0

    .line 608
    :pswitch_b
    const/16 v0, 0x42

    goto :goto_0

    .line 610
    :pswitch_c
    const/16 v0, 0x43

    goto :goto_0

    .line 612
    :pswitch_d
    const/16 v0, 0x44

    goto :goto_0

    .line 614
    :pswitch_e
    const/16 v0, 0x45

    goto :goto_0

    .line 616
    :pswitch_f
    const/16 v0, 0x46

    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 177
    if-nez p2, :cond_1

    .line 178
    const-string v0, ""

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 180
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 182
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 541
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static adnStringFieldToStringKsc5601Support([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 633
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 636
    invoke-static {}, Lcom/android/internal/telephony/SimRegionCache;->getRegion()I

    move-result v4

    const/16 v5, 0x1c2

    if-ne v4, v5, :cond_2

    .line 638
    move v1, p1

    .line 639
    .local v1, "len":I
    const/4 v3, -0x1

    .line 640
    .local v3, "stop":B
    :goto_0
    if-ge v1, p2, :cond_0

    :try_start_0
    aget-byte v4, p0, v1

    if-eq v4, v3, :cond_0

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    :cond_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "s":Ljava/lang/String;
    const-string v4, "KSC5601"

    invoke-direct {v2, p0, p1, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v1    # "len":I
    .end local v3    # "stop":B
    :cond_1
    :goto_1
    return-object v2

    .line 644
    .restart local v1    # "len":I
    .restart local v3    # "stop":B
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "len":I
    .end local v3    # "stop":B
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 189
    const/4 v10, 0x1

    if-lt p2, v10, :cond_1

    .line 190
    aget-byte v10, p0, p1

    const/16 v11, -0x80

    if-ne v10, v11, :cond_1

    .line 191
    add-int/lit8 v10, p2, -0x1

    div-int/lit8 v9, v10, 0x2

    .line 192
    .local v9, "ucslen":I
    const/4 v7, 0x0

    .line 195
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v10, p1, 0x1

    mul-int/lit8 v11, v9, 0x2

    const-string v12, "utf-16be"

    invoke-direct {v8, p0, v10, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "ret":Ljava/lang/String;
    .local v8, "ret":Ljava/lang/String;
    move-object v7, v8

    .line 201
    .end local v8    # "ret":Ljava/lang/String;
    .restart local v7    # "ret":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_1

    .line 204
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 205
    :goto_1
    if-lez v9, :cond_0

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v11, 0xffff

    if-ne v10, v11, :cond_0

    .line 206
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 196
    :catch_0
    move-exception v3

    .line 197
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v10, "IccUtils"

    const-string v11, "implausible UnsupportedEncodingException"

    invoke-static {v10, v11, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 272
    .end local v7    # "ret":Ljava/lang/String;
    .end local v9    # "ucslen":I
    :goto_2
    return-object v10

    .line 213
    :cond_1
    const/4 v4, 0x0

    .line 214
    .local v4, "isucs2":Z
    const/4 v0, 0x0

    .line 215
    .local v0, "base":C
    const/4 v5, 0x0

    .line 217
    .local v5, "len":I
    const/4 v10, 0x3

    if-lt p2, v10, :cond_5

    aget-byte v10, p0, p1

    const/16 v11, -0x7f

    if-ne v10, v11, :cond_5

    .line 218
    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 219
    add-int/lit8 v10, p2, -0x3

    if-le v5, v10, :cond_2

    .line 220
    add-int/lit8 v5, p2, -0x3

    .line 222
    :cond_2
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x7

    int-to-char v0, v10

    .line 223
    add-int/lit8 p1, p1, 0x3

    .line 224
    const/4 v4, 0x1

    .line 236
    :cond_3
    :goto_3
    if-eqz v4, :cond_9

    .line 237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v7, "ret":Ljava/lang/StringBuilder;
    :goto_4
    if-lez v5, :cond_8

    .line 242
    aget-byte v10, p0, p1

    if-gez v10, :cond_4

    .line 243
    aget-byte v10, p0, p1

    and-int/lit8 v10, v10, 0x7f

    add-int/2addr v10, v0

    int-to-char v10, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 p1, p1, 0x1

    .line 245
    add-int/lit8 v5, v5, -0x1

    .line 250
    :cond_4
    const/4 v1, 0x0

    .line 251
    .local v1, "count":I
    :goto_5
    if-ge v1, v5, :cond_7

    add-int v10, p1, v1

    aget-byte v10, p0, v10

    if-ltz v10, :cond_7

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 225
    .end local v1    # "count":I
    .end local v7    # "ret":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v10, 0x4

    if-lt p2, v10, :cond_3

    aget-byte v10, p0, p1

    const/16 v11, -0x7e

    if-ne v10, v11, :cond_3

    .line 226
    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 227
    add-int/lit8 v10, p2, -0x4

    if-le v5, v10, :cond_6

    .line 228
    add-int/lit8 v5, p2, -0x4

    .line 230
    :cond_6
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, p1, 0x3

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    int-to-char v0, v10

    .line 232
    add-int/lit8 p1, p1, 0x4

    .line 233
    const/4 v4, 0x1

    goto :goto_3

    .line 254
    .restart local v1    # "count":I
    .restart local v7    # "ret":Ljava/lang/StringBuilder;
    :cond_7
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/2addr p1, v1

    .line 258
    sub-int/2addr v5, v1

    .line 259
    goto :goto_4

    .line 261
    .end local v1    # "count":I
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 264
    .end local v7    # "ret":Ljava/lang/StringBuilder;
    :cond_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 265
    .local v6, "resource":Landroid/content/res/Resources;
    const-string v2, ""

    .line 267
    .local v2, "defaultCharset":Ljava/lang/String;
    const v10, 0x1040028

    :try_start_1
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 272
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, p1, p2, v10}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 269
    :catch_1
    move-exception v10

    goto :goto_6
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v4, 0x9

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .local v1, "ret":Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    .line 50
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 51
    .local v2, "v":I
    if-le v2, v4, :cond_1

    .line 61
    .end local v2    # "v":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 52
    .restart local v2    # "v":I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 56
    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 46
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    if-gt v2, v4, :cond_0

    .line 58
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static bcdToStringExt([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v4, 0x9

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 554
    .local v1, "ret":Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_3

    .line 557
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 558
    .local v2, "v":I
    if-gt v2, v4, :cond_0

    .line 559
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    :goto_1
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 564
    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 554
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_0
    add-int/lit8 v3, v2, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 565
    :cond_1
    if-gt v2, v4, :cond_2

    .line 566
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 568
    :cond_2
    add-int/lit8 v3, v2, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 571
    .end local v2    # "v":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static bitToRGB(I)I
    .locals 1
    .param p0, "bit"    # I

    .prologue
    .line 426
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 427
    const/4 v0, -0x1

    .line 429
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 322
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 338
    :goto_0
    return-object v3

    .line 324
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 329
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 331
    .local v0, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 335
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static bytesToHexStringCapital([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 661
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 677
    :goto_0
    return-object v3

    .line 663
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 665
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 668
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 670
    .local v0, "b":I
    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 674
    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 677
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 129
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 130
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 133
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 134
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 137
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v5, 0x9

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 72
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 74
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 75
    .local v3, "v":I
    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    .line 76
    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    .line 85
    .end local v3    # "v":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 80
    .restart local v3    # "v":I
    :cond_2
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 81
    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    .line 82
    :cond_3
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getCLUT([BII)[I
    .locals 9
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "number"    # I

    .prologue
    .line 521
    if-nez p0, :cond_1

    .line 522
    const/4 v4, 0x0

    .line 536
    :cond_0
    return-object v4

    .line 525
    :cond_1
    new-array v4, p2, [I

    .line 526
    .local v4, "result":[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 527
    .local v3, "endIndex":I
    move v5, p1

    .line 528
    .local v5, "valueIndex":I
    const/4 v1, 0x0

    .line 529
    .local v1, "colorIndex":I
    const/high16 v0, -0x1000000

    .line 531
    .local v0, "alpha":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "colorIndex":I
    .local v2, "colorIndex":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "valueIndex":I
    .local v6, "valueIndex":I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 535
    if-ge v6, v3, :cond_0

    move v1, v2

    .end local v2    # "colorIndex":I
    .restart local v1    # "colorIndex":I
    move v5, v6

    .end local v6    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    goto :goto_0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 107
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 108
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 111
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 112
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 115
    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 277
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 279
    :goto_0
    return v0

    .line 278
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 279
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 281
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 298
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 309
    :cond_0
    return-object v1

    .line 300
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 302
    .local v2, "sz":I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 304
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 305
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 304
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .prologue
    const/16 v10, 0x8

    .line 471
    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    .line 472
    const-string v9, "IccUtils"

    const-string v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    .line 504
    :goto_0
    return-object v2

    .line 477
    :cond_0
    const/4 v0, 0x1

    .line 478
    .local v0, "mask":I
    packed-switch p4, :pswitch_data_0

    .line 493
    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    .line 494
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    .line 495
    .local v3, "resultIndex":I
    div-int v5, v10, p4

    .local v5, "run":I
    move v8, p1

    .line 496
    .end local p1    # "valueIndex":I
    .local v8, "valueIndex":I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 497
    add-int/lit8 p1, v8, 0x1

    .end local v8    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    aget-byte v7, p0, v8

    .line 498
    .local v7, "tempByte":B
    const/4 v6, 0x0

    .local v6, "runIndex":I
    move v4, v3

    .end local v3    # "resultIndex":I
    .local v4, "resultIndex":I
    :goto_3
    if-ge v6, v5, :cond_1

    .line 499
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 500
    .local v1, "offset":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 498
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    goto :goto_3

    .line 480
    .end local v1    # "offset":I
    .end local v2    # "resultArray":[I
    .end local v4    # "resultIndex":I
    .end local v5    # "run":I
    .end local v6    # "runIndex":I
    .end local v7    # "tempByte":B
    :pswitch_1
    const/4 v0, 0x1

    .line 481
    goto :goto_1

    .line 483
    :pswitch_2
    const/4 v0, 0x3

    .line 484
    goto :goto_1

    .line 486
    :pswitch_3
    const/16 v0, 0xf

    .line 487
    goto :goto_1

    .line 489
    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    .restart local v2    # "resultArray":[I
    .restart local v4    # "resultIndex":I
    .restart local v5    # "run":I
    .restart local v6    # "runIndex":I
    .restart local v7    # "tempByte":B
    :cond_1
    move v3, v4

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    move v8, p1

    .line 503
    .end local p1    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_2

    .end local v6    # "runIndex":I
    .end local v7    # "tempByte":B
    :cond_2
    move p1, v8

    .line 504
    .end local v8    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .prologue
    .line 509
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    .line 510
    const-string v1, "IccUtils"

    const-string v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    .line 515
    :cond_0
    new-array v0, p2, [I

    .line 517
    .local v0, "resultArray":[I
    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 351
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_2

    .line 352
    :cond_0
    const-string v2, ""

    .line 389
    :cond_1
    :goto_0
    return-object v2

    .line 355
    :cond_2
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 376
    const-string v2, ""

    .line 384
    .local v2, "ret":Ljava/lang/String;
    :goto_1
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    goto :goto_0

    .line 359
    .end local v2    # "ret":Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 360
    .local v3, "unusedBits":I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 361
    .local v0, "countSeptets":I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 362
    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 366
    .end local v0    # "countSeptets":I
    .end local v2    # "ret":Ljava/lang/String;
    .end local v3    # "unusedBits":I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 368
    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 369
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 370
    .restart local v2    # "ret":Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    .line 399
    const/4 v8, 0x0

    .line 400
    .local v8, "valueIndex":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "valueIndex":I
    .local v9, "valueIndex":I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 401
    .local v10, "width":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 402
    .local v3, "height":I
    mul-int v4, v10, v3

    .line 404
    .local v4, "numOfPixels":I
    new-array v7, v4, [I

    .line 406
    .local v7, "pixels":[I
    const/4 v5, 0x0

    .line 407
    .local v5, "pixelIndex":I
    const/4 v0, 0x7

    .line 408
    .local v0, "bitIndex":I
    const/4 v2, 0x0

    .local v2, "currentByte":B
    move v6, v5

    .end local v5    # "pixelIndex":I
    .local v6, "pixelIndex":I
    move v9, v8

    .line 409
    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 411
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 412
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v2, p0, v9

    .line 413
    const/4 v0, 0x7

    .line 415
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pixelIndex":I
    .restart local v5    # "pixelIndex":I
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "bitIndex":I
    .local v1, "bitIndex":I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1    # "bitIndex":I
    .restart local v0    # "bitIndex":I
    move v6, v5

    .end local v5    # "pixelIndex":I
    .restart local v6    # "pixelIndex":I
    move v9, v8

    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto :goto_0

    .line 418
    :cond_0
    if-eq v6, v4, :cond_1

    .line 419
    const-string v11, "IccUtils"

    const-string v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z

    .prologue
    .line 443
    const/4 v6, 0x0

    .line 444
    .local v6, "valueIndex":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 445
    .local v8, "width":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 446
    .local v4, "height":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 447
    .local v0, "bits":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 448
    .local v3, "colorNumber":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 451
    .local v1, "clutOffset":I
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 452
    .local v2, "colorIndexArray":[I
    const/4 v9, 0x1

    if-ne v9, p2, :cond_0

    .line 453
    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 456
    :cond_0
    const/4 v5, 0x0

    .line 457
    .local v5, "resultArray":[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    .line 458
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 465
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 461
    :cond_1
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_0
.end method

.method public static stringToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0x80

    .line 688
    const/4 v0, 0x0

    .line 690
    .local v0, "bUnicode":Z
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 691
    .local v1, "bytes":[B
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 694
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 696
    aget-byte v6, v1, v3

    if-le v6, v8, :cond_2

    .line 697
    const/4 v0, 0x1

    .line 702
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_3

    .line 704
    aget-byte v6, v1, v2

    if-ge v6, v8, :cond_1

    .line 705
    if-eqz v0, :cond_1

    .line 706
    sget-object v6, Lcom/android/internal/telephony/IccUtils;->hexString:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    sget-object v6, Lcom/android/internal/telephony/IccUtils;->hexString:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/IccUtils;->hexString:Ljava/lang/String;

    aget-byte v7, v1, v2

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    sget-object v6, Lcom/android/internal/telephony/IccUtils;->hexString:Ljava/lang/String;

    aget-byte v7, v1, v2

    and-int/lit8 v7, v7, 0xf

    shr-int/lit8 v7, v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 694
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 715
    .restart local v2    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 716
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "80"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, "retString":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 718
    .end local v4    # "retString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "retString":Ljava/lang/String;
    goto :goto_2
.end method
