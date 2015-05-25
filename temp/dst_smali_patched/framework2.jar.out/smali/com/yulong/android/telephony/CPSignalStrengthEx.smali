.class public Lcom/yulong/android/telephony/CPSignalStrengthEx;
.super Ljava/lang/Object;
.source "CPSignalStrengthEx.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CPSignalStrengthEx"

.field private static sInstance:Lcom/yulong/android/telephony/CPSignalStrengthEx;


# instance fields
.field private curTime:J

.field private signalDelayTimer:I

.field private startTime:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->signalDelayTimer:I

    iput-wide v2, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->startTime:J

    iput-wide v2, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->curTime:J

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->signalUpdateDelayTimer()I

    move-result v0

    .local v0, "delayTimer":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayTimer ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->setSignalDelayTimer(I)V

    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/yulong/android/telephony/CPSignalStrengthEx;
    .locals 2

    .prologue
    const-class v1, Lcom/yulong/android/telephony/CPSignalStrengthEx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->sInstance:Lcom/yulong/android/telephony/CPSignalStrengthEx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulong/android/telephony/CPSignalStrengthEx;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CPSignalStrengthEx;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->sInstance:Lcom/yulong/android/telephony/CPSignalStrengthEx;

    :cond_0
    sget-object v0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->sInstance:Lcom/yulong/android/telephony/CPSignalStrengthEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CPSignalStrengthEx"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dataRegistInDoOrLTEWithVoiceService(Landroid/telephony/ServiceState;)Z
    .locals 6
    .param p1, "newSS"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v0, 0x0

    .local v0, "dataRegistDoOrLTE":Z
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .local v3, "newState":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    .local v2, "newDataState":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .local v1, "newDataRadioTech":I
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    const/4 v4, 0x7

    if-lt v1, v4, :cond_0

    const/16 v4, 0xe

    if-gt v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " delayDataDetachInShortTime newState ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newDataState ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newDataRadioTech ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dataServiceDropFromDoOrLTE(ZLandroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .locals 10
    .param p1, "dataDoOrLTEEnable"    # Z
    .param p2, "oldSS"    # Landroid/telephony/ServiceState;
    .param p3, "newSS"    # Landroid/telephony/ServiceState;

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v0, 0x0

    .local v0, "delayDataDetachFlag":Z
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .local v6, "oldState":I
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    .local v5, "oldDataState":I
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    .local v4, "oldDataRadioTech":I
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .local v3, "newState":I
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    .local v2, "newDataState":I
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .local v1, "newDataRadioTech":I
    if-nez v6, :cond_1

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-ne v7, v2, :cond_1

    if-lt v4, v8, :cond_1

    if-gt v4, v9, :cond_1

    if-ne p1, v7, :cond_1

    const-string v7, " delayDataDetachInShortTime data out of service from Do or LTE"

    invoke-static {v7}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v6, :cond_0

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    if-nez v2, :cond_0

    if-lt v4, v8, :cond_0

    if-gt v4, v9, :cond_0

    if-lt v1, v8, :cond_2

    if-le v4, v9, :cond_0

    :cond_2
    if-ne p1, v7, :cond_0

    const-string v7, " delayDataDetachInShortTime data in service,but data radio tech not Do or LTE"

    invoke-static {v7}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSignalDelayTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->signalDelayTimer:I

    return v0
.end method

.method public setSignalDelayTimer(I)V
    .locals 0
    .param p1, "signalDelayTimer"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->signalDelayTimer:I

    return-void
.end method

.method public smoothGsmSignalStrength(IIZ)I
    .locals 8
    .param p1, "level"    # I
    .param p2, "oldLevel"    # I
    .param p3, "isGsm"    # Z

    .prologue
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->getSignalDelayTimer()I

    move-result v0

    .local v0, "delayTimer":I
    if-lez v0, :cond_5

    sub-int v2, p2, p1

    if-le v2, v3, :cond_3

    if-eqz p3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1111 startTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->curTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->startTime:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->curTime:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->startTime:J

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2222 time1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->curTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->curTime:J

    iget-wide v4, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->startTime:J

    sub-long/2addr v2, v4

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    move p1, p2

    const-string v2, " 333 no change"

    invoke-static {v2}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v1, p1

    .end local p1    # "level":I
    .local v1, "level":I
    :goto_2
    return v1

    .end local v1    # "level":I
    .restart local p1    # "level":I
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->curTime:J

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p2, -0x1

    iput-wide v6, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->startTime:J

    iput-wide v6, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->curTime:J

    const-string v2, " 444 notify phone"

    invoke-static {v2}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-le p1, p2, :cond_4

    if-eqz p3, :cond_4

    iput-wide v6, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->startTime:J

    iput-wide v6, p0, Lcom/yulong/android/telephony/CPSignalStrengthEx;->curTime:J

    const-string v2, " 555 clear"

    invoke-static {v2}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, " 666 clear"

    invoke-static {v2}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sub-int v2, p2, p1

    if-le v2, v3, :cond_0

    if-eqz p3, :cond_0

    add-int/lit8 p1, p2, -0x1

    move v1, p1

    .end local p1    # "level":I
    .restart local v1    # "level":I
    goto :goto_2
.end method

.method public updateWithDataSerilization(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)V
    .locals 6
    .param p1, "oldSS"    # Landroid/telephony/ServiceState;
    .param p2, "newSS"    # Landroid/telephony/ServiceState;
    .param p3, "phoneType"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v5, 0x3

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .local v1, "newState":I
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .local v0, "newDataState":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .local v2, "oldDataRadioTech":I
    if-nez v1, :cond_6

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    :cond_0
    const/4 v3, 0x2

    if-ne v3, p3, :cond_3

    if-lt v2, v4, :cond_2

    const/16 v3, 0xe

    if-gt v2, v3, :cond_2

    invoke-virtual {p2, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateWithDataSerilization , cdma phone set old radio tech"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2, v4}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    const-string v3, " updateWithDataSerilization , cdma phone set default radio tech-evdo 7"

    invoke-static {v3}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    if-ne v3, p3, :cond_1

    if-lt v2, v5, :cond_4

    const/16 v3, 0xf

    if-gt v2, v3, :cond_4

    invoke-virtual {p2, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateWithDataSerilization , gsm phone set old radio tech"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_5

    const/16 v3, 0x9

    invoke-virtual {p2, v3}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    const-string v3, " updateWithDataSerilization , gsm phone set default radio tech-hsdpa"

    invoke-static {v3}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v5}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    const-string v3, " updateWithDataSerilization , gsm phone set default radio tech-umts"

    invoke-static {v3}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v3, " updateWithDataSerilization , phone one out of service ,do nothing"

    invoke-static {v3}, Lcom/yulong/android/telephony/CPSignalStrengthEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
