.class public Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;
.super Ljava/lang/Object;
.source "SmsExternInterfaceXmlParse.java"


# static fields
.field private static SMS_CONFIGS_DOCUMENT_TAG:Ljava/lang/String;

.field private static SMS_CONFIG_CLASSNAME_TAG:Ljava/lang/String;

.field private static SMS_CONFIG_ELEMENT_TAG:Ljava/lang/String;

.field private static SMS_CONFIG_FILE_DIR:Ljava/lang/String;

.field private static SMS_CONFIG_FILE_NAME:Ljava/lang/String;

.field private static SMS_CONFIG_JARNAME_TAG:Ljava/lang/String;

.field private static SMS_CONFIG_PARANUM_TAG:Ljava/lang/String;

.field private static SMS_CONFIG_TOTAL_TAG:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCfgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessLoadItem:I

.field private mXmlItemNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "ExternInterfaceXmlParse"

    sput-object v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "//system/etc/"

    sput-object v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_FILE_DIR:Ljava/lang/String;

    .line 39
    const-string v0, "sms-conf.xml"

    sput-object v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_FILE_NAME:Ljava/lang/String;

    .line 40
    const-string v0, "smsconfigs"

    sput-object v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIGS_DOCUMENT_TAG:Ljava/lang/String;

    .line 41
    const-string v0, "sms"

    sput-object v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_ELEMENT_TAG:Ljava/lang/String;

    .line 42
    const-string v0, "TotalItem"

    sput-object v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_TOTAL_TAG:Ljava/lang/String;

    .line 43
    const-string v0, "JarName"

    sput-object v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_JARNAME_TAG:Ljava/lang/String;

    .line 44
    const-string v0, "ClassName"

    sput-object v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_CLASSNAME_TAG:Ljava/lang/String;

    .line 45
    const-string v0, "ParaNum"

    sput-object v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_PARANUM_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mSuccessLoadItem:I

    .line 55
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->Init()V

    .line 56
    return-void
.end method

.method private Init()V
    .locals 8

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 62
    .local v2, "confreader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_FILE_DIR:Ljava/lang/String;

    sget-object v6, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v0, "confFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v3, "confreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 68
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 69
    sget-object v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIGS_DOCUMENT_TAG:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->loadConfigs(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    if-eqz v3, :cond_0

    .line 89
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v2, v3

    .line 97
    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v4

    .line 75
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string v6, "CP_COMM: FileNotFoundException whlie init."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    if-eqz v2, :cond_1

    .line 89
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 92
    :catch_1
    move-exception v4

    .line 94
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string v6, "CP_COMM: confreader is null."

    :goto_3
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 79
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    sget-object v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: Exception while parsing \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    if-eqz v2, :cond_1

    .line 89
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 92
    :catch_3
    move-exception v4

    .line 94
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string v6, "CP_COMM: confreader is null."

    goto :goto_3

    .line 85
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 87
    :goto_5
    if-eqz v2, :cond_2

    .line 89
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 85
    :cond_2
    :goto_6
    throw v5

    .line 92
    :catch_4
    move-exception v4

    .line 94
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string v7, "CP_COMM: confreader is null."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 92
    .end local v2    # "confreader":Ljava/io/FileReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_5
    move-exception v4

    .line 94
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string v6, "CP_COMM: confreader is null."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_5

    .line 77
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_4

    .line 73
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 214
    if-nez p1, :cond_0

    .line 216
    sget-object v1, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: beginDocument parament : null == parser"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 226
    :cond_1
    if-eq v0, v2, :cond_2

    .line 228
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 233
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_3
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->loadTotalItem(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mXmlItemNum:I

    goto :goto_0
.end method

.method private getConfigItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, 0x0

    .line 191
    sget-object v2, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_ELEMENT_TAG:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 196
    :cond_1
    new-instance v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;-><init>()V

    .line 199
    .local v0, "cfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    sget-object v2, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_JARNAME_TAG:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mJarName:Ljava/lang/String;

    .line 200
    sget-object v2, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_CLASSNAME_TAG:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mClassName:Ljava/lang/String;

    .line 201
    sget-object v2, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_PARANUM_TAG:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    .line 202
    iget-object v2, v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mJarName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget v2, v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    :cond_2
    move-object v0, v1

    .line 205
    goto :goto_0
.end method

.method private loadConfigs(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 119
    if-eqz p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 147
    :try_start_0
    sget-object v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string v4, "CP_COMM: nextElement parament : null == parser"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    :goto_1
    return-void

    .line 151
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 153
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 165
    .end local v2    # "type":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->getConfigItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;

    move-result-object v1

    .line 166
    .local v1, "sci":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    if-eqz v1, :cond_0

    .line 168
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget v3, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mSuccessLoadItem:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mSuccessLoadItem:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 178
    .end local v1    # "sci":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string v4, "Got execption while getting perferred time zone."

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 182
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string v4, "Got execption while getting perferred time zone."

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private final loadTotalItem(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 260
    const/4 v0, 0x0

    sget-object v1, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->SMS_CONFIG_TOTAL_TAG:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 246
    sget-object v1, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: nextElement parament : null == parser"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-void

    .line 251
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getAllConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    return-object v0
.end method

.method public getFirstConfigItem()Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTotalItem()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mSuccessLoadItem:I

    return v0
.end method

.method public final getXmlTotalItem()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mXmlItemNum:I

    return v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
