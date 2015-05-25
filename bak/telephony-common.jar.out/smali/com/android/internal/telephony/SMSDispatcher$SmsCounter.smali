.class public Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsCounter"
.end annotation


# instance fields
.field private mCheckPeriod:I

.field private mMaxAllowed:I

.field private mSmsStamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;II)V
    .locals 1
    .param p2, "mMax"    # I
    .param p3, "mPeriod"    # I

    .prologue
    .line 2280
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2281
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mMaxAllowed:I

    .line 2282
    iput p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mCheckPeriod:I

    .line 2283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mSmsStamp:Ljava/util/HashMap;

    .line 2284
    return-void
.end method

.method private isUnderLimit(Ljava/util/ArrayList;I)Z
    .locals 8
    .param p2, "smsWaiting"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "sent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 2304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2306
    .local v0, "ct":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: SMS send size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mCheckPeriod:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 2309
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2313
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, p2

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mMaxAllowed:I

    if-gt v2, v4, :cond_2

    .line 2314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 2315
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2314
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2317
    :cond_1
    const/4 v2, 0x1

    .line 2319
    .end local v1    # "i":I
    :goto_2
    return v2

    :cond_2
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public check(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "smsWaiting"    # I

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mSmsStamp:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->isUnderLimit(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method
