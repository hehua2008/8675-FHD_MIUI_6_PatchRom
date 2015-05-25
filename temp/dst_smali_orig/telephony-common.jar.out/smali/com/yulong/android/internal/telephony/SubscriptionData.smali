.class public Lcom/yulong/android/internal/telephony/SubscriptionData;
.super Ljava/lang/Object;
.source "SubscriptionData.java"


# instance fields
.field public subscription:[Lcom/yulong/android/internal/telephony/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "numSub"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, p1, [Lcom/yulong/android/internal/telephony/Subscription;

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    new-instance v2, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v2}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/yulong/android/internal/telephony/SubscriptionData;)Lcom/yulong/android/internal/telephony/SubscriptionData;
    .locals 3
    .param p1, "from"    # Lcom/yulong/android/internal/telephony/SubscriptionData;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yulong/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v1

    new-array v1, v1, [Lcom/yulong/android/internal/telephony/Subscription;

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/yulong/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    new-instance v2, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v2}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/Subscription;->copyFrom(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscription(Lcom/yulong/android/internal/telephony/Subscription;)Lcom/yulong/android/internal/telephony/Subscription;
    .locals 2
    .param p1, "sub"    # Lcom/yulong/android/internal/telephony/Subscription;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/yulong/android/internal/telephony/Subscription;->isSame(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v1, v1, v0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasSubscription(Lcom/yulong/android/internal/telephony/Subscription;)Z
    .locals 2
    .param p1, "sub"    # Lcom/yulong/android/internal/telephony/Subscription;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/yulong/android/internal/telephony/Subscription;->isSame(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
