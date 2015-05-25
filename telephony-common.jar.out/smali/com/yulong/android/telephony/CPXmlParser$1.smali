.class Lcom/yulong/android/telephony/CPXmlParser$1;
.super Ljava/lang/Thread;
.source "CPXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/telephony/CPXmlParser;->parseXml(Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/CPXmlParser;


# direct methods
.method constructor <init>(Lcom/yulong/android/telephony/CPXmlParser;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/yulong/android/telephony/CPXmlParser$1;->this$0:Lcom/yulong/android/telephony/CPXmlParser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/telephony/CPXmlParser$1;->this$0:Lcom/yulong/android/telephony/CPXmlParser;

    const-string v2, "/persist/default_params/pst.xml"

    invoke-virtual {v1, v2}, Lcom/yulong/android/telephony/CPXmlParser;->load(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "xmlparser"

    const-string v2, "PresetFunctions_init:"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
