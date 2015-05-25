.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .line 390
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 394
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    .line 391
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 406
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/RILRequest;

    move-object v10, v12

    check-cast v10, Lcom/android/internal/telephony/RILRequest;

    .line 407
    .local v10, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v9, 0x0

    .line 409
    .local v9, "req":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 416
    :pswitch_0
    const/4 v1, 0x0

    .line 420
    .local v1, "alreadySubtracted":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 422
    .local v11, "s":Landroid/net/LocalSocket;
    if-nez v11, :cond_4

    .line 423
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mSocket == null"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 425
    invoke-virtual {v10}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v12, :cond_1

    .line 427
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 428
    :cond_1
    const/4 v1, 0x1

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 463
    .end local v11    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v4

    .line 464
    .local v4, "ex":Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "IOException"

    invoke-static {v12, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v10, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v9

    .line 468
    if-nez v9, :cond_2

    if-nez v1, :cond_3

    .line 469
    :cond_2
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 470
    invoke-virtual {v10}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 472
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_1
    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v12, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    goto :goto_0

    .line 433
    .restart local v11    # "s":Landroid/net/LocalSocket;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v14, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 436
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 438
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v12, :cond_5

    .line 439
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 440
    :cond_5
    const/4 v1, 0x1

    .line 444
    iget-object v12, v10, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v12}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 445
    .local v3, "data":[B
    iget-object v12, v10, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 446
    const/4 v12, 0x0

    iput-object v12, v10, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 448
    array-length v12, v3

    const/16 v13, 0x2000

    if-le v12, v13, :cond_8

    .line 449
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel larger than max bytes allowed! "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 473
    .end local v3    # "data":[B
    .end local v11    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v5

    .line 474
    .local v5, "exc":Ljava/lang/RuntimeException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Uncaught exception "

    invoke-static {v12, v13, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v10, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v9

    .line 478
    if-nez v9, :cond_6

    if-nez v1, :cond_7

    .line 479
    :cond_6
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 480
    invoke-virtual {v10}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 482
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 483
    .end local v5    # "exc":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v12

    throw v12

    .line 436
    .restart local v11    # "s":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v12

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v12

    .line 455
    .restart local v3    # "data":[B
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput-byte v16, v14, v15

    aput-byte v16, v12, v13

    .line 456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v13, 0x2

    array-length v14, v3

    shr-int/lit8 v14, v14, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 457
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v13, 0x3

    array-length v14, v3

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 461
    invoke-virtual {v11}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    .line 462
    invoke-virtual {v11}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 501
    .end local v1    # "alreadySubtracted":Z
    .end local v3    # "data":[B
    .end local v11    # "s":Landroid/net/LocalSocket;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 502
    .restart local v11    # "s":Landroid/net/LocalSocket;
    if-nez v11, :cond_9

    .line 503
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "EVENT_WAKE_LOCK_TIMEOUTmSocket == null"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Lcom/android/internal/telephony/RIL;->clearRequestsList(IZ)V
    invoke-static {v12, v13, v14}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;IZ)V

    .line 505
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)V

    goto/16 :goto_0

    .line 508
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v12, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v13

    .line 509
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 520
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 521
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 522
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "WAKE_LOCK_TIMEOUT mReqPending="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mRequestList="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v12, v15}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 525
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v2, :cond_a

    .line 526
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v10, v0

    .line 527
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v12, v15}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 525
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 530
    :cond_a
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 533
    :try_start_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->mMuxDataState:I
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$900(Lcom/android/internal/telephony/RIL;)I

    move-result v12

    if-nez v12, :cond_d

    .line 541
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-eqz v12, :cond_b

    .line 542
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ERROR: mReqPending is NOT 0 but"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v15, v15, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at TIMEOUT, reset!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v14, 0x0

    iput v14, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 548
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v14, 0x1

    # setter for: Lcom/android/internal/telephony/RIL;->mSleepAllow:Z
    invoke-static {v12, v14}, Lcom/android/internal/telephony/RIL;->access$1002(Lcom/android/internal/telephony/RIL;Z)Z

    .line 549
    const/16 v12, 0xed

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v10

    .line 550
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v12, v14}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v14, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v12, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 553
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v10}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 554
    .local v8, "msgSend":Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 564
    .end local v2    # "count":I
    .end local v7    # "i":I
    .end local v8    # "msgSend":Landroid/os/Message;
    :cond_c
    :goto_3
    monitor-exit v13

    goto/16 :goto_0

    :catchall_2
    move-exception v12

    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v12

    .line 530
    :catchall_3
    move-exception v12

    :try_start_b
    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v12

    .line 556
    .restart local v2    # "count":I
    .restart local v7    # "i":I
    :cond_d
    const-string v12, "/system/vendor/lib/libril-qc-qmi-1.so"

    const-string v14, "rild.libpath"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 557
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RIL;->checkStoppedAndStartRild()V

    .line 559
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    .line 560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 561
    .restart local v8    # "msgSend":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v14, v14, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v14, v14

    invoke-virtual {v12, v8, v14, v15}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    .line 567
    .end local v2    # "count":I
    .end local v7    # "i":I
    .end local v8    # "msgSend":Landroid/os/Message;
    .end local v11    # "s":Landroid/net/LocalSocket;
    :pswitch_2
    const/4 v6, 0x1

    .line 568
    .local v6, "flag":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->request_size:I
    invoke-static {v13}, Lcom/android/internal/telephony/RIL;->access$1100(Lcom/android/internal/telephony/RIL;)I

    move-result v13

    if-ge v12, v13, :cond_10

    .line 569
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v13, "CP_COMM: checkStoppedAndStartRild, some request has been back ,clear"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 583
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/RIL;->request_size:I
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->access$1102(Lcom/android/internal/telephony/RIL;I)I

    .line 584
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/RIL;->checkRildDelayFlag:Z
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->access$1302(Lcom/android/internal/telephony/RIL;Z)Z

    .line 585
    const/4 v7, 0x1

    .restart local v7    # "i":I
    :goto_5
    const/16 v12, 0xa

    if-ge v7, v12, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->requestId:[I
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$1200(Lcom/android/internal/telephony/RIL;)[I

    move-result-object v12

    const/4 v13, 0x0

    aput v13, v12, v7

    .line 585
    add-int/lit8 v7, v7, 0x2

    goto :goto_5

    .line 571
    .end local v7    # "i":I
    :cond_10
    const/4 v7, 0x1

    .restart local v7    # "i":I
    :goto_6
    const/16 v12, 0xa

    if-ge v7, v12, :cond_11

    .line 572
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->requestId:[I
    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->access$1200(Lcom/android/internal/telephony/RIL;)[I

    move-result-object v12

    aget v13, v12, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/RILRequest;

    iget v12, v12, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    if-eq v13, v12, :cond_12

    .line 573
    const/4 v6, 0x0

    .line 578
    :cond_11
    if-eqz v6, :cond_f

    .line 579
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v13, "CP_COMM: checkStoppedAndStartRild, restart rild again"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v13}, Lcom/android/internal/telephony/RIL;->getPhoneId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/RIL;->stoppedAndStartProcessRild(I)V

    goto :goto_4

    .line 571
    :cond_12
    add-int/lit8 v7, v7, 0x2

    goto :goto_6

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method
