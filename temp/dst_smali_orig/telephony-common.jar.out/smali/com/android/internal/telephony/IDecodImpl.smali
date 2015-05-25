.class public Lcom/android/internal/telephony/IDecodImpl;
.super Ljava/lang/Object;
.source "IDecodImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;,
        Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;
    }
.end annotation


# static fields
.field private static final END_OF_SI:Ljava/lang/String; = "000101"

.field private static final END_OF_STRING:Ljava/lang/String; = "00"

.field private static final FOUR:I = 0x4

.field private static HexCode:[Ljava/lang/String; = null

.field private static final SIXTEEN:I = 0x10

.field private static TAG:Ljava/lang/String; = null

.field private static final TWO:I = 0x2

.field static final href_postfix_com:I = 0x85

.field static final href_postfix_edu:I = 0x86

.field static final href_postfix_net:I = 0x87

.field static final href_postfix_org:I = 0x88

.field static final si_attr_class:I = 0x12

.field static final si_attr_created:I = 0xa

.field static final si_attr_expired:I = 0x10

.field static final si_attr_id:I = 0x11

.field static final si_attr_signal_delete:I = 0x9

.field static final si_attr_signal_high:I = 0x8

.field static final si_attr_signal_low:I = 0x6

.field static final si_attr_signal_medium:I = 0x7

.field static final si_attr_signal_none:I = 0x5

.field static final si_href_prefix_http:I = 0xc

.field static final si_href_prefix_http_www:I = 0xd

.field static final si_href_prefix_https:I = 0xe

.field static final si_href_prefix_https_www:I = 0xf

.field static final si_href_prefix_null:I = 0xb

.field static final si_title_token:I = 0x103

.field static final sl_attr_execute_cache:I = 0x7

.field static final sl_attr_execute_high:I = 0x6

.field static final sl_attr_execute_low:I = 0x5

.field static final sl_href_prefix_http:I = 0x9

.field static final sl_href_prefix_http_www:I = 0xa

.field static final sl_href_prefix_https:I = 0xb

.field static final sl_href_prefix_https_www:I = 0xc

.field static final sl_href_prefix_null:I = 0x8


# instance fields
.field full_href:Ljava/lang/String;

.field href:Ljava/lang/String;

.field href_path:Ljava/lang/String;

.field href_postfix:Ljava/lang/String;

.field href_postfix_com_value:Ljava/lang/String;

.field href_postfix_edu_value:Ljava/lang/String;

.field href_postfix_net_value:Ljava/lang/String;

.field href_postfix_org_value:Ljava/lang/String;

.field href_prefix:Ljava/lang/String;

.field href_prefix_http_value:Ljava/lang/String;

.field href_prefix_http_www_value:Ljava/lang/String;

.field href_prefix_https_value:Ljava/lang/String;

.field href_prefix_https_www_value:Ljava/lang/String;

.field href_prefix_null_value:Ljava/lang/String;

.field sicreated:Ljava/lang/String;

.field siexpired:Ljava/lang/String;

.field siid:Ljava/lang/String;

.field sititle:Ljava/lang/String;

.field slAction:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "WAPPUSH"

    sput-object v0, Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "F"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IDecodImpl;->HexCode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->siid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->sicreated:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->siexpired:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_null_value:Ljava/lang/String;

    const-string v0, "http://"

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_http_value:Ljava/lang/String;

    const-string v0, "http://www."

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_http_www_value:Ljava/lang/String;

    const-string v0, "https://"

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_https_value:Ljava/lang/String;

    const-string v0, "https://www."

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix_https_www_value:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix:Ljava/lang/String;

    const-string v0, ".com/"

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_com_value:Ljava/lang/String;

    const-string v0, ".edu/"

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_edu_value:Ljava/lang/String;

    const-string v0, ".net/"

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_net_value:Ljava/lang/String;

    const-string v0, ".org/"

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix_org_value:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href_path:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IDecodImpl;->intializtion()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildFullHref()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, ""

    .local v0, "fullhref":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href_path:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->href_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    :cond_3
    return-object v0
.end method

.method private buildMessage()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/IDecodImpl;->buildFullHref()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discard this message : action == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "retVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v1, Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build service indication message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static decode(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "pushmsg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0[1-3]056A0045C6"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/IDecodImpl;

    invoke-direct {v1}, Lcom/android/internal/telephony/IDecodImpl;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IDecodImpl;->parseServiceIndicationMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0[1-3]066A0085"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/internal/telephony/IDecodImpl;

    invoke-direct {v1}, Lcom/android/internal/telephony/IDecodImpl;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/IDecodImpl;->parseServiceLoadMessage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadUrl(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/IDecodImpl;->buildFullHref()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build service load message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseServiceIndicationMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "encodeStr"    # Ljava/lang/String;

    .prologue
    new-instance v1, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;-><init>(Lcom/android/internal/telephony/IDecodImpl;Ljava/lang/String;)V

    .local v1, "result":Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->loop()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->attrToken()I

    move-result v0

    .local v0, "attr":I
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->tryParseAsHrefToken(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->tryParseAsPathToken(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->tryParseAsActionToken(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->tryParseAsClassToken(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->tryParseAsExpiredToken(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->tryParseAsCreatedToken(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->tryParseAsIDToken(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->tryParseAsTitleToken()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;

    if-eqz v2, :cond_2

    .end local v0    # "attr":I
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/IDecodImpl;->buildMessage()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .restart local v0    # "attr":I
    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SI unkonwn attr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IDecodImpl$ServiceIndication;->advance(I)V

    goto :goto_0
.end method

.method private parseServiceLoadMessage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "encodeStr"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    new-instance v1, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;-><init>(Lcom/android/internal/telephony/IDecodImpl;Ljava/lang/String;)V

    .local v1, "result":Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->loop()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->attrToken()I

    move-result v0

    .local v0, "attr":I
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->tryParseAsHrefToken(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->tryParseAsPathToken(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->tryParseAsActionToken(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SL unkonwn attr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "attr":I
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/IDecodImpl;->buildFullHref()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/IDecodImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseServiceLoadMessage return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    return-object v2

    .restart local v0    # "attr":I
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IDecodImpl$ServiceLoad;->advance(I)V

    goto :goto_0
.end method

.method public static stringToByte(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/IDecodImpl;->HexCode:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/IDecodImpl;->HexCode:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string p0, "  "

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "high":Ljava/lang/String;
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "low":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/IDecodImpl;->stringToByte(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-static {v3}, Lcom/android/internal/telephony/IDecodImpl;->stringToByte(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "high":Ljava/lang/String;
    .end local v3    # "low":Ljava/lang/String;
    :cond_3
    return-object v0
.end method


# virtual methods
.method intializtion()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->siid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->sicreated:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->siexpired:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->sititle:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href_postfix:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href_prefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IDecodImpl;->slAction:I

    iput-object v1, p0, Lcom/android/internal/telephony/IDecodImpl;->href_path:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/IDecodImpl;->full_href:Ljava/lang/String;

    return-void
.end method
