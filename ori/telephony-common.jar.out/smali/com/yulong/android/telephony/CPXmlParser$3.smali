.class Lcom/yulong/android/telephony/CPXmlParser$3;
.super Ljava/lang/Thread;
.source "CPXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/telephony/CPXmlParser;->updateXml([Ljava/lang/String;Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/CPXmlParser;

.field final synthetic val$temp:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yulong/android/telephony/CPXmlParser;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/yulong/android/telephony/CPXmlParser$3;->this$0:Lcom/yulong/android/telephony/CPXmlParser;

    iput-object p2, p0, Lcom/yulong/android/telephony/CPXmlParser$3;->val$temp:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 189
    iget-object v2, p0, Lcom/yulong/android/telephony/CPXmlParser$3;->val$temp:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 190
    .local v1, "strs":[Ljava/lang/String;
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 192
    :try_start_0
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 193
    iget-object v2, p0, Lcom/yulong/android/telephony/CPXmlParser$3;->this$0:Lcom/yulong/android/telephony/CPXmlParser;

    const-string v4, "/data/card/lostcard.xml"

    invoke-virtual {v2, v4}, Lcom/yulong/android/telephony/CPXmlParser;->load(Ljava/lang/String;)Z

    .line 194
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_0
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x14

    if-le v2, v4, :cond_0

    .line 197
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "xmlparser"

    const-string v4, "PresetFunctions_init:"

    invoke-static {v2, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    return-void

    .line 200
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/yulong/android/telephony/CPXmlParser$3;->this$0:Lcom/yulong/android/telephony/CPXmlParser;

    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    sget-object v5, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->LOSTCARD:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    invoke-virtual {v2, v4, v5}, Lcom/yulong/android/telephony/CPXmlParser;->save(Ljava/util/List;Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
