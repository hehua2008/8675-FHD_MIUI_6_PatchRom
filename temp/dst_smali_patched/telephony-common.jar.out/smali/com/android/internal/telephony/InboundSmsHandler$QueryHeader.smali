.class Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHeader"
.end annotation


# instance fields
.field public addr:Ljava/lang/String;

.field public msgCount:I

.field public ref:I

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;

    .local v0, "lhs":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    iget v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    iget v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v0, 0x11

    .local v0, "result":I
    iget v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method
