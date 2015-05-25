.class public final Lcom/yulong/android/internal/telephony/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Subscription"

.field public static final SUBSCRIPTION_INDEX_INVALID:I = -0x1


# instance fields
.field private DEBUG:Z

.field public appId:Ljava/lang/String;

.field public appLabel:Ljava/lang/String;

.field public appType:Ljava/lang/String;

.field public iccId:Ljava/lang/String;

.field public m3gpp2Index:I

.field public m3gppIndex:I

.field public slotId:I

.field public subId:I

.field public subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->DEBUG:Z

    .line 45
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/Subscription;->clear()V

    .line 46
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 122
    iput v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 123
    iput v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 124
    iput v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 125
    sget-object v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 126
    iput-object v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public copyFrom(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;
    .locals 2
    .param p1, "from"    # Lcom/yulong/android/internal/telephony/Subscription;

    .prologue
    .line 138
    if-eqz p1, :cond_3

    .line 139
    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 140
    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 141
    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 142
    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 143
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 144
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    .line 147
    :cond_0
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    .line 150
    :cond_1
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 153
    :cond_2
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 154
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    .line 158
    :cond_3
    return-object p0
.end method

.method public equals(Lcom/yulong/android/internal/telephony/Subscription;)Z
    .locals 2
    .param p1, "sub"    # Lcom/yulong/android/internal/telephony/Subscription;

    .prologue
    .line 62
    if-eqz p1, :cond_8

    .line 63
    iget v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    iget v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    iget v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    iget v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    iget v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    :cond_7
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 77
    :cond_8
    const-string v0, "Subscription"

    const-string v1, "Subscription.equals: sub == null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppIndex()I
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 167
    iget v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 169
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method public isSame(Lcom/yulong/android/internal/telephony/Subscription;)Z
    .locals 3
    .param p1, "sub"    # Lcom/yulong/android/internal/telephony/Subscription;

    .prologue
    .line 90
    if-eqz p1, :cond_7

    .line 91
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "Subscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSame(): this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "Subscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare with = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    iget v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    iget v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    :cond_6
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription = { slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 3gppIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 3gpp2Index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
