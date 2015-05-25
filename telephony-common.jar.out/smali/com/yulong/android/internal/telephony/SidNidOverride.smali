.class public Lcom/yulong/android/internal/telephony/SidNidOverride;
.super Ljava/lang/Object;
.source "SidNidOverride.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PARTNER_OPTION_OVERRIDE_PATH:Ljava/lang/String; = "etc/sidnid-conf"

.field static final SPN_FILE_NUM_MAX:I = 0x2

.field private static carrierMccMncMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static carrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/yulong/android/internal/telephony/SidNidOverride;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierSpnMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierMccMncMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Lcom/yulong/android/internal/telephony/SidNidOverride$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/SidNidOverride$1;-><init>(Lcom/yulong/android/internal/telephony/SidNidOverride;)V

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SidNidOverride$1;->start()V

    .line 69
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 34
    invoke-static {p0}, Lcom/yulong/android/internal/telephony/SidNidOverride;->loadSpnOverrides(I)V

    return-void
.end method

.method public static getInstance()Lcom/yulong/android/internal/telephony/SidNidOverride;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/yulong/android/internal/telephony/SidNidOverride;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->mInstance:Lcom/yulong/android/internal/telephony/SidNidOverride;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/yulong/android/internal/telephony/SidNidOverride;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/SidNidOverride;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->mInstance:Lcom/yulong/android/internal/telephony/SidNidOverride;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->mInstance:Lcom/yulong/android/internal/telephony/SidNidOverride;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static loadSpnOverrides(I)V
    .locals 18
    .param p0, "i"    # I

    .prologue
    .line 86
    const/4 v12, 0x0

    .line 88
    .local v12, "spnReader":Ljava/io/FileReader;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "etc/sidnid-conf-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "path":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v14

    invoke-direct {v11, v14, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v11, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v12    # "spnReader":Ljava/io/FileReader;
    .local v13, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 96
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 98
    const-string v14, "spnOverrides"

    invoke-static {v8, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 101
    :goto_0
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 103
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "name":Ljava/lang/String;
    const-string v14, "spnOverride"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 128
    sget-object v14, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 129
    const-string v14, "GSM"

    const-string v15, "carrierSpnMap is empty!"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    :goto_1
    if-eqz v13, :cond_0

    .line 145
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_2
    move-object v12, v13

    .line 152
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "spnReader":Ljava/io/FileReader;
    .restart local v12    # "spnReader":Ljava/io/FileReader;
    :cond_1
    :goto_3
    return-void

    .line 108
    .end local v12    # "spnReader":Ljava/io/FileReader;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "spnReader":Ljava/io/FileReader;
    :cond_2
    const/4 v14, 0x0

    :try_start_3
    const-string v15, "sid"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, "sid":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "mcc"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "mcc":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "mnc"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "mnc":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "option"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "option":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "ltm"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "ltm":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "mccmnc":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 122
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 123
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "suzhiwei test sidlte="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    sget-object v14, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v14, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v14, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierMccMncMap:Ljava/util/HashMap;

    invoke-virtual {v14, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 134
    .end local v2    # "ltm":Ljava/lang/String;
    .end local v3    # "mcc":Ljava/lang/String;
    .end local v4    # "mccmnc":Ljava/lang/String;
    .end local v5    # "mnc":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "option":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "sid":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v12, v13

    .line 135
    .end local v13    # "spnReader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "spnReader":Ljava/io/FileReader;
    :goto_4
    :try_start_4
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Can\'t open "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "etc/sidnid-conf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    if-eqz v12, :cond_1

    .line 145
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 148
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException in spnReader.close() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_5
    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    .end local v12    # "spnReader":Ljava/io/FileReader;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "spnReader":Ljava/io/FileReader;
    :cond_4
    :try_start_6
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "carrierSpnMap is read done! carrierSpnMap size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierSpnMap:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 137
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v1

    move-object v12, v13

    .line 138
    .end local v13    # "spnReader":Ljava/io/FileReader;
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v12    # "spnReader":Ljava/io/FileReader;
    :goto_6
    :try_start_7
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in option-conf parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 144
    if-eqz v12, :cond_1

    .line 145
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_3

    .line 148
    :catch_3
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException in spnReader.close() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 140
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_9
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in option-conf parser "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 144
    if-eqz v12, :cond_1

    .line 145
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_3

    .line 148
    :catch_5
    move-exception v1

    .line 149
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException in spnReader.close() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    .line 143
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 144
    :goto_8
    if-eqz v12, :cond_5

    .line 145
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 143
    :cond_5
    :goto_9
    throw v14

    .line 148
    :catch_6
    move-exception v1

    .line 149
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IOException in spnReader.close() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    .end local v12    # "spnReader":Ljava/io/FileReader;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "spnReader":Ljava/io/FileReader;
    :catch_7
    move-exception v1

    .line 149
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException in spnReader.close() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 143
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "spnReader":Ljava/io/FileReader;
    .restart local v12    # "spnReader":Ljava/io/FileReader;
    goto :goto_8

    .line 139
    .end local v12    # "spnReader":Ljava/io/FileReader;
    .restart local v13    # "spnReader":Ljava/io/FileReader;
    :catch_8
    move-exception v1

    move-object v12, v13

    .end local v13    # "spnReader":Ljava/io/FileReader;
    .restart local v12    # "spnReader":Ljava/io/FileReader;
    goto :goto_7

    .line 137
    :catch_9
    move-exception v1

    goto/16 :goto_6

    .line 134
    :catch_a
    move-exception v1

    goto/16 :goto_4
.end method


# virtual methods
.method public containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsCarrierMccMnc(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierMccMncMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMccMnc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierMccMncMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lcom/yulong/android/internal/telephony/SidNidOverride;->carrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
