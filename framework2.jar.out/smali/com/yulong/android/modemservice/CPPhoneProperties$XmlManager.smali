.class public Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;
.super Ljava/lang/Object;
.source "CPPhoneProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/modemservice/CPPhoneProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmlManager"
.end annotation


# instance fields
.field doc:Lorg/w3c/dom/Document;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private xmlFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "xmlFile"    # Ljava/lang/String;

    .prologue
    .line 1244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->doc:Lorg/w3c/dom/Document;

    .line 1185
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 1246
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->init1(Ljava/lang/String;)V

    .line 1247
    iput-object p1, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->xmlFile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :goto_0
    return-void

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception init1 parser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public doc2xml(Lorg/w3c/dom/Document;Ljava/lang/String;)Z
    .locals 7
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 1256
    const/4 v1, 0x1

    .line 1258
    .local v1, "flag":Z
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 1259
    .local v2, "iFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 1260
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1261
    .local v4, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1262
    .local v3, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v5, v4, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    .end local v2    # "iFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v3    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v4    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    :goto_0
    return v1

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAttribute1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 5
    .param p1, "xmlFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1192
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 1193
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1196
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->doc:Lorg/w3c/dom/Document;

    .line 1197
    sget-object v2, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-void
.end method

.method public init1(Ljava/lang/String;)V
    .locals 10
    .param p1, "xmlFile"    # Ljava/lang/String;

    .prologue
    .line 1202
    const/4 v4, 0x0

    .line 1204
    .local v4, "featureReader":Ljava/io/FileReader;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1208
    .local v3, "featureFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    .end local v4    # "featureReader":Ljava/io/FileReader;
    .local v5, "featureReader":Ljava/io/FileReader;
    :try_start_1
    iget-object v6, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1210
    iget-object v6, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "comm-feature"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1211
    iget-object v6, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1235
    if-eqz v5, :cond_0

    .line 1236
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 1242
    .end local v5    # "featureReader":Ljava/io/FileReader;
    .restart local v4    # "featureReader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    return-void

    .line 1238
    .end local v4    # "featureReader":Ljava/io/FileReader;
    .restart local v5    # "featureReader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 1239
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException in featureReader.close() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 1241
    .end local v5    # "featureReader":Ljava/io/FileReader;
    .restart local v4    # "featureReader":Ljava/io/FileReader;
    goto :goto_0

    .line 1214
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1215
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1217
    const/4 v4, 0x0

    .line 1219
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/comm-feature.xml"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1221
    .local v0, "defaultFeatureFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1222
    .end local v4    # "featureReader":Ljava/io/FileReader;
    .restart local v5    # "featureReader":Ljava/io/FileReader;
    :try_start_5
    iget-object v6, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1223
    iget-object v6, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "comm-feature"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1224
    iget-object v6, p0, Lcom/yulong/android/modemservice/CPPhoneProperties$XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v4, v5

    .line 1235
    .end local v0    # "defaultFeatureFile":Ljava/io/File;
    .end local v5    # "featureReader":Ljava/io/FileReader;
    .restart local v4    # "featureReader":Ljava/io/FileReader;
    :goto_2
    if-eqz v4, :cond_1

    .line 1236
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 1238
    :catch_2
    move-exception v1

    .line 1239
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException in featureReader.close() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1225
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 1226
    .local v2, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in default comm-feature.conf parser"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1234
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 1235
    :goto_4
    if-eqz v4, :cond_2

    .line 1236
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1240
    :cond_2
    :goto_5
    throw v6

    .line 1229
    :catch_4
    move-exception v1

    .line 1230
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_9
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in comm-feature.conf parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1235
    if-eqz v4, :cond_1

    .line 1236
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 1238
    :catch_5
    move-exception v1

    .line 1239
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException in featureReader.close() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1231
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 1232
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in comm-feature.conf parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1235
    if-eqz v4, :cond_1

    .line 1236
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    .line 1238
    :catch_7
    move-exception v1

    .line 1239
    sget-object v6, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException in featureReader.close() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1238
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 1239
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/yulong/android/modemservice/CPPhoneProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException in featureReader.close() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1234
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "featureReader":Ljava/io/FileReader;
    .restart local v5    # "featureReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "featureReader":Ljava/io/FileReader;
    .restart local v4    # "featureReader":Ljava/io/FileReader;
    goto/16 :goto_4

    .line 1231
    .end local v4    # "featureReader":Ljava/io/FileReader;
    .restart local v5    # "featureReader":Ljava/io/FileReader;
    :catch_9
    move-exception v1

    move-object v4, v5

    .end local v5    # "featureReader":Ljava/io/FileReader;
    .restart local v4    # "featureReader":Ljava/io/FileReader;
    goto :goto_7

    .line 1229
    .end local v4    # "featureReader":Ljava/io/FileReader;
    .restart local v5    # "featureReader":Ljava/io/FileReader;
    :catch_a
    move-exception v1

    move-object v4, v5

    .end local v5    # "featureReader":Ljava/io/FileReader;
    .restart local v4    # "featureReader":Ljava/io/FileReader;
    goto/16 :goto_6

    .line 1225
    .end local v4    # "featureReader":Ljava/io/FileReader;
    .restart local v0    # "defaultFeatureFile":Ljava/io/File;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "featureReader":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v4, v5

    .end local v5    # "featureReader":Ljava/io/FileReader;
    .restart local v4    # "featureReader":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 1214
    .end local v0    # "defaultFeatureFile":Ljava/io/File;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "featureReader":Ljava/io/FileReader;
    .restart local v5    # "featureReader":Ljava/io/FileReader;
    :catch_c
    move-exception v1

    move-object v4, v5

    .end local v5    # "featureReader":Ljava/io/FileReader;
    .restart local v4    # "featureReader":Ljava/io/FileReader;
    goto/16 :goto_1
.end method
