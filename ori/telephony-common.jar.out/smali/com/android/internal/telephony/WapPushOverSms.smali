.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSCAddress:Ljava/lang/String;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatcher"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    .line 55
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSCAddress:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 73
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    return-void

    .line 77
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 43
    .param p1, "pdu"    # [B

    .prologue
    .line 103
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rx: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/16 v29, 0x0

    .line 108
    .local v29, "index":I
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "index":I
    .local v30, "index":I
    :try_start_0
    aget-byte v4, p1, v29
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v38, v4, 0x8

    .line 109
    .local v38, "sourcePort":I
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "index":I
    .restart local v29    # "index":I
    :try_start_1
    aget-byte v4, p1, v30
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit16 v4, v4, 0xff

    or-int v38, v38, v4

    .line 110
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "index":I
    .restart local v30    # "index":I
    :try_start_2
    aget-byte v4, p1, v29
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v23, v4, 0x8

    .line 111
    .local v23, "destinationPort":I
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "index":I
    .restart local v29    # "index":I
    :try_start_3
    aget-byte v4, p1, v30

    and-int/lit16 v4, v4, 0xff

    or-int v23, v23, v4

    .line 112
    const/16 v4, 0x23f0

    move/from16 v0, v38

    if-ne v0, v4, :cond_0

    const/16 v4, 0xb84

    move/from16 v0, v23

    if-eq v0, v4, :cond_19

    .line 113
    :cond_0
    const/16 v29, 0x0

    move/from16 v30, v29

    .line 116
    .end local v29    # "index":I
    .restart local v30    # "index":I
    :goto_0
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "index":I
    .restart local v29    # "index":I
    aget-byte v4, p1, v30
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    and-int/lit16 v0, v4, 0xff

    move/from16 v39, v0

    .line 117
    .local v39, "transactionId":I
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "index":I
    .restart local v30    # "index":I
    :try_start_4
    aget-byte v4, p1, v29

    and-int/lit16 v0, v4, 0xff

    move/from16 v34, v0

    .line 119
    .local v34, "pduType":I
    const/4 v4, 0x6

    move/from16 v0, v34

    if-eq v0, v4, :cond_2

    const/4 v4, 0x7

    move/from16 v0, v34

    if-eq v0, v4, :cond_2

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v29

    .line 123
    .end local v30    # "index":I
    .restart local v29    # "index":I
    const/4 v4, -0x1

    move/from16 v0, v29

    if-eq v0, v4, :cond_1

    .line 124
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "index":I
    .restart local v30    # "index":I
    aget-byte v4, p1, v29
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    and-int/lit16 v0, v4, 0xff

    move/from16 v39, v0

    .line 125
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "index":I
    .restart local v29    # "index":I
    :try_start_5
    aget-byte v4, p1, v30

    and-int/lit16 v0, v4, 0xff

    move/from16 v34, v0

    .line 127
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " PDU Type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " transactionID = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v4, 0x6

    move/from16 v0, v34

    if-eq v0, v4, :cond_3

    const/4 v4, 0x7

    move/from16 v0, v34

    if-eq v0, v4, :cond_3

    .line 133
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v4, 0x1

    .line 396
    .end local v23    # "destinationPort":I
    .end local v34    # "pduType":I
    .end local v38    # "sourcePort":I
    .end local v39    # "transactionId":I
    :goto_1
    return v4

    .line 137
    .restart local v23    # "destinationPort":I
    .restart local v34    # "pduType":I
    .restart local v38    # "sourcePort":I
    .restart local v39    # "transactionId":I
    :cond_1
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v4, 0x1

    goto :goto_1

    .end local v29    # "index":I
    .restart local v30    # "index":I
    :cond_2
    move/from16 v29, v30

    .line 142
    .end local v30    # "index":I
    .restart local v29    # "index":I
    :cond_3
    new-instance v33, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 150
    .local v33, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 151
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Length error."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v4, 0x2

    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v26, v0

    .line 155
    .local v26, "headerLength":I
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v29, v29, v4

    .line 157
    move/from16 v27, v29

    .line 171
    .local v27, "headerStartIndex":I
    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 172
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Content-Type error."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v4, 0x2

    goto :goto_1

    .line 176
    :cond_5
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v32

    .line 177
    .local v32, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v17

    .line 178
    .local v17, "binaryContentType":J
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v29, v29, v4

    .line 180
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 181
    .local v25, "header":[B
    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v5, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    if-nez v32, :cond_6

    .line 186
    const-string v4, "WAP PUSH"

    const-string v5, "Header Content-Type error."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 190
    :cond_6
    if-eqz v32, :cond_8

    const-string v4, "application/vnd.wap.coc"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 191
    move-object/from16 v9, p1

    .line 198
    .local v9, "intentData":[B
    :goto_2
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isOverseaProduct()Z

    move-result v4

    if-nez v4, :cond_e

    .line 200
    const-string v4, "application/vnd.wap.slc"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 201
    const-string v4, "WAP PUSH"

    const-string v5, "parser wap push SL message"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz v9, :cond_7

    array-length v4, v9

    if-nez v4, :cond_9

    .line 203
    :cond_7
    const-string v4, "WAP PUSH"

    const-string v5, "wap push data length is 0,return"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 193
    .end local v9    # "intentData":[B
    :cond_8
    add-int v22, v27, v26

    .line 194
    .local v22, "dataIndex":I
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v22

    new-array v9, v4, [B

    .line 195
    .restart local v9    # "intentData":[B
    const/4 v4, 0x0

    array-length v5, v9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 392
    .end local v9    # "intentData":[B
    .end local v17    # "binaryContentType":J
    .end local v22    # "dataIndex":I
    .end local v23    # "destinationPort":I
    .end local v25    # "header":[B
    .end local v26    # "headerLength":I
    .end local v27    # "headerStartIndex":I
    .end local v32    # "mimeType":Ljava/lang/String;
    .end local v33    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v34    # "pduType":I
    .end local v39    # "transactionId":I
    :catch_0
    move-exception v14

    .line 395
    .end local v38    # "sourcePort":I
    .local v14, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_3
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 208
    .end local v14    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v9    # "intentData":[B
    .restart local v17    # "binaryContentType":J
    .restart local v23    # "destinationPort":I
    .restart local v25    # "header":[B
    .restart local v26    # "headerLength":I
    .restart local v27    # "headerStartIndex":I
    .restart local v32    # "mimeType":Ljava/lang/String;
    .restart local v33    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v34    # "pduType":I
    .restart local v38    # "sourcePort":I
    .restart local v39    # "transactionId":I
    :cond_9
    :try_start_6
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IDecodImpl;->decode(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v21

    .line 215
    .local v21, "data":Ljava/lang/String;
    :goto_4
    :try_start_7
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wap push after decode data="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    .line 218
    :cond_a
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 209
    .end local v21    # "data":Ljava/lang/String;
    :catch_1
    move-exception v24

    .line 210
    .local v24, "e":Ljava/lang/Exception;
    const-string v4, "WAP PUSH"

    const-string v5, "wap push SL decode exception!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    const/16 v21, 0x0

    .restart local v21    # "data":Ljava/lang/String;
    goto :goto_4

    .line 220
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_b
    const-string v35, "android.permission.RECEIVE_UNIVERSAL_DOWNLOAD_WAP_PUSH"

    .line 221
    .local v35, "permission":Ljava/lang/String;
    new-instance v31, Landroid/content/Intent;

    const-string v4, "UNIVERSAL_DOWNLOAD_WAP_PUSH_RECEIVED"

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v31, "intent":Landroid/content/Intent;
    const-string v4, "serverurl"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v5, 0x13

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 224
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 227
    .end local v21    # "data":Ljava/lang/String;
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v35    # "permission":Ljava/lang/String;
    :cond_c
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lcom/android/internal/telephony/PduHeaders;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/android/internal/telephony/PduHeaders;

    move-result-object v28

    .line 228
    .local v28, "headers":Lcom/android/internal/telephony/PduHeaders;
    const/4 v6, 0x0

    .line 229
    .local v6, "originateAddress":Ljava/lang/String;
    const/16 v40, 0x0

    .line 230
    .local v40, "value":Lcom/android/internal/telephony/EncodedStringValue;
    if-eqz v28, :cond_d

    const/16 v4, 0x89

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PduHeaders;->getEncodedStringValue(I)Lcom/android/internal/telephony/EncodedStringValue;

    move-result-object v40

    if-eqz v40, :cond_d

    .line 232
    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 233
    :cond_d
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wap push parse sender address: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->ExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    check-cast v10, [[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v13}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v4 .. v13}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->getExternInterfaceParseResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[B[[BIILjava/lang/String;)I

    move-result v16

    .line 239
    .local v16, "bRet":I
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wap push message filter ret = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-eqz v16, :cond_e

    .line 241
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 250
    .end local v6    # "originateAddress":Ljava/lang/String;
    .end local v16    # "bRet":I
    .end local v28    # "headers":Lcom/android/internal/telephony/PduHeaders;
    .end local v40    # "value":Lcom/android/internal/telephony/EncodedStringValue;
    :cond_e
    add-int v4, v29, v26

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 251
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v29, v0

    .line 252
    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 253
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v41

    .line 254
    .local v41, "wapAppId":Ljava/lang/String;
    if-nez v41, :cond_f

    .line 255
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    .line 258
    :cond_f
    if-nez v32, :cond_11

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    .line 260
    .local v20, "contentType":Ljava/lang/String;
    :goto_5
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appid found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    .line 263
    const/16 v37, 0x1

    .line 264
    .local v37, "processFurther":Z
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v42, v0

    .line 266
    .local v42, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v42, :cond_12

    .line 267
    const-string v4, "WAP PUSH"

    const-string v5, "wap push manager not found!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_10
    :goto_6
    if-nez v37, :cond_15

    .line 309
    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v20    # "contentType":Ljava/lang/String;
    .end local v37    # "processFurther":Z
    .end local v42    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_11
    move-object/from16 v20, v32

    .line 258
    goto :goto_5

    .line 269
    .restart local v20    # "contentType":Ljava/lang/String;
    .restart local v37    # "processFurther":Z
    .restart local v42    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_12
    new-instance v31, Landroid/content/Intent;

    invoke-direct/range {v31 .. v31}, Landroid/content/Intent;-><init>()V

    .line 270
    .restart local v31    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_14

    .line 272
    const-string v4, "WAP PUSH"

    const-string v5, "do nothing in XianWangMode of CHINA_MOBILE"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_13
    :goto_7
    const-string v4, "transactionId"

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const-string v4, "pduType"

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v4, "header"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 296
    const-string v4, "data"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 297
    const-string v4, "contentTypeParameters"

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 299
    const-string v4, "scaddress"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSCAddress:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    move-object/from16 v0, v42

    move-object/from16 v1, v41

    move-object/from16 v2, v20

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v36

    .line 302
    .local v36, "procRet":I
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "procRet:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    and-int/lit8 v4, v36, 0x1

    if-lez v4, :cond_10

    const v4, 0x8000

    and-int v4, v4, v36

    if-nez v4, :cond_10

    .line 305
    const/16 v37, 0x0

    goto/16 :goto_6

    .line 275
    .end local v36    # "procRet":I
    :cond_14
    const-string v4, "persist.yulong.ctstest"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 277
    new-instance v19, Landroid/content/ComponentName;

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.transaction.PushReceiver"

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v19, "componentName":Landroid/content/ComponentName;
    if-eqz v19, :cond_13

    .line 282
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 283
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delivering SMS to: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_7

    .line 311
    .end local v19    # "componentName":Landroid/content/ComponentName;
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v42    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_2
    move-exception v24

    .line 312
    .local v24, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v4, "WAP PUSH"

    const-string v5, "remote func failed..."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v20    # "contentType":Ljava/lang/String;
    .end local v24    # "e":Landroid/os/RemoteException;
    .end local v37    # "processFurther":Z
    .end local v41    # "wapAppId":Ljava/lang/String;
    :cond_15
    const-string v4, "WAP PUSH"

    const-string v5, "fall back to existing handler"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v4, "application/vnd.wap.mms-message"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 321
    const-string v35, "android.permission.RECEIVE_MMS"

    .line 322
    .restart local v35    # "permission":Ljava/lang/String;
    const/16 v15, 0x12

    .line 342
    .local v15, "appOp":I
    :goto_8
    new-instance v31, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v31    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_18

    .line 345
    const-string v4, "WAP PUSH"

    const-string v5, "do nothing in XianWangMode of CHINA_MOBILE"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_16
    :goto_9
    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v4, "transactionId"

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    const-string v4, "pduType"

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v4, "header"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 366
    const-string v4, "data"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 367
    const-string v4, "address"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v4, "scaddress"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSCAddress:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v4, "index"

    const/4 v5, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    const-string v4, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    const-string v4, "sub_id"

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string v4, "contentTypeParameters"

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1, v15}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 389
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pduType = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "address = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "permission = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 324
    .end local v15    # "appOp":I
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v35    # "permission":Ljava/lang/String;
    :cond_17
    const-string v35, "android.permission.RECEIVE_WAP_PUSH"

    .line 325
    .restart local v35    # "permission":Ljava/lang/String;
    const/16 v15, 0x13

    .restart local v15    # "appOp":I
    goto/16 :goto_8

    .line 347
    .restart local v31    # "intent":Landroid/content/Intent;
    :cond_18
    const-string v4, "persist.yulong.ctstest"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 349
    new-instance v19, Landroid/content/ComponentName;

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.transaction.PushReceiver"

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .restart local v19    # "componentName":Landroid/content/ComponentName;
    if-eqz v19, :cond_16

    .line 354
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 355
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delivering SMS to: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_9

    .line 392
    .end local v9    # "intentData":[B
    .end local v15    # "appOp":I
    .end local v17    # "binaryContentType":J
    .end local v19    # "componentName":Landroid/content/ComponentName;
    .end local v23    # "destinationPort":I
    .end local v25    # "header":[B
    .end local v26    # "headerLength":I
    .end local v27    # "headerStartIndex":I
    .end local v29    # "index":I
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v32    # "mimeType":Ljava/lang/String;
    .end local v33    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v34    # "pduType":I
    .end local v35    # "permission":Ljava/lang/String;
    .end local v38    # "sourcePort":I
    .end local v39    # "transactionId":I
    .restart local v30    # "index":I
    :catch_3
    move-exception v14

    move/from16 v29, v30

    .end local v30    # "index":I
    .restart local v29    # "index":I
    goto/16 :goto_3

    .restart local v23    # "destinationPort":I
    .restart local v38    # "sourcePort":I
    :cond_19
    move/from16 v30, v29

    .end local v29    # "index":I
    .restart local v30    # "index":I
    goto/16 :goto_0
.end method

.method public dispatchWapPdu([BLjava/lang/String;)I
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSCAddress:Ljava/lang/String;

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v0

    return v0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 59
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 60
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 66
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public setAdddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    .line 407
    const-string v0, "WAP PUSH"

    const-string v1, "--address--"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
