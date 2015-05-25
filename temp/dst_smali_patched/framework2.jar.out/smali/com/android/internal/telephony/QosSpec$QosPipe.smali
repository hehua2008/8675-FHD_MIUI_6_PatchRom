.class public Lcom/android/internal/telephony/QosSpec$QosPipe;
.super Ljava/lang/Object;
.source "QosSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QosSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QosPipe"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    }
.end annotation


# instance fields
.field mQosParams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/QosSpec;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/QosSpec;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->this$0:Lcom/android/internal/telephony/QosSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/QosSpec$QosPipe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/QosSpec$QosPipe;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->getRilPipeSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRilPipeSpec()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-string v5, ""

    .local v5, "rilPipeSpec":Ljava/lang/String;
    const-string v2, ""

    .local v2, "keyValue":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    new-array v7, v8, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    .local v0, "arr$":[Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .local v4, "qkv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v4, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosKey:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL_QosSpecKeys;->getName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "qkv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "kv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    iget-object v4, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "itr":Ljava/util/ListIterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "kv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    check-cast v2, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    .restart local v2    # "kv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    iget v4, v2, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosKey:I

    if-ne v4, p1, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosValue:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .end local v3    # "value":Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getKeys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    .local v0, "arr$":[Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .local v4, "qkv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    iget v5, v4, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosKey:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "qkv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    :cond_0
    return-object v2
.end method

.method public getValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    .local v0, "arr$":[Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "qkv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    iget-object v5, v3, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosValue:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "qkv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    :cond_0
    return-object v4
.end method

.method public getValues(I)Ljava/util/List;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "kv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    iget-object v3, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/ListIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "kv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    .restart local v1    # "kv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    iget v3, v1, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosKey:I

    if-ne v3, p1, :cond_0

    iget-object v3, v1, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosValue:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(ILjava/lang/String;)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/QosSpec$QosSpecKey;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QosSpec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring invalid key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;-><init>(Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .local v1, "firstTime":Z
    iget-object v6, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedList;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;

    .local v0, "arr$":[Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .local v4, "qkv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    iget v6, v4, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosKey:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v4    # "qkv":Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
    :cond_1
    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
