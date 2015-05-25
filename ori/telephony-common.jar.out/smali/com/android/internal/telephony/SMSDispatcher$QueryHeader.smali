.class Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHeader"
.end annotation


# instance fields
.field public addr:Ljava/lang/String;

.field public msgCount:I

.field public ref:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    .prologue
    .line 2890
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

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

    .line 2897
    if-ne p0, p1, :cond_1

    .line 2904
    :cond_0
    :goto_0
    return v1

    .line 2900
    :cond_1
    instance-of v3, p1, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;

    if-nez v3, :cond_2

    move v1, v2

    .line 2901
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2903
    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;

    .line 2904
    .local v0, "lhs":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2910
    const/16 v0, 0x11

    .line 2911
    .local v0, "result":I
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    add-int/lit16 v0, v1, 0x20f

    .line 2912
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    add-int v0, v1, v2

    .line 2913
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 2915
    return v0

    .line 2913
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method
