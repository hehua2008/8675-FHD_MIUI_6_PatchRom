.class public Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final PARTIAL_SEGMENT_EXPIRE_AGE:J = 0x9a7ec800L

.field private static final PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pdu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sequence"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "reference_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 70
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "SmsBroadcastUndelivered"

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 87
    iput-object p3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "SmsBroadcastUndelivered"

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    .line 94
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 95
    iput-object p3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->setLogTag()V

    .line 97
    return-void
.end method

.method private broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 323
    .local v0, "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :goto_0
    if-eqz v0, :cond_1

    .line 324
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 328
    :goto_1
    return-void

    .line 321
    .end local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .restart local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    goto :goto_0

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format, can\'t deliver."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private scanRawTable()V
    .locals 42

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v33

    .line 119
    .local v33, "startTime":J
    const/4 v10, 0x0

    .line 120
    .local v10, "cursor":Landroid/database/Cursor;
    const-wide v28, 0x7fffffffffffffffL

    .line 121
    .local v28, "lDelayTime":J
    const-wide v13, 0x7fffffffffffffffL

    .line 122
    .local v13, "displayDelayTime":J
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v9, "alNeedDispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v11, "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v38, "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsHandler;->getSmsFamilyValue()I

    move-result v20

    .line 132
    .local v20, "familyVal":I
    new-instance v39, Ljava/lang/StringBuffer;

    const-string v3, "network_type="

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 133
    .local v39, "where":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v20

    mul-int/lit8 v3, v3, 0xa

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 134
    const-string v3, " OR network_type="

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v20

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 138
    if-nez v10, :cond_3

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    const-string v4, "error getting pending message cursor"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    if-eqz v10, :cond_0

    .line 291
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_0
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 294
    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 295
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->clear()V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished scanning raw table in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v5, v5, v33

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next display delay time(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v13, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v13, v3

    if-eqz v3, :cond_1

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v35, v3, v13

    .line 301
    .local v35, "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v35

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 304
    .end local v35    # "timeout":J
    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v28, v3

    if-eqz v3, :cond_2

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v35, v3, v28

    .line 307
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    .end local v20    # "familyVal":I
    .end local v39    # "where":Ljava/lang/StringBuffer;
    :goto_0
    move-wide/from16 v0, v35

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 311
    .end local v35    # "timeout":J
    :cond_2
    return-void

    .line 142
    .restart local v20    # "familyVal":I
    .restart local v39    # "where":Ljava/lang/StringBuffer;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const/16 v22, 0x1

    .line 143
    .local v22, "isCurrentFormat3gpp2":Z
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 145
    .local v26, "lCurrentTime":J
    :cond_4
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_10

    .line 148
    :try_start_2
    new-instance v37, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/database/Cursor;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .local v37, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :try_start_3
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 287
    .end local v20    # "familyVal":I
    .end local v22    # "isCurrentFormat3gpp2":Z
    .end local v26    # "lCurrentTime":J
    .end local v37    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v39    # "where":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v16

    .line 288
    .local v16, "e":Landroid/database/SQLException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    const-string v4, "error reading pending SMS messages"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    if-eqz v10, :cond_5

    .line 291
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_5
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 294
    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 295
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->clear()V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished scanning raw table in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v5, v5, v33

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next display delay time(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v13, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v13, v3

    if-eqz v3, :cond_6

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v35, v3, v13

    .line 301
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v35

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 304
    .end local v35    # "timeout":J
    :cond_6
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v28, v3

    if-eqz v3, :cond_2

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v35, v3, v28

    .line 307
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 142
    .end local v16    # "e":Landroid/database/SQLException;
    .end local v35    # "timeout":J
    .restart local v20    # "familyVal":I
    .restart local v39    # "where":Ljava/lang/StringBuffer;
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 149
    .restart local v22    # "isCurrentFormat3gpp2":Z
    .restart local v26    # "lCurrentTime":J
    :catch_1
    move-exception v16

    .line 150
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading SmsTracker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 290
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    .end local v20    # "familyVal":I
    .end local v22    # "isCurrentFormat3gpp2":Z
    .end local v26    # "lCurrentTime":J
    .end local v39    # "where":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_8

    .line 291
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_8
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 294
    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 295
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->clear()V

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finished scanning raw table in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v33

    const-wide/32 v40, 0xf4240

    div-long v6, v6, v40

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next display delay time(s) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v13, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lDelayTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v13, v4

    if-eqz v4, :cond_9

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v35, v4, v13

    .line 301
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v35

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 304
    .end local v35    # "timeout":J
    :cond_9
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v28, v4

    if-eqz v4, :cond_a

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v6, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long v35, v4, v28

    .line 307
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v35

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 290
    .end local v35    # "timeout":J
    :cond_a
    throw v3

    .line 159
    .restart local v20    # "familyVal":I
    .restart local v22    # "isCurrentFormat3gpp2":Z
    .restart local v26    # "lCurrentTime":J
    .restart local v37    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .restart local v39    # "where":Ljava/lang/StringBuffer;
    :cond_b
    :try_start_6
    new-instance v21, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 160
    .local v21, "header":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v30

    .line 161
    .local v30, "seqNum":I
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/android/internal/telephony/InboundSmsHandler;->SEGMENT_DISPLAY_INTERVAL:I

    mul-int v15, v3, v4

    .line 162
    .local v15, "displayInterval":I
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v3

    sub-long v24, v26, v3

    .line 163
    .local v24, "lCmpTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", seqNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lCmpTime(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v24, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, v38

    move-object/from16 v1, v21

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alNeedDispatchRef contains ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;

    .line 169
    .local v31, "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    add-int/lit8 v4, v30, -0x1

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 170
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    .line 171
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :goto_3
    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteRef contains ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;

    .line 190
    .local v32, "smsinfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v32

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    .line 191
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 173
    .end local v31    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    .end local v32    # "smsinfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alNeedDispatchRef add ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SMS_DISPLAY_TIMOUEOUT(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v15, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v31, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 176
    .restart local v31    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    new-array v3, v3, [[B

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    .line 177
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    add-int/lit8 v4, v30, -0x1

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 178
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/InboundSmsTracker;->getNetworkType()I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->networkType:I

    .line 179
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->destPort:I

    .line 180
    const/4 v3, 0x1

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    .line 181
    move-wide/from16 v0, v24

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->delay:J

    .line 182
    int-to-long v3, v15

    move-object/from16 v0, v31

    iput-wide v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->displayTimeout:J

    .line 183
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 192
    :cond_d
    sget v3, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v3, v3

    cmp-long v3, v24, v3

    if-lez v3, :cond_e

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteRef add ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SMS_DISPATCH_TIMOUEOUT(h) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    const v6, 0x36ee80

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v32, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 197
    .restart local v32    # "smsinfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v3

    move-object/from16 v0, v32

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->destport:I

    .line 198
    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    .line 199
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/InboundSmsTracker;->getNetworkType()I

    move-result v3

    move-object/from16 v0, v32

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->networkType:I

    .line 200
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 203
    .end local v32    # "smsinfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    :cond_e
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v28, v3

    if-eqz v3, :cond_f

    cmp-long v3, v24, v28

    if-lez v3, :cond_4

    .line 204
    :cond_f
    move-wide/from16 v28, v24

    goto/16 :goto_2

    .line 243
    .end local v15    # "displayInterval":I
    .end local v21    # "header":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v24    # "lCmpTime":J
    .end local v30    # "seqNum":I
    .end local v31    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    .end local v37    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsHandler;->isCmccTestMode()Z

    move-result v17

    .line 244
    .local v17, "enable":Z
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 246
    .local v23, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;>;"
    :cond_11
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 247
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 249
    .local v19, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 250
    .restart local v21    # "header":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;

    .line 251
    .restart local v31    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 252
    .restart local v37    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    if-eqz v37, :cond_11

    .line 254
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    array-length v4, v4

    if-ge v3, v4, :cond_13

    if-nez v17, :cond_12

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->destPort:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13

    .line 255
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg not all received, smsInfo.destPort = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->destPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", not dispatch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 258
    :cond_13
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    array-length v4, v4

    if-ge v3, v4, :cond_15

    move-object/from16 v0, v31

    iget-wide v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->delay:J

    move-object/from16 v0, v31

    iget-wide v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->displayTimeout:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_15

    .line 259
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v13, v3

    if-eqz v3, :cond_14

    move-object/from16 v0, v31

    iget-wide v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->displayTimeout:J

    move-object/from16 v0, v31

    iget-wide v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->delay:J

    sub-long/2addr v3, v5

    cmp-long v3, v13, v3

    if-lez v3, :cond_11

    .line 260
    :cond_14
    move-object/from16 v0, v31

    iget-wide v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->displayTimeout:J

    move-object/from16 v0, v31

    iget-wide v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->delay:J

    sub-long v13, v3, v5

    goto/16 :goto_4

    .line 264
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scanRawTable() display timeout,broadcast ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 290
    if-eqz v10, :cond_16

    .line 291
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_16
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 294
    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 295
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->clear()V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished scanning raw table in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v5, v5, v33

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next display delay time(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v13, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v13, v3

    if-eqz v3, :cond_17

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v35, v3, v13

    .line 301
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v35

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 304
    .end local v35    # "timeout":J
    :cond_17
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v28, v3

    if-eqz v3, :cond_2

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v35, v3, v28

    .line 307
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 271
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;"
    .end local v21    # "header":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v31    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    .end local v35    # "timeout":J
    .end local v37    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_18
    :try_start_7
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 272
    .local v12, "deleteiter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;>;"
    :cond_19
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 273
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 275
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 276
    .restart local v21    # "header":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;

    .line 277
    .local v31, "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 278
    .restart local v37    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    if-eqz v37, :cond_19

    .line 279
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->destport:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    if-nez v17, :cond_19

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scanRawTable() concatenate max timeout, broadcast ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 290
    if-eqz v10, :cond_1a

    .line 291
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_1a
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 294
    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 295
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->clear()V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished scanning raw table in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v5, v5, v33

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next display delay time(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v13, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v13, v3

    if-eqz v3, :cond_1b

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v35, v3, v13

    .line 301
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v35

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 304
    .end local v35    # "timeout":J
    :cond_1b
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v28, v3

    if-eqz v3, :cond_2

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v35, v3, v28

    .line 307
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 290
    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .end local v21    # "header":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v31    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    .end local v35    # "timeout":J
    .end local v37    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_1c
    if-eqz v10, :cond_1d

    .line 291
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_1d
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 294
    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 295
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->clear()V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished scanning raw table in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v5, v5, v33

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next display delay time(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v13, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v13, v3

    if-eqz v3, :cond_1e

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v35, v3, v13

    .line 301
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v35

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 304
    .end local v35    # "timeout":J
    :cond_1e
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v28, v3

    if-eqz v3, :cond_2

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v35, v3, v28

    .line 307
    .restart local v35    # "timeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0
.end method

.method private setLogTag()V
    .locals 4

    .prologue
    .line 380
    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    .line 381
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    .line 383
    .local v0, "commType":I
    packed-switch v0, :pswitch_data_0

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_NO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    .line 399
    :goto_0
    return-void

    .line 385
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 388
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_T"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 391
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_W"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 394
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getInboundSmsHandler()Lcom/android/internal/telephony/InboundSmsHandler;
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 370
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->TAG:Ljava/lang/String;

    const-string v1, "scanning raw table for undelivered messages"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable()V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    .line 109
    :cond_1
    return-void
.end method
