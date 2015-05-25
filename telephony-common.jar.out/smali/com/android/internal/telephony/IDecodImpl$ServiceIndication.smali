.class Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;
.super Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;
.source "IDecodImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IDecodImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceIndication"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IDecodImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IDecodImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    .line 565
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;-><init>(Lcom/android/internal/telephony/IDecodImpl;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method private createdAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    .line 688
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 689
    const/4 v0, 0x1

    .line 692
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private expiredAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    .line 621
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 622
    const/4 v0, 0x1

    .line 625
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private idAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    .line 652
    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 653
    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private title()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 736
    const/4 v0, 0x0

    .line 738
    .local v0, "attr":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 744
    :goto_0
    const/16 v3, 0x103

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 739
    :catch_0
    move-exception v1

    .line 740
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 741
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public actionAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    .line 610
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 614
    :cond_0
    const/4 v0, 0x1

    .line 617
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public classAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    .line 719
    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 720
    const/4 v0, 0x1

    .line 723
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method extractHrefPrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "attr"    # I

    .prologue
    .line 580
    const-string v0, ""

    .line 581
    .local v0, "href_prefix":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 606
    :goto_0
    return-object v0

    .line 583
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_null_value:Ljava/lang/String;

    .line 584
    goto :goto_0

    .line 587
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_http_value:Ljava/lang/String;

    .line 588
    goto :goto_0

    .line 591
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_http_www_value:Ljava/lang/String;

    .line 592
    goto :goto_0

    .line 595
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_https_value:Ljava/lang/String;

    .line 596
    goto :goto_0

    .line 599
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v0, v1, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_https_www_value:Ljava/lang/String;

    .line 600
    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public hrefAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    .line 569
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    .line 573
    :cond_0
    const/4 v0, 0x1

    .line 576
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryParseAsClassToken(I)Z
    .locals 4
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->classAttr(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    :goto_0
    return v3

    .line 731
    :cond_0
    # getter for: Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/IDecodImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SI parseClass attr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tryParseAsCreatedToken(I)Z
    .locals 6
    .param p1, "attr"    # I

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->createdAttr(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    const/4 v2, 0x0

    .line 715
    :goto_0
    return v2

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v2, v2, Lcom/android/internal/telephony/IDecodImpl;->sicreated:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 701
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    .line 702
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->length()I

    move-result v2

    shl-int/lit8 v1, v2, 0x1

    .line 705
    .local v1, "len":I
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mChanged:Z

    .line 706
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    const/4 v4, 0x2

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/IDecodImpl;->sicreated:Ljava/lang/String;

    .line 707
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_1
    # getter for: Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/IDecodImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SI attr created:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v4, v4, Lcom/android/internal/telephony/IDecodImpl;->sicreated:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v1    # "len":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->changed()Z

    move-result v2

    goto :goto_0

    .line 708
    .restart local v1    # "len":I
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    const-string v3, ""

    iput-object v3, v2, Lcom/android/internal/telephony/IDecodImpl;->sicreated:Ljava/lang/String;

    goto :goto_1
.end method

.method public tryParseAsExpiredToken(I)Z
    .locals 6
    .param p1, "attr"    # I

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->expiredAttr(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    const/4 v2, 0x0

    .line 648
    :goto_0
    return v2

    .line 633
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v2, v2, Lcom/android/internal/telephony/IDecodImpl;->siexpired:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 634
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    .line 635
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->length()I

    move-result v2

    shl-int/lit8 v1, v2, 0x1

    .line 638
    .local v1, "len":I
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mChanged:Z

    .line 639
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    const/4 v4, 0x2

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/IDecodImpl;->siexpired:Ljava/lang/String;

    .line 640
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_1
    # getter for: Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/IDecodImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SI attr expired:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v4, v4, Lcom/android/internal/telephony/IDecodImpl;->siexpired:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v1    # "len":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->changed()Z

    move-result v2

    goto :goto_0

    .line 641
    .restart local v1    # "len":I
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    const-string v3, ""

    iput-object v3, v2, Lcom/android/internal/telephony/IDecodImpl;->siexpired:Ljava/lang/String;

    goto :goto_1
.end method

.method public tryParseAsIDToken(I)Z
    .locals 6
    .param p1, "attr"    # I

    .prologue
    const/4 v4, 0x2

    .line 660
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->idAttr(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 661
    const/4 v3, 0x0

    .line 684
    :goto_0
    return v3

    .line 664
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v3, v3, Lcom/android/internal/telephony/IDecodImpl;->siid:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 665
    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    .line 666
    const-string v3, "00"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->updatePostion(Ljava/lang/String;)I

    move-result v1

    .line 669
    .local v1, "postion":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IDecodImpl;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 670
    .local v2, "uri":[B
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 671
    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lcom/android/internal/telephony/IDecodImpl;->siid:Ljava/lang/String;

    .line 675
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mChanged:Z

    .line 676
    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v2    # "uri":[B
    :goto_2
    # getter for: Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/IDecodImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SI attr id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v5, v5, Lcom/android/internal/telephony/IDecodImpl;->siid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    .end local v1    # "postion":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->changed()Z

    move-result v3

    goto :goto_0

    .line 673
    .restart local v1    # "postion":I
    .restart local v2    # "uri":[B
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/IDecodImpl;->siid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 677
    .end local v2    # "uri":[B
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/IDecodImpl;->siid:Ljava/lang/String;

    goto :goto_2
.end method

.method public tryParseAsTitleToken()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 748
    invoke-direct {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->title()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v5, v5, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 775
    :cond_0
    :goto_0
    return v4

    .line 752
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    .line 753
    const-string v4, "000101"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->updatePostion(Ljava/lang/String;)I

    move-result v1

    .line 756
    .local v1, "postion":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 758
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    const-string v5, ""

    iput-object v5, v4, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;

    .line 767
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mChanged:Z

    .line 768
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v2    # "title":Ljava/lang/String;
    :goto_2
    # getter for: Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/IDecodImpl;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SI title:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    iget-object v6, v6, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->changed()Z

    move-result v4

    goto :goto_0

    .line 760
    .restart local v2    # "title":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->mMessage:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IDecodImpl;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 761
    .local v3, "uri":[B
    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    .line 762
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 769
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "uri":[B
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    const-string v5, ""

    iput-object v5, v4, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;

    goto :goto_2

    .line 764
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "title":Ljava/lang/String;
    .restart local v3    # "uri":[B
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->this$0:Lcom/android/internal/telephony/IDecodImpl;

    const-string v5, ""

    iput-object v5, v4, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
