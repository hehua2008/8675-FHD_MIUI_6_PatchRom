.class Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;
.super Ljava/lang/Object;
.source "IDecodImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IDecodImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceLoad"
.end annotation


# instance fields
.field mChanged:Z

.field mMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/IDecodImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IDecodImpl;Ljava/lang/String;)V
    .locals 1
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    iput-object p2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    return-void
.end method

.method private extractHref()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const-string v1, ""

    .local v1, "href":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const-string v4, "00"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->updatePostion(Ljava/lang/String;)I

    move-result v2

    .local v2, "postion":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IDecodImpl;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .local v3, "uri":[B
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    new-instance v1, Ljava/lang/String;

    .end local v1    # "href":Ljava/lang/String;
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "uri":[B
    .restart local v1    # "href":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    return-object v1

    .end local v1    # "href":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    .restart local v1    # "href":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private extractHrefPostfix(I)Ljava/lang/String;
    .locals 2
    .param p1, "attr"    # I

    .prologue
    const-string v0, ""

    .local v0, "href_postfix":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_com_value:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_edu_value:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_net_value:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_org_value:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private extractPath()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const-string v1, ""

    .local v1, "href_path":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const-string v5, "00"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->updatePostion(Ljava/lang/String;)I

    move-result v3

    .local v3, "postion":I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IDecodImpl;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .local v4, "uri":[B
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .end local v1    # "href_path":Ljava/lang/String;
    .local v2, "href_path":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "href_path":Ljava/lang/String;
    .restart local v1    # "href_path":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    iget-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    .end local v4    # "uri":[B
    :goto_1
    return-object v1

    .restart local v4    # "uri":[B
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v4    # "uri":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_1
.end method


# virtual methods
.method public actionAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public advance(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public attrToken()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "attr":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    return v0
.end method

.method public extractAction()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    return-void
.end method

.method extractHrefPrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "attr"    # I

    .prologue
    const-string v0, ""

    .local v0, "href_prefix":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_null_value:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_http_value:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_http_www_value:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_https_value:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_https_www_value:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method hrefAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->attrToken()I

    move-result v0

    return v0
.end method

.method public loop()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public pathAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    const/16 v0, 0x85

    if-eq p1, v0, :cond_0

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_0

    const/16 v0, 0x88

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryParseAsActionToken(I)Z
    .locals 3
    .param p1, "attr"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->actionAttr(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget v0, v0, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iput p1, v0, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->extractAction()V

    # getter for: Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/IDecodImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SL attr action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget v2, v2, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->changed()Z

    move-result v0

    goto :goto_0
.end method

.method public tryParseAsHrefToken(I)Z
    .locals 3
    .param p1, "attr"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->hrefAttr(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v0, Lcom/android/internal/telephony/IDecodImpl;->href:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->extractHrefPrefix(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    invoke-direct {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->extractHref()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/IDecodImpl;->href:Ljava/lang/String;

    # getter for: Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/IDecodImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SL attr href_prefix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v2, v2, Lcom/android/internal/telephony/IDecodImpl;->href_prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/IDecodImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SL attr href:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v2, v2, Lcom/android/internal/telephony/IDecodImpl;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->changed()Z

    move-result v0

    goto :goto_0
.end method

.method public tryParseAsPathToken(I)Z
    .locals 3
    .param p1, "attr"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->pathAttr(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->extractHrefPostfix(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    invoke-direct {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->extractPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/IDecodImpl;->href_path:Ljava/lang/String;

    # getter for: Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/IDecodImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SL attr href_postfix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v2, v2, Lcom/android/internal/telephony/IDecodImpl;->href_postfix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/IDecodImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SL attr href_path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v2, v2, Lcom/android/internal/telephony/IDecodImpl;->href_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->changed()Z

    move-result v0

    goto :goto_0
.end method

.method updatePostion(Ljava/lang/String;)I
    .locals 3
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "postion":I
    :goto_0
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method
