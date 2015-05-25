.class public Lcom/yulong/android/telephony/CPXmlParser;
.super Ljava/lang/Object;
.source "CPXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/telephony/CPXmlParser$5;,
        Lcom/yulong/android/telephony/CPXmlParser$XmlTag;
    }
.end annotation


# static fields
.field private static final CARRIER_TAG:Ljava/lang/String; = "CARRIER_NAME"

.field private static final FILE_NAME_1:Ljava/lang/String; = "/persist/default_params/pst.xml"

.field private static final FILE_NAME_3:Ljava/lang/String; = "/data/card/lostcard.xml"

.field private static final FILE_NAME_4:Ljava/lang/String; = "/data/comm/lte_available_file.xml"

.field private static final ITEM_TAG:Ljava/lang/String; = "item"

.field static final LOG_TAG:Ljava/lang/String; = "xmlparser"

.field private static final LOSTCARD_TAG:Ljava/lang/String; = "lostcardinfo"

.field private static final LTE_AVAILABLE_TAG:Ljava/lang/String; = "lteavailableinfo"

.field private static carrierNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static hasParsePst:Z

.field private static lostCardInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lteAvailableInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/yulong/android/telephony/CPXmlParser;

.field private static final mLock:Ljava/lang/Object;

.field private static final mLock2:Ljava/lang/Object;

.field private static final mLock3:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser;->carrierNameList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3e9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yulong/android/telephony/CPXmlParser;->hasParsePst:Z

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser;->mLock2:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser;->mLock3:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser;->mLock2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser;->mLock3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/yulong/android/telephony/CPXmlParser;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser;->mInstance:Lcom/yulong/android/telephony/CPXmlParser;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/yulong/android/telephony/CPXmlParser;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CPXmlParser;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser;->mInstance:Lcom/yulong/android/telephony/CPXmlParser;

    .line 80
    :cond_0
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser;->mInstance:Lcom/yulong/android/telephony/CPXmlParser;

    return-object v0
.end method


# virtual methods
.method public clearLteAvailableFile()V
    .locals 3

    .prologue
    .line 135
    const-string v1, "xmlparser"

    const-string v2, "enter clearLteAvailableFile"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    sget-object v1, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->LTEINFO:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/telephony/CPXmlParser;->save(Ljava/util/List;Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V

    .line 138
    return-void
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    const-string v0, ""

    .line 97
    .local v0, "spn":Ljava/lang/String;
    sget-object v2, Lcom/yulong/android/telephony/CPXmlParser;->carrierNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 98
    sget-object v2, Lcom/yulong/android/telephony/CPXmlParser;->carrierNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 99
    .local v1, "str":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 100
    aget-object v0, v1, v3

    .line 103
    .end local v1    # "str":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getLostcardInfo()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v2, Lcom/yulong/android/telephony/CPXmlParser;->mLock2:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    sget-object v1, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->LOSTCARD:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    invoke-virtual {p0, v1}, Lcom/yulong/android/telephony/CPXmlParser;->parseXml(Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V

    .line 114
    sget-object v1, Lcom/yulong/android/telephony/CPXmlParser;->mLock2:Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    sget-object v1, Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;

    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "xmlparser"

    const-string v3, "CP_COMM: interrupted"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized load(Ljava/lang/String;)Z
    .locals 13
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    const-string v11, "xmlparser"

    const-string v12, "load ..."

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    const/4 v6, 0x0

    .line 266
    .local v6, "reader":Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 268
    .local v8, "ret":Z
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 271
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 273
    const/4 v5, 0x0

    .line 274
    .local v5, "point":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 275
    .local v2, "event":I
    const/4 v9, 0x0

    .line 276
    .local v9, "tag":Ljava/lang/String;
    :goto_0
    const/4 v11, 0x1

    if-eq v2, v11, :cond_7

    .line 277
    packed-switch v2, :pswitch_data_0

    .line 311
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 279
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 280
    const-string v11, "CARRIER_NAME"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 281
    sget-object v5, Lcom/yulong/android/telephony/CPXmlParser;->carrierNameList:Ljava/util/ArrayList;

    goto :goto_1

    .line 282
    :cond_1
    const-string v11, "lostcardinfo"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 283
    sget-object v11, Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;

    sget-object v12, Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 284
    sget-object v5, Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;

    goto :goto_1

    .line 285
    :cond_2
    const-string v11, "lteavailableinfo"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 286
    sget-object v11, Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;

    sget-object v12, Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 287
    sget-object v5, Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;

    goto :goto_1

    .line 288
    :cond_3
    const-string v11, "item"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 289
    if-eqz v5, :cond_0

    .line 290
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 291
    .local v0, "attrNo":I
    new-array v10, v0, [Ljava/lang/String;

    .line 292
    .local v10, "toInsert":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 293
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    .line 292
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 296
    :cond_4
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 314
    .end local v0    # "attrNo":I
    .end local v2    # "event":I
    .end local v3    # "i":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "point":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "toInsert":[Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 315
    .end local v7    # "reader":Ljava/io/FileReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    if-eqz v6, :cond_5

    .line 319
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    monitor-exit p0

    return v8

    .line 301
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v2    # "event":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "point":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .restart local v7    # "reader":Ljava/io/FileReader;
    .restart local v9    # "tag":Ljava/lang/String;
    :pswitch_2
    :try_start_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 302
    const-string v11, "CARRIER_NAME"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "lostcardinfo"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v11

    if-eqz v11, :cond_0

    .line 303
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 313
    :cond_7
    const/4 v8, 0x1

    .line 317
    if-eqz v7, :cond_8

    .line 319
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    :goto_5
    move-object v6, v7

    .line 324
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 317
    .end local v2    # "event":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "point":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .end local v9    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v6, :cond_9

    .line 319
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 317
    :cond_9
    :goto_7
    :try_start_8
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 264
    .end local v6    # "reader":Ljava/io/FileReader;
    .end local v8    # "ret":Z
    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 320
    .restart local v6    # "reader":Ljava/io/FileReader;
    .restart local v8    # "ret":Z
    :catch_1
    move-exception v12

    goto :goto_7

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    goto :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v2    # "event":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "point":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .restart local v7    # "reader":Ljava/io/FileReader;
    .restart local v9    # "tag":Ljava/lang/String;
    :catch_3
    move-exception v11

    goto :goto_5

    .line 317
    .end local v2    # "event":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "point":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .end local v9    # "tag":Ljava/lang/String;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_6

    .line 314
    :catch_4
    move-exception v1

    goto :goto_3

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public parseXml(Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V
    .locals 2
    .param p1, "tag"    # Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    .prologue
    .line 141
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser$5;->$SwitchMap$com$yulong$android$telephony$CPXmlParser$XmlTag:[I

    invoke-virtual {p1}, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    sget-boolean v0, Lcom/yulong/android/telephony/CPXmlParser;->hasParsePst:Z

    if-nez v0, :cond_0

    .line 144
    const-class v1, Lcom/yulong/android/telephony/CPXmlParser;

    monitor-enter v1

    .line 145
    :try_start_0
    new-instance v0, Lcom/yulong/android/telephony/CPXmlParser$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/telephony/CPXmlParser$1;-><init>(Lcom/yulong/android/telephony/CPXmlParser;)V

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPXmlParser$1;->start()V

    .line 154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yulong/android/telephony/CPXmlParser;->hasParsePst:Z

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 161
    :pswitch_2
    const-class v1, Lcom/yulong/android/telephony/CPXmlParser;

    monitor-enter v1

    .line 162
    :try_start_2
    new-instance v0, Lcom/yulong/android/telephony/CPXmlParser$2;

    invoke-direct {v0, p0}, Lcom/yulong/android/telephony/CPXmlParser$2;-><init>(Lcom/yulong/android/telephony/CPXmlParser;)V

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPXmlParser$2;->start()V

    .line 174
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized save(Ljava/util/List;Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V
    .locals 11
    .param p2, "tag"    # Lcom/yulong/android/telephony/CPXmlParser$XmlTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yulong/android/telephony/CPXmlParser$XmlTag;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "strList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v10, 0x4

    .line 330
    monitor-enter p0

    :try_start_0
    const-string v7, "xmlparser"

    const-string v8, "save ..."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, "fileos":Ljava/io/FileOutputStream;
    sget-object v7, Lcom/yulong/android/telephony/CPXmlParser$5;->$SwitchMap$com$yulong$android$telephony$CPXmlParser$XmlTag:[I

    invoke-virtual {p2}, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v7, :pswitch_data_0

    .line 444
    :goto_0
    monitor-exit p0

    return-void

    .line 337
    :pswitch_0
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/card/lostcard.xml"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    .local v4, "newxmlfile":Ljava/io/File;
    :try_start_2
    const-string v7, "xmlparser"

    const-string v8, "path:/data/card/lostcard.xml"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 341
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :cond_0
    :goto_1
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "fileos":Ljava/io/FileOutputStream;
    .local v2, "fileos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 352
    .end local v2    # "fileos":Ljava/io/FileOutputStream;
    .restart local v1    # "fileos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 355
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_5
    const-string v7, "UTF-8"

    invoke-interface {v5, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 356
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 357
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    const/4 v7, 0x0

    const-string v8, "lostcardinfo"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 362
    .local v6, "str":[Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "item"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    array-length v7, v6

    if-lt v7, v10, :cond_1

    .line 364
    const/4 v7, 0x0

    const-string v8, "imsi"

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    const/4 v7, 0x0

    const-string v8, "slotid"

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    const/4 v7, 0x0

    const-string v8, "reason"

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    const/4 v7, 0x0

    const-string v8, "time"

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    :cond_1
    const/4 v7, 0x0

    const-string v8, "item"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 381
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "str":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    const-string v7, "Exception"

    const-string v8, "error occurred while creating xml file"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v7, "xmlparser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lostCardInfoList.size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object v7, Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;

    sget-object v8, Lcom/yulong/android/telephony/CPXmlParser;->lostCardInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 330
    .end local v1    # "fileos":Ljava/io/FileOutputStream;
    .end local v4    # "newxmlfile":Ljava/io/File;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 342
    .restart local v1    # "fileos":Ljava/io/FileOutputStream;
    .restart local v4    # "newxmlfile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string v7, "IOException"

    const-string v8, "exception in createNewFile() method"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "FileNotFoundException"

    const-string v8, "can\'t create FileOutputStream"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 377
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v7, 0x0

    :try_start_8
    const-string v8, "lostcardinfo"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 378
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 379
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 380
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 390
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newxmlfile":Ljava/io/File;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :pswitch_1
    :try_start_9
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/comm/lte_available_file.xml"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 392
    .restart local v4    # "newxmlfile":Ljava/io/File;
    :try_start_a
    const-string v7, "xmlparser"

    const-string v8, "path:/data/comm/lte_available_file.xml"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 394
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 400
    :cond_3
    :goto_5
    :try_start_b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .end local v1    # "fileos":Ljava/io/FileOutputStream;
    .restart local v2    # "fileos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 405
    .end local v2    # "fileos":Ljava/io/FileOutputStream;
    .restart local v1    # "fileos":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_c
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v5

    .line 408
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_d
    const-string v7, "UTF-8"

    invoke-interface {v5, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 409
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 410
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    const/4 v7, 0x0

    const-string v8, "lteavailableinfo"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 415
    .restart local v6    # "str":[Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "item"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    array-length v7, v6

    if-lt v7, v10, :cond_4

    .line 417
    const/4 v7, 0x0

    const-string v8, "sid"

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    const/4 v7, 0x0

    const-string v8, "nid"

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    const/4 v7, 0x0

    const-string v8, "bsid"

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    const/4 v7, 0x0

    const-string v8, "time"

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const/4 v7, 0x0

    const-string v8, "count"

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 428
    :cond_4
    const/4 v7, 0x0

    const-string v8, "item"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    .line 435
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "str":[Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    const-string v7, "Exception"

    const-string v8, "error occurred while creating xml file"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    const-string v7, "xmlparser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lteAvailableInfoList "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v7, Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;

    sget-object v8, Lcom/yulong/android/telephony/CPXmlParser;->lteAvailableInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 395
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_4
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "IOException"

    const-string v8, "exception in createNewFile() method"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 401
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "FileNotFoundException"

    const-string v8, "can\'t create FileOutputStream"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    .line 431
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    const/4 v7, 0x0

    :try_start_f
    const-string v8, "lteavailableinfo"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 433
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 434
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveLostCardInfo([Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # [Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "xmlparser"

    const-string v1, "enter saveLostCardInfo"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->LOSTCARD:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    invoke-virtual {p0, p1, v0}, Lcom/yulong/android/telephony/CPXmlParser;->updateXml([Ljava/lang/String;Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V

    .line 125
    return-void
.end method

.method public updateLteAvailableFile([Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # [Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, "xmlparser"

    const-string v1, "enter updateLteAvailableFile"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 130
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->LTEINFO:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    invoke-virtual {p0, p1, v0}, Lcom/yulong/android/telephony/CPXmlParser;->updateXml([Ljava/lang/String;Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V

    .line 132
    :cond_0
    return-void
.end method

.method public updateXml([Ljava/lang/String;Lcom/yulong/android/telephony/CPXmlParser$XmlTag;)V
    .locals 3
    .param p1, "item"    # [Ljava/lang/String;
    .param p2, "tag"    # Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    .prologue
    .line 184
    move-object v0, p1

    .line 185
    .local v0, "temp":[Ljava/lang/String;
    sget-object v1, Lcom/yulong/android/telephony/CPXmlParser$5;->$SwitchMap$com$yulong$android$telephony$CPXmlParser$XmlTag:[I

    invoke-virtual {p2}, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 187
    :pswitch_0
    new-instance v1, Lcom/yulong/android/telephony/CPXmlParser$3;

    invoke-direct {v1, p0, v0}, Lcom/yulong/android/telephony/CPXmlParser$3;-><init>(Lcom/yulong/android/telephony/CPXmlParser;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPXmlParser$3;->start()V

    goto :goto_0

    .line 209
    :pswitch_1
    new-instance v1, Lcom/yulong/android/telephony/CPXmlParser$4;

    invoke-direct {v1, p0, v0}, Lcom/yulong/android/telephony/CPXmlParser$4;-><init>(Lcom/yulong/android/telephony/CPXmlParser;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPXmlParser$4;->start()V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
