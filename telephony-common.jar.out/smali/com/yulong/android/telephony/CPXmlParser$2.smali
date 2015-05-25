.class Lcom/yulong/android/telephony/CPXmlParser$2;
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
    .line 162
    iput-object p1, p0, Lcom/yulong/android/telephony/CPXmlParser$2;->this$0:Lcom/yulong/android/telephony/CPXmlParser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/telephony/CPXmlParser$2;->this$0:Lcom/yulong/android/telephony/CPXmlParser;

    const-string v2, "/data/card/lostcard.xml"

    invoke-virtual {v1, v2}, Lcom/yulong/android/telephony/CPXmlParser;->load(Ljava/lang/String;)Z

    .line 166
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->mLock2:Ljava/lang/Object;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->mLock2:Ljava/lang/Object;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 168
    monitor-exit v2

    .line 172
    :goto_0
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "xmlparser"

    const-string v2, "PresetFunctions_init:"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
