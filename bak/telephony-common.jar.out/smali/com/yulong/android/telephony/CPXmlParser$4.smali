.class Lcom/yulong/android/telephony/CPXmlParser$4;
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
    .line 209
    iput-object p1, p0, Lcom/yulong/android/telephony/CPXmlParser$4;->this$0:Lcom/yulong/android/telephony/CPXmlParser;

    iput-object p2, p0, Lcom/yulong/android/telephony/CPXmlParser$4;->val$temp:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    .line 211
    iget-object v8, p0, Lcom/yulong/android/telephony/CPXmlParser$4;->val$temp:[Ljava/lang/String;

    invoke-virtual {v8}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 212
    .local v7, "strs":[Ljava/lang/String;
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->mLock3:Ljava/lang/Object;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$300()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 214
    :try_start_0
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$400()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v8, p0, Lcom/yulong/android/telephony/CPXmlParser$4;->this$0:Lcom/yulong/android/telephony/CPXmlParser;

    const-string v10, "/data/comm/lte_available_file.xml"

    invoke-virtual {v8, v10}, Lcom/yulong/android/telephony/CPXmlParser;->load(Ljava/lang/String;)Z

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "hasSameItem":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 218
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 219
    .local v4, "item":[Ljava/lang/String;
    if-eqz v4, :cond_3

    array-length v8, v4

    if-lt v8, v11, :cond_3

    if-eqz v7, :cond_3

    array-length v8, v7

    if-lt v8, v11, :cond_3

    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "olditem":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "newitem":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 223
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    const/4 v8, 0x4

    aget-object v8, v4, v8

    if-eqz v8, :cond_0

    const-string v8, ""

    const/4 v10, 0x4

    aget-object v10, v4, v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x4

    aget-object v8, v4, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 225
    const/4 v8, 0x4

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 226
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 227
    const/4 v8, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    .line 229
    .end local v0    # "count":I
    :cond_0
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const/4 v2, 0x1

    .line 235
    .end local v4    # "item":[Ljava/lang/String;
    .end local v5    # "newitem":Ljava/lang/String;
    .end local v6    # "olditem":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 236
    if-eqz v7, :cond_2

    array-length v8, v7

    if-lt v8, v11, :cond_2

    .line 237
    const/4 v8, 0x4

    const-string v10, "1"

    aput-object v10, v7, v8

    .line 238
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    :goto_1
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v10, 0x3e8

    if-le v8, v10, :cond_4

    .line 243
    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 247
    .end local v2    # "hasSameItem":Z
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "xmlparser"

    const-string v10, "PresetFunctions_init:"

    invoke-static {v8, v10, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    return-void

    .line 217
    .restart local v2    # "hasSameItem":Z
    .restart local v3    # "i":I
    .restart local v4    # "item":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 246
    .end local v4    # "item":[Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v8, p0, Lcom/yulong/android/telephony/CPXmlParser$4;->this$0:Lcom/yulong/android/telephony/CPXmlParser;

    # getter for: Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->access$400()Ljava/util/ArrayList;

    move-result-object v10

    sget-object v11, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->LTEINFO:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    invoke-virtual {v8, v10, v11}, Lcom/yulong/android/telephony/CPXmlParser;->save(Ljava/util/List;Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 250
    .end local v2    # "hasSameItem":Z
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8
.end method
