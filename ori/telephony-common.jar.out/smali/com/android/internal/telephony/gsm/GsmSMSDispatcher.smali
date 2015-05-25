.class public final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final EVENT_NEW_BROADCAST_SMS:I = 0x65

.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x66

.field private static final VDBG:Z


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    const/16 v3, 0x65

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/BaseCommands;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method private addTagLength(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "nLength"    # I

    .prologue
    .line 867
    if-nez p1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "error:sendSmsPpDownload, buf is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :goto_0
    return-void

    .line 871
    :cond_0
    const/16 v0, 0x80

    if-ge p2, v0, :cond_1

    .line 872
    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 873
    :cond_1
    const/16 v0, 0xff

    if-gt p2, v0, :cond_2

    .line 874
    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 875
    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:sendSmsPpDownload, length= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "StkService, sendSmsPpDownload: length > 255"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 21
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 744
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [B

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 747
    .local v17, "receivedPdu":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "receivedPdu = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    if-nez v17, :cond_1

    .line 854
    .end local v17    # "receivedPdu":[B
    :cond_0
    :goto_0
    return-void

    .line 767
    .restart local v17    # "receivedPdu":[B
    :cond_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 768
    .local v7, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v18, "gsm.operator.numeric"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 769
    .local v16, "plmn":Ljava/lang/String;
    const/4 v11, -0x1

    .line 770
    .local v11, "lac":I
    const/4 v3, -0x1

    .line 771
    .local v3, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 775
    .local v4, "cl":Landroid/telephony/CellLocation;
    instance-of v0, v4, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 776
    move-object v0, v4

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v2, v0

    .line 777
    .local v2, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v11

    .line 778
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 782
    .end local v2    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 794
    :pswitch_0
    new-instance v12, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 799
    .local v12, "location":Landroid/telephony/SmsCbLocation;
    :goto_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v14

    .line 800
    .local v14, "pageCount":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v14, v0, :cond_6

    .line 802
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    invoke-direct {v5, v7, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 805
    .local v5, "concatInfo":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[B

    .line 807
    .local v15, "pdus":[[B
    if-nez v15, :cond_3

    .line 810
    new-array v15, v14, [[B

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_3
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    aput-object v17, v15, v18

    .line 818
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    .line 819
    aget-object v18, v15, v8

    if-eqz v18, :cond_0

    .line 818
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 784
    .end local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v8    # "i":I
    .end local v12    # "location":Landroid/telephony/SmsCbLocation;
    .end local v14    # "pageCount":I
    .end local v15    # "pdus":[[B
    :pswitch_1
    new-instance v12, Landroid/telephony/SmsCbLocation;

    const/16 v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v12, v0, v11, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 785
    .restart local v12    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_1

    .line 789
    .end local v12    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v12, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v16

    invoke-direct {v12, v0, v11, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 790
    .restart local v12    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_1

    .line 826
    .restart local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v8    # "i":I
    .restart local v14    # "pageCount":I
    .restart local v15    # "pdus":[[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .end local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v8    # "i":I
    :goto_3
    invoke-static {v7, v12, v15}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v13

    .line 834
    .local v13, "message":Landroid/telephony/SmsCbMessage;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 841
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_5
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 842
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 844
    .local v9, "info":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v11, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_5

    .line 845
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 848
    .end local v3    # "cid":I
    .end local v4    # "cl":Landroid/telephony/CellLocation;
    .end local v7    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v9    # "info":Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v11    # "lac":I
    .end local v12    # "location":Landroid/telephony/SmsCbLocation;
    .end local v13    # "message":Landroid/telephony/SmsCbMessage;
    .end local v14    # "pageCount":I
    .end local v15    # "pdus":[[B
    .end local v16    # "plmn":Ljava/lang/String;
    .end local v17    # "receivedPdu":[B
    :catch_0
    move-exception v6

    .line 849
    .local v6, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    const-string v18, "sms_code_decode_exception"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    goto/16 :goto_0

    .line 829
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "cid":I
    .restart local v4    # "cl":Landroid/telephony/CellLocation;
    .restart local v7    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11    # "lac":I
    .restart local v12    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v14    # "pageCount":I
    .restart local v16    # "plmn":Ljava/lang/String;
    .restart local v17    # "receivedPdu":[B
    :cond_6
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    new-array v15, v0, [[B

    .line 830
    .restart local v15    # "pdus":[[B
    const/16 v18, 0x0

    aput-object v17, v15, v18
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 782
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 159
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 160
    .local v5, "pduString":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 162
    .local v6, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_4

    .line 163
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 164
    .local v7, "tpStatus":I
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 165
    .local v4, "messageRef":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 166
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 167
    .local v8, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 169
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 170
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 173
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 176
    const-string v9, "phoneId"

    const/4 v10, 0x2

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v9, "format"

    const-string v10, "3gpp"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleStatusReport gsm deliveryIntent send "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",intent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "count":I
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "messageRef":I
    .end local v7    # "tpStatus":I
    .end local v8    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    invoke-virtual {p0, v13, v13, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 195
    return-void

    .line 165
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "messageRef":I
    .restart local v7    # "tpStatus":I
    .restart local v8    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v4    # "messageRef":I
    .end local v7    # "tpStatus":I
    .end local v8    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    const-string v9, "sms_code_decode_exception"

    invoke-static {v9, v12, v12}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    goto :goto_1

    .line 184
    .restart local v0    # "count":I
    .restart local v1    # "fillIn":Landroid/content/Intent;
    .restart local v2    # "i":I
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    .restart local v4    # "messageRef":I
    .restart local v7    # "tpStatus":I
    .restart local v8    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private resultToCause(I)I
    .locals 1
    .param p1, "rc"    # I

    .prologue
    .line 672
    packed-switch p1, :pswitch_data_0

    .line 681
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 676
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 678
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeLastIncomingSms enter.resultToCause(result) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 647
    :cond_0
    return-void
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 654
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 569
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 17
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "dispatchMessage: message is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v1, 0x2

    .line 418
    :goto_0
    return v1

    :cond_0
    move-object/from16 v13, p1

    .line 216
    check-cast v13, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 218
    .local v13, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x1

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 244
    :cond_2
    :goto_1
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v16

    .line 250
    .local v16, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    if-eqz v16, :cond_5

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "Received SMS-PP data download, sending to UICC."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v1, v13}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v1

    goto :goto_0

    .line 231
    .end local v16    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_3
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 232
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    const/4 v1, 0x1

    goto :goto_0

    .line 238
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 239
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_1

    .line 255
    .restart local v16    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    .line 258
    .local v15, "smsc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v2, v15, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 261
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 265
    .end local v15    # "smsc":Ljava/lang/String;
    .end local v16    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v1, :cond_7

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "Received short message on device which doesn\'t support SMS service. Ignored."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 273
    :cond_7
    const/4 v12, 0x0

    .line 274
    .local v12, "handled":Z
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageWaiting(II)V

    .line 276
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v12

    .line 288
    :cond_8
    :goto_2
    if-eqz v12, :cond_a

    .line 289
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 280
    :cond_9
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageWaiting(II)V

    .line 282
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v12

    goto :goto_2

    .line 292
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v1, v2, :cond_b

    .line 296
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 299
    :cond_b
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v14

    .line 301
    .local v14, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v14, :cond_c

    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_15

    .line 303
    :cond_c
    const/4 v1, 0x1

    new-array v7, v1, [[B

    .line 304
    .local v7, "pdus":[[B
    const/4 v1, 0x0

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v2

    aput-object v2, v7, v1

    .line 306
    if-eqz v14, :cond_11

    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_11

    .line 308
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dispatchMessage]delete wap sms index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setNeedDeleteSmsIndex(I)V

    .line 319
    :cond_d
    :goto_3
    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v2, 0xb84

    if-ne v1, v2, :cond_f

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->setAdddress(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 316
    :cond_e
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->addDeleteSmsList(I)V

    goto :goto_3

    .line 325
    :cond_f
    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 376
    :cond_10
    :goto_4
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 331
    :cond_11
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sender:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->ExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v8

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatusOnIcc()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->getExternInterfaceParseResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[B[[BIILjava/lang/String;)I

    move-result v8

    .line 351
    .local v8, "bRet":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bRet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v1, 0x1

    if-ne v8, v1, :cond_12

    .line 356
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 360
    :cond_12
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatusOnIcc()I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[BIIII)V

    goto :goto_4

    .line 362
    .end local v8    # "bRet":I
    :cond_13
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatusOnIcc()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdusOnIcc([[BII)V

    .line 363
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v1, v2, :cond_10

    .line 367
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setNeedDeleteSmsIndex(I)V

    goto/16 :goto_4

    .line 371
    :cond_14
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->addDeleteSmsList(I)V

    goto/16 :goto_4

    .line 379
    .end local v7    # "pdus":[[B
    :cond_15
    const/4 v1, 0x5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatusOnIcc()I

    move-result v2

    if-eq v1, v2, :cond_16

    const/4 v1, 0x7

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatusOnIcc()I

    move-result v2

    if-ne v1, v2, :cond_17

    .line 380
    :cond_16
    const/4 v1, 0x1

    new-array v7, v1, [[B

    .line 381
    .restart local v7    # "pdus":[[B
    const/4 v1, 0x0

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v2

    aput-object v2, v7, v1

    .line 382
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatusOnIcc()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdusOnIcc([[BII)V

    .line 383
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 386
    .end local v7    # "pdus":[[B
    :cond_17
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_19

    .line 388
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v1, :cond_18

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "long sms in card, dispatchPdusOnIcc"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v1, 0x1

    new-array v7, v1, [[B

    .line 392
    .restart local v7    # "pdus":[[B
    const/4 v1, 0x0

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v2

    aput-object v2, v7, v1

    .line 393
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatusOnIcc()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdusOnIcc([[BII)V

    .line 394
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 399
    .end local v7    # "pdus":[[B
    :cond_18
    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v2, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->processDualMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;I)I

    move-result v1

    goto/16 :goto_0

    .line 404
    :cond_19
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dispatchMessage]delete long sms index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setNeedDeleteSmsIndex(I)V

    .line 418
    :cond_1a
    :goto_5
    iget-object v1, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v2, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->processDualMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;I)I

    move-result v1

    goto/16 :goto_0

    .line 413
    :cond_1b
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->addDeleteSmsList(I)V

    goto :goto_5
.end method

.method public dispatchPbParam(III)I
    .locals 1
    .param p1, "total"    # I
    .param p2, "used"    # I
    .param p3, "state"    # I

    .prologue
    .line 203
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchParamPb(III)I

    .line 204
    const/4 v0, -0x1

    return v0
.end method

.method public dispatchSmsParam(III)I
    .locals 1
    .param p1, "total"    # I
    .param p2, "used"    # I
    .param p3, "state"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchParam(III)I

    .line 199
    const/4 v0, -0x1

    return v0
.end method

.method protected dispatchVoicemail(I)I
    .locals 1
    .param p1, "mVoiceMailCnt"    # I

    .prologue
    .line 888
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 661
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "3gpp"

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 117
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 139
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 141
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleBroadcastSms(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 128
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "Failed to write SMS-PP message to UICC"

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xff

    invoke-interface {v1, v4, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 427
    if-eqz p6, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 430
    .local v6, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez v6, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "sendData getSubmitPdu fail"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v0, "sms_code_decode_exception"

    invoke-static {v0, v2, v2}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 435
    :cond_0
    if-eqz v6, :cond_2

    .line 436
    iget-object v1, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 441
    :goto_1
    return-void

    .line 427
    .end local v6    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 439
    .restart local v6    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()S

    move-result v21

    .line 481
    .local v21, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 482
    .local v15, "msgCount":I
    const/4 v7, 0x0

    .line 485
    .local v7, "encoding":I
    sput v15, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 486
    new-array v0, v15, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v18, v0

    .line 488
    .local v18, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v7, :cond_2

    .line 489
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v15, :cond_2

    .line 490
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v17

    .line 491
    .local v17, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_1

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    if-ne v7, v2, :cond_1

    .line 494
    :cond_0
    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 498
    :cond_1
    aput-object v17, v18, v19

    .line 489
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 503
    .end local v17    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v19    # "i":I
    :cond_2
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v15, :cond_a

    .line 504
    new-instance v16, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 505
    .local v16, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 506
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 507
    move-object/from16 v0, v16

    iput v15, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 518
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 519
    new-instance v22, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 520
    .local v22, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 521
    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    .line 524
    aget-object v2, v18, v19

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 525
    aget-object v2, v18, v19

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 528
    :cond_3
    const/4 v11, 0x0

    .line 529
    .local v11, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_4

    .line 530
    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 533
    .restart local v11    # "sentIntent":Landroid/app/PendingIntent;
    :cond_4
    const/4 v12, 0x0

    .line 534
    .local v12, "deliveryIntent":Landroid/app/PendingIntent;
    const-string v2, "persist.yulong.ctstest"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_8

    .line 537
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_6

    .line 538
    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .line 548
    .restart local v12    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v12, :cond_9

    const/4 v5, 0x1

    :goto_3
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    aget-object v2, v18, v19

    iget v8, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    aget-object v2, v18, v19

    iget v9, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 554
    .local v20, "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez v20, :cond_7

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "sendMultiPartText getSubmitPdu fail"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v2, "sms_code_decode_exception"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 560
    :cond_7
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v0, v16

    iget v14, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move-object/from16 v8, p0

    move-object/from16 v13, p1

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;II)V

    .line 503
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 542
    .end local v20    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_8
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_6

    .line 544
    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .restart local v12    # "deliveryIntent":Landroid/app/PendingIntent;
    goto :goto_2

    .line 548
    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    .line 563
    .end local v11    # "sentIntent":Landroid/app/PendingIntent;
    .end local v12    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v16    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v22    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_a
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z

    .prologue
    .line 577
    if-eqz p7, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    iget v6, p4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v7, p4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 580
    .local v8, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v8, :cond_1

    .line 581
    iget-object v1, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p6

    move-object/from16 v4, p7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 586
    :goto_1
    return-void

    .line 577
    .end local v8    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 584
    .restart local v8    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 9
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 591
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 592
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "smsc"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v3, v4

    check-cast v3, [B

    .line 593
    .local v3, "smsc":[B
    const-string v4, "pdu"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 595
    .local v1, "pdu":[B
    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 597
    .local v2, "reply":Landroid/os/Message;
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v4, :cond_0

    .line 598
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSms:  mRetryCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMessageRef="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    aget-byte v4, v1, v8

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_0

    .line 607
    aget-byte v4, v1, v8

    or-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    .line 608
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    .line 622
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getLongMsgSendAndStatusChangeImplType(I)I

    move-result v4

    if-nez v4, :cond_1

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    if-ge v4, v5, :cond_1

    .line 624
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send multi-part sms via one trafic channel, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", total = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendSMSMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 630
    :goto_0
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->smsResultLock:Z

    .line 631
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: yangmingming GsmSMSDispatcher sendSms, Sleep end= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-void

    .line 628
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmSMSDispatcher sendText: destAddr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-eqz p5, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 460
    .local v6, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez v6, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "sendText getSubmitPdu fail"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v0, "sms_code_decode_exception"

    invoke-static {v0, v3, v3}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 466
    :cond_0
    if-eqz v6, :cond_2

    .line 467
    iget-object v1, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 472
    :goto_1
    return-void

    .line 456
    .end local v6    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 470
    .restart local v6    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 669
    return-void
.end method

.method public setCnmiMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCnmiMode(ILandroid/os/Message;)V

    .line 864
    return-void
.end method

.method updateMessageWaitingIndicator(Z)V
    .locals 3
    .param p1, "mwi"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 149
    :cond_0
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
