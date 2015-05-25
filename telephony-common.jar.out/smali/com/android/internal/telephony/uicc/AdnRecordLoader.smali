.class public Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_ADDITIONALNUMBER_SIZE_DONE:I = 0x6

.field static final EVENT_EF_LINEAR_EMAIL_SIZE_DONE:I = 0x7

.field static final EVENT_EF_LINEAR_GROUP_INDEX_SIZE_DONE:I = 0x9

.field static final EVENT_EF_LINEAR_GROUP_NAME_SIZE_DONE:I = 0xa

.field static final EVENT_EF_LINEAR_IAP_SIZE_DONE:I = 0x8

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecordLoader"

.field static final VDBG:Z


# instance fields
.field mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEf:I

.field mExtensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mPendingExtLoads:I

.field mPin2:Ljava/lang/String;

.field mRecordNumber:I

.field mResult:Ljava/lang/Object;

.field mUserResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 42
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 213
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 541
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    if-nez v2, :cond_1

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 546
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 548
    :cond_1
    :goto_1
    return-void

    .line 215
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 216
    .local v14, "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v13, v0

    .line 217
    .local v13, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 218
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 529
    .end local v13    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v25

    .line 530
    .local v25, "exc":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 536
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    goto :goto_1

    .line 221
    .end local v25    # "exc":Ljava/lang/RuntimeException;
    .restart local v13    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v34, v0

    .line 227
    .local v34, "recordSize":[I
    move-object/from16 v0, v34

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    const/4 v3, 0x2

    aget v3, v34, v3

    if-le v2, v3, :cond_4

    .line 228
    :cond_3
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_LINEAR_RECORD_SIZE_DONE get wrong EF record size format recordSize.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4
    move-object/from16 v0, v34

    array-length v2, v0

    if-lez v2, :cond_5

    .line 233
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_LINEAR_RECORD_SIZE_DONE get EF record size format recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v34, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v2, 0x0

    aget v2, v34, v2

    invoke-virtual {v13, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v5

    .line 241
    .local v5, "data":[B
    if-nez v5, :cond_6

    .line 242
    const-string v2, "AdnRecordLoader"

    const-string v3, "EVENT_EF_LINEAR_RECORD_SIZE_DONE: worong ADN format"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "wrong ADN format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 236
    .end local v5    # "data":[B
    :cond_5
    const-string v2, "AdnRecordLoader"

    const-string v3, "EVENT_EF_LINEAR_RECORD_SIZE_DONE get wrong EF record size format222 "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 246
    .restart local v5    # "data":[B
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 248
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 251
    .end local v5    # "data":[B
    .end local v13    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v34    # "recordSize":[I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 252
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 253
    .local v12, "additionalNumber":Ljava/lang/String;
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v35, v0

    .line 254
    .local v35, "recordSize1":[I
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_LINEAR_ADDITIONALNUMBER_SIZE_DONE recordSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v35, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v2, 0x0

    aget v2, v35, v2

    new-array v5, v2, [B

    .line 257
    .restart local v5    # "data":[B
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_2
    const/4 v2, 0x0

    aget v2, v35, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_7

    .line 258
    const/4 v2, -0x1

    aput-byte v2, v5, v29

    .line 257
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 260
    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v5, v2

    .line 261
    if-eqz v12, :cond_8

    const-string v2, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 262
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v18

    .line 264
    .local v18, "data1":[B
    move-object/from16 v0, v18

    array-length v2, v0

    const/16 v3, 0xb

    if-ge v2, v3, :cond_9

    .line 265
    const/4 v2, 0x1

    move-object/from16 v0, v18

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 266
    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, v18

    array-length v4, v0

    move-object/from16 v0, v18

    invoke-static {v0, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    :goto_3
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput-byte v3, v5, v2

    .line 272
    const/16 v2, 0xe

    const/4 v3, -0x1

    aput-byte v3, v5, v2

    .line 273
    const/4 v2, 0x0

    aget v2, v35, v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_8

    .line 274
    const/4 v2, 0x0

    aget v2, v35, v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 277
    .end local v18    # "data1":[B
    :cond_8
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " buildAnrData: data is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_a

    .line 279
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EVENT_EF_LINEAR_SECONDNUMBER_SIZE_DONE failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 268
    .restart local v18    # "data1":[B
    :cond_9
    const/4 v2, 0x1

    const/16 v3, 0xb

    aput-byte v3, v5, v2

    .line 269
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xb

    move-object/from16 v0, v18

    invoke-static {v0, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 282
    .end local v18    # "data1":[B
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 284
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 287
    .end local v5    # "data":[B
    .end local v12    # "additionalNumber":Ljava/lang/String;
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "i":I
    .end local v35    # "recordSize1":[I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 288
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    .line 289
    .local v22, "email":Ljava/lang/String;
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v36, v0

    .line 290
    .local v36, "recordSize2":[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 291
    .local v33, "pbrIndex":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    .line 297
    .local v32, "indexInAdn":I
    move-object/from16 v0, v36

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    const/4 v3, 0x2

    aget v3, v36, v3

    if-le v2, v3, :cond_c

    .line 298
    :cond_b
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_LINEAR_EMAIL_SIZE_DONE get wrong EF record size format recordNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v36, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_c
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_LINEAR_EMAIL_SIZE_DONE recordSize2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v36, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v2, 0x0

    aget v2, v36, v2

    new-array v5, v2, [B

    .line 305
    .restart local v5    # "data":[B
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_4
    const/4 v2, 0x0

    aget v2, v36, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_d

    .line 306
    const/4 v2, -0x1

    aput-byte v2, v5, v29

    .line 305
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 309
    :cond_d
    if-eqz v22, :cond_e

    const-string v2, ""
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_e

    .line 311
    :try_start_3
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v16

    .line 312
    .local v16, "byteTag":[B
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v16

    .line 329
    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    move-object/from16 v0, v16

    array-length v4, v0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v15

    .line 332
    .local v15, "arc":Lcom/android/internal/telephony/uicc/AdnRecordCache;
    if-eqz v15, :cond_e

    .line 333
    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailFileIds(I)Ljava/util/ArrayList;

    move-result-object v23

    .line 334
    .local v23, "emailfile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v23, :cond_e

    .line 335
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v31

    .line 336
    .local v31, "index":I
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index of email EF "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailIapPresent(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 339
    const/4 v2, 0x1

    move/from16 v0, v33

    if-ne v2, v0, :cond_f

    .line 340
    const/4 v2, 0x0

    aget v2, v36, v2

    add-int/lit8 v2, v2, -0x2

    const/16 v3, 0xa

    aput-byte v3, v5, v2

    .line 344
    :goto_6
    const/4 v2, 0x0

    aget v2, v36, v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v32

    int-to-byte v3, v0

    aput-byte v3, v5, v2

    .line 350
    .end local v15    # "arc":Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .end local v16    # "byteTag":[B
    .end local v23    # "emailfile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v31    # "index":I
    :cond_e
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_LINEAR_EMAIL_SIZE_DONE ADN record Number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_10

    .line 352
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EVENT_EF_LINEAR_EMAIL_SIZE_DONE failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 313
    :catch_1
    move-exception v24

    .line 314
    .local v24, "ex":Lcom/android/internal/telephony/EncodeException;
    const/4 v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v28, v0

    .line 315
    .local v28, "header":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v28, v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 318
    :try_start_5
    const-string v2, "utf-16be"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v19

    .line 324
    .local v19, "data2":[B
    :try_start_6
    move-object/from16 v0, v19

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 325
    .restart local v16    # "byteTag":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    .line 319
    .end local v16    # "byteTag":[B
    .end local v19    # "data2":[B
    :catch_2
    move-exception v41

    .line 320
    .local v41, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v2, "AdnRecordLoader"

    const-string v3, "exit  buildAdnString null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 342
    .end local v24    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v28    # "header":[B
    .end local v41    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v15    # "arc":Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .restart local v16    # "byteTag":[B
    .restart local v23    # "emailfile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v31    # "index":I
    :cond_f
    const/4 v2, 0x0

    aget v2, v36, v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    aput-byte v3, v5, v2

    goto :goto_6

    .line 355
    .end local v15    # "arc":Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .end local v16    # "byteTag":[B
    .end local v23    # "emailfile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v31    # "index":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 357
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 360
    .end local v5    # "data":[B
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "email":Ljava/lang/String;
    .end local v29    # "i":I
    .end local v32    # "indexInAdn":I
    .end local v33    # "pbrIndex":I
    .end local v36    # "recordSize2":[I
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 361
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v30, v0

    .line 362
    .local v30, "iap":[B
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v37, v0

    .line 363
    .local v37, "recordSize3":[I
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_LINEAR_IAP_SIZE_DONE recordSize3 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v37, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v2, 0x0

    aget v2, v37, v2

    new-array v5, v2, [B

    .line 366
    .restart local v5    # "data":[B
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_7
    const/4 v2, 0x0

    aget v2, v37, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_11

    .line 367
    const/4 v2, -0x1

    aput-byte v2, v5, v29

    .line 366
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 369
    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v30

    array-length v4, v0

    move-object/from16 v0, v30

    invoke-static {v0, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 372
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 375
    .end local v5    # "data":[B
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "i":I
    .end local v30    # "iap":[B
    .end local v37    # "recordSize3":[I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 376
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v26, v0

    .line 377
    .local v26, "groupIndex":[I
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v38, v0

    .line 378
    .local v38, "recordSize4":[I
    const/4 v2, 0x0

    aget v2, v38, v2

    new-array v9, v2, [B
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 380
    .local v9, "dataGroupIndex":[B
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_8
    const/4 v2, 0x0

    :try_start_7
    aget v2, v38, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_12

    .line 381
    aget v2, v26, v29

    int-to-byte v2, v2

    aput-byte v2, v9, v29
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 380
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 383
    :catch_3
    move-exception v21

    .line 384
    .local v21, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_12
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_LINEAR_GROUP_INDEX_SIZE_DONE recordSize4 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v38, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 390
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 393
    .end local v9    # "dataGroupIndex":[B
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "groupIndex":[I
    .end local v29    # "i":I
    .end local v38    # "recordSize4":[I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 394
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v27, v0

    .line 395
    .local v27, "groupName":Ljava/lang/String;
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v39, v0

    .line 401
    .local v39, "recordSize5":[I
    move-object/from16 v0, v39

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    const/4 v3, 0x2

    aget v3, v39, v3

    if-le v2, v3, :cond_14

    .line 402
    :cond_13
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_LINEAR_EMAIL_SIZE_DONE get wrong EF record size format recordNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v39, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_14
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_LINEAR_EMAIL_SIZE_DONE recordSize5 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v39, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v2, 0x0

    aget v2, v39, v2

    new-array v5, v2, [B

    .line 409
    .restart local v5    # "data":[B
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_9
    const/4 v2, 0x0

    aget v2, v39, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_15

    .line 410
    const/4 v2, -0x1

    aput-byte v2, v5, v29

    .line 409
    add-int/lit8 v29, v29, 0x1

    goto :goto_9

    .line 413
    :cond_15
    if-eqz v27, :cond_16

    const-string v2, ""
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v0, v27

    if-eq v0, v2, :cond_16

    .line 415
    :try_start_9
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v17

    .line 416
    .local v17, "byteTag1":[B
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_9
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v17

    .line 432
    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_a
    move-object/from16 v0, v17

    array-length v4, v0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    .end local v17    # "byteTag1":[B
    :cond_16
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    .line 436
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EVENT_EF_LINEAR_EMAIL_SIZE_DONE failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 417
    :catch_4
    move-exception v24

    .line 418
    .restart local v24    # "ex":Lcom/android/internal/telephony/EncodeException;
    const/4 v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v28, v0

    .line 419
    .restart local v28    # "header":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v28, v2
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    .line 422
    :try_start_b
    const-string v2, "utf-16be"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    move-result-object v19

    .line 428
    .restart local v19    # "data2":[B
    :try_start_c
    move-object/from16 v0, v19

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .line 429
    .restart local v17    # "byteTag1":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    .line 423
    .end local v17    # "byteTag1":[B
    .end local v19    # "data2":[B
    :catch_5
    move-exception v41

    .line 424
    .restart local v41    # "uex":Ljava/io/UnsupportedEncodingException;
    const-string v2, "AdnRecordLoader"

    const-string v3, "exit  buildAdnString null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 439
    .end local v24    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v28    # "header":[B
    .end local v41    # "uex":Ljava/io/UnsupportedEncodingException;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 441
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 444
    .end local v5    # "data":[B
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "groupName":Ljava/lang/String;
    .end local v29    # "i":I
    .end local v39    # "recordSize5":[I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 445
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_18

    .line 446
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "update EF adn record failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 449
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 450
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 453
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 454
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v5, v0

    .line 456
    .restart local v5    # "data":[B
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_19

    .line 457
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 461
    :cond_19
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADN EF: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    invoke-direct {v13, v2, v3, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 467
    .restart local v13    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 469
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v4, v13, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 480
    .end local v5    # "data":[B
    .end local v13    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 481
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v5, v0

    .line 482
    .restart local v5    # "data":[B
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v13, v0

    .line 484
    .restart local v13    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1a

    .line 485
    const-string v2, "AdnRecordLoader"

    const-string v3, "EVENT_EXT_RECORD_LOAD_DONE ar.exception != null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 488
    :cond_1a
    const-string v2, "AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADN extension EF: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v13, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendExtRecord([B)V

    goto :goto_b

    .line 501
    .end local v5    # "data":[B
    .end local v13    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 503
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 504
    .local v20, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1b

    .line 505
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 507
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 509
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 510
    const/16 v29, 0x0

    .restart local v29    # "i":I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v40

    .local v40, "s":I
    :goto_c
    move/from16 v0, v29

    move/from16 v1, v40

    if-ge v0, v1, :cond_0

    .line 512
    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    if-nez v2, :cond_1d

    .line 510
    :cond_1c
    :goto_d
    add-int/lit8 v29, v29, 0x1

    goto :goto_c

    .line 514
    :cond_1d
    new-instance v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    add-int/lit8 v4, v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v13, v3, v4, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 515
    .restart local v13    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 521
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v4, v13, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_d

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 2
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 101
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 102
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 103
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 109
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 83
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 84
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 85
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 91
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 126
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 127
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 128
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 129
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 130
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 134
    return-void
.end method

.method public updateEFEmail(Ljava/lang/String;IIIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "ef"    # I
    .param p3, "recordNumber"    # I
    .param p4, "indexInAdn"    # I
    .param p5, "pbrIndex"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 161
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 162
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 163
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 164
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p5, p4, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 168
    return-void
.end method

.method public updateEFGroupIndex([IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "data"    # [I
    .param p2, "ef"    # I
    .param p3, "recordNumber"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 184
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 185
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 186
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 187
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 191
    return-void
.end method

.method public updateEFGroupName(Ljava/lang/String;IILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ef"    # I
    .param p3, "recordNumber"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 195
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 196
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 197
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 198
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 202
    return-void
.end method

.method public updateEFIap([BIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "ef"    # I
    .param p3, "recordNumber"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 172
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 173
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 174
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 175
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 179
    return-void
.end method

.method public updateEFadditionalNumber(Ljava/lang/String;IILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "additionalNumber"    # Ljava/lang/String;
    .param p2, "ef"    # I
    .param p3, "recordNumber"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 150
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 151
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 152
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 153
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 157
    return-void
.end method
