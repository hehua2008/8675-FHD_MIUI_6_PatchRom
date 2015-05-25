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
    .line 333
    iput-object p1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    .line 334
    iput-object p2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    .line 335
    return-void
.end method

.method private extractHref()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 421
    const-string v1, ""

    .line 422
    .local v1, "href":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    .line 423
    const-string v4, "00"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->updatePostion(Ljava/lang/String;)I

    move-result v2

    .line 426
    .local v2, "postion":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IDecodImpl;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 428
    .local v3, "uri":[B
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 429
    new-instance v1, Ljava/lang/String;

    .end local v1    # "href":Ljava/lang/String;
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v3    # "uri":[B
    .restart local v1    # "href":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    .line 437
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    .line 439
    return-object v1

    .line 431
    .end local v1    # "href":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    .line 433
    .restart local v1    # "href":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private extractHrefPostfix(I)Ljava/lang/String;
    .locals 2
    .param p1, "attr"    # I

    .prologue
    .line 473
    const-string v0, ""

    .line 474
    .local v0, "href_postfix":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 495
    :goto_0
    return-object v0

    .line 476
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_com_value:Ljava/lang/String;

    .line 477
    goto :goto_0

    .line 480
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_edu_value:Ljava/lang/String;

    .line 481
    goto :goto_0

    .line 484
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_net_value:Ljava/lang/String;

    .line 485
    goto :goto_0

    .line 488
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_org_value:Ljava/lang/String;

    .line 489
    goto :goto_0

    .line 474
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

    .line 499
    const-string v1, ""

    .line 500
    .local v1, "href_path":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    .line 501
    const-string v5, "00"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->updatePostion(Ljava/lang/String;)I

    move-result v3

    .line 504
    .local v3, "postion":I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IDecodImpl;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 505
    .local v4, "uri":[B
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 506
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .end local v1    # "href_path":Ljava/lang/String;
    .local v2, "href_path":Ljava/lang/String;
    move-object v1, v2

    .line 510
    .end local v2    # "href_path":Ljava/lang/String;
    .restart local v1    # "href_path":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    .line 511
    iget-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    .line 516
    .end local v4    # "uri":[B
    :goto_1
    return-object v1

    .line 508
    .restart local v4    # "uri":[B
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    .end local v4    # "uri":[B
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_1
.end method


# virtual methods
.method public actionAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    .line 408
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 410
    :cond_0
    const/4 v0, 0x1

    .line 413
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
    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public attrToken()I
    .locals 5

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
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

    .line 367
    :goto_0
    return v0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 364
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changed()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    return v0
.end method

.method public extractAction()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    .line 538
    return-void
.end method

.method extractHrefPrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "attr"    # I

    .prologue
    .line 443
    const-string v0, ""

    .line 444
    .local v0, "href_prefix":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 469
    :goto_0
    return-object v0

    .line 446
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_null_value:Ljava/lang/String;

    .line 447
    goto :goto_0

    .line 450
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_http_value:Ljava/lang/String;

    .line 451
    goto :goto_0

    .line 454
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_http_www_value:Ljava/lang/String;

    .line 455
    goto :goto_0

    .line 458
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_https_value:Ljava/lang/String;

    .line 459
    goto :goto_0

    .line 462
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_https_www_value:Ljava/lang/String;

    .line 463
    goto :goto_0

    .line 444
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
    .line 371
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

    .line 375
    :cond_0
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->attrToken()I

    move-result v0

    return v0
.end method

.method public loop()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    iput-boolean v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mChanged:Z

    .line 351
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
    .line 399
    const/16 v0, 0x85

    if-eq p1, v0, :cond_0

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_0

    const/16 v0, 0x88

    if-ne p1, v0, :cond_1

    .line 401
    :cond_0
    const/4 v0, 0x1

    .line 404
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
    .line 542
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->actionAttr(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    const/4 v0, 0x0

    .line 553
    :goto_0
    return v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget v0, v0, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iput p1, v0, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->extractAction()V

    .line 550
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

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->changed()Z

    move-result v0

    goto :goto_0
.end method

.method public tryParseAsHrefToken(I)Z
    .locals 3
    .param p1, "attr"    # I

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->hrefAttr(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v0, Lcom/android/internal/telephony/IDecodImpl;->href:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->extractHrefPrefix(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    invoke-direct {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->extractHref()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/IDecodImpl;->href:Ljava/lang/String;

    .line 391
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

    .line 392
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

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->changed()Z

    move-result v0

    goto :goto_0
.end method

.method public tryParseAsPathToken(I)Z
    .locals 3
    .param p1, "attr"    # I

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->pathAttr(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 532
    :goto_0
    return v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->extractHrefPostfix(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix:Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    invoke-direct {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->extractPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/IDecodImpl;->href_path:Ljava/lang/String;

    .line 528
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

    .line 529
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

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->changed()Z

    move-result v0

    goto :goto_0
.end method

.method updatePostion(Ljava/lang/String;)I
    .locals 3
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 342
    .local v0, "postion":I
    :goto_0
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->mMessage:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 346
    :cond_0
    return v0
.end method
