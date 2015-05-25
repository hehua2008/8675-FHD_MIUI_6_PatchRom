.class public Lcom/android/server/HapticsService;
.super Landroid/os/IHapticsService$Stub;
.source "HapticsService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final HAPTIC_MODE_AUDIO2HAPTIC:I = 0x1

.field private static final HAPTIC_MODE_IDLE:I = 0x0

.field private static final HAPTIC_MODE_RING:I = 0x8

.field private static final HAPTIC_MODE_RTP_PLAYBACK:I = 0x4

.field private static final HAPTIC_MODE_SEQUENCE_PLAYBACK:I = 0x2

.field private static final HAPTIC_RING_CONFIG:Ljava/lang/String; = "/system/etc/RingHaptics.xml"

.field private static final HAPTIC_RING_SILENCE:Ljava/lang/String; = "0"

.field private static final SW_STATE_AUDIO2HAPTIC:I = 0x1

.field private static final SW_STATE_IDLE:I = 0x0

.field private static final SW_STATE_RTP_PLAYBACK:I = 0x4

.field private static final SW_STATE_SEQUENCE_PLAYBACK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HapticsService"

.field private static final XML_HAPTICS:Ljava/lang/String; = "Haptics"

.field private static final XML_HAPTICS_NAME:Ljava/lang/String; = "name"

.field private static final XML_HAPTICS_SEQ:Ljava/lang/String; = "seq"


# instance fields
.field private isNormalVoltage:Z

.field private mA2H_str:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFeedbackEnabled:I

.field private mHapticWhenRing:I

.field private mHapticsLockScreen:I

.field private mHapticsMode:I

.field private mHapticsMultitouch:I

.field private mHapticsRepeat:I

.field private mHapticsScrolling:I

.field private mHapticsStatus:I

.field private mHapticsStatusObserver:Landroid/os/UEventObserver;

.field private mHapticsStatusPrev:I

.field private mHapticsThemeDialpad:I

.field private mHapticsThemeGallery:I

.field private mHapticsThemeLPress:I

.field private mHapticsThemeLauncher:I

.field private mHapticsThemeRotate:I

.field private mHapticsThemeSIP:I

.field private mHapticsThemeVK:I

.field private mRTPSeq:[B

.field private mRTPSeqLen:I

.field private mRingHapticsDefault:I

.field private mRingHapticsName:[Ljava/lang/String;

.field private mRingHapticsSeq:[Ljava/lang/String;

.field private mSeq:[B

.field private mUnLockEffect:[B

.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0}, Landroid/os/IHapticsService$Stub;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/android/server/HapticsService;->isNormalVoltage:Z

    .line 92
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    .line 93
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    .line 94
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    .line 95
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    .line 96
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    .line 97
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    .line 98
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    .line 99
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsLockScreen:I

    .line 100
    iput v2, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    .line 101
    iput v2, p0, Lcom/android/server/HapticsService;->mHapticsMultitouch:I

    .line 103
    iput v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    .line 104
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticWhenRing:I

    .line 105
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    .line 106
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    .line 107
    iput v1, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    .line 108
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsStatusPrev:I

    .line 109
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    .line 110
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsRepeat:I

    .line 111
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 112
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/HapticsService;->mUnLockEffect:[B

    .line 114
    new-instance v0, Lcom/android/server/HapticsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HapticsService$1;-><init>(Lcom/android/server/HapticsService;)V

    iput-object v0, p0, Lcom/android/server/HapticsService;->mHapticsStatusObserver:Landroid/os/UEventObserver;

    .line 133
    iput-object p1, p0, Lcom/android/server/HapticsService;->mContext:Landroid/content/Context;

    .line 134
    iget-object v0, p0, Lcom/android/server/HapticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    .line 135
    return-void

    .line 112
    nop

    :array_0
    .array-data 1
        0x5ct
        0x77t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private GetRingHapticsFromConfig()V
    .locals 18

    .prologue
    .line 625
    const/4 v11, 0x0

    .line 626
    .local v11, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 627
    .local v8, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 628
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    const-string v15, "/system/etc/RingHaptics.xml"

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v2, "config_file":Ljava/io/File;
    const/4 v3, 0x0

    .line 631
    .local v3, "document":Lorg/w3c/dom/Document;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 632
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 635
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 642
    :goto_0
    :try_start_1
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .local v12, "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .line 649
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    .line 658
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 659
    .local v14, "root":Lorg/w3c/dom/Element;
    const-string v15, "Haptics"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 660
    .local v13, "nl_haptics":Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 661
    .local v9, "haptics_count":I
    if-nez v9, :cond_0

    .line 685
    .end local v9    # "haptics_count":I
    .end local v13    # "nl_haptics":Lorg/w3c/dom/NodeList;
    .end local v14    # "root":Lorg/w3c/dom/Element;
    :goto_3
    return-void

    .line 636
    :catch_0
    move-exception v4

    .line 638
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 643
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    .line 645
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 650
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 652
    .local v5, "e1":Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2

    .line 653
    .end local v5    # "e1":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v5

    .line 655
    .local v5, "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 664
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v9    # "haptics_count":I
    .restart local v13    # "nl_haptics":Lorg/w3c/dom/NodeList;
    .restart local v14    # "root":Lorg/w3c/dom/Element;
    :cond_0
    new-array v15, v9, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    .line 665
    new-array v15, v9, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    .line 667
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v9, :cond_1

    .line 668
    invoke-interface {v13, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 669
    .local v6, "em_haptics":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    .line 671
    const-string v15, "seq"

    invoke-interface {v6, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 672
    .local v7, "em_seq":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    .line 673
    const-string v15, "HapticsService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " seq="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 677
    .end local v6    # "em_haptics":Lorg/w3c/dom/Element;
    .end local v7    # "em_seq":Lorg/w3c/dom/Element;
    :cond_1
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    .line 678
    :catch_4
    move-exception v4

    .line 680
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 683
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "haptics_count":I
    .end local v10    # "i":I
    .end local v13    # "nl_haptics":Lorg/w3c/dom/NodeList;
    .end local v14    # "root":Lorg/w3c/dom/Element;
    :cond_2
    const-string v15, "HapticsService"

    const-string v16, "/system/etc/RingHaptics.xml is missing"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private InitHapticsA2HSetting()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 178
    iget-object v5, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 179
    iget-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 180
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/etc/haptics_A2H.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "a2h_f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v4, v5

    .line 183
    .local v4, "filelen":I
    if-lez v4, :cond_1

    .line 184
    new-array v0, v4, [C

    .line 186
    .local v0, "a2hBuf":[C
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 187
    .local v2, "bufReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/BufferedReader;->read([CII)I

    .line 188
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    :goto_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 202
    .end local v0    # "a2hBuf":[C
    .end local v4    # "filelen":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    iget-object v7, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    .end local v1    # "a2h_f":Ljava/io/File;
    :cond_0
    iget-object v5, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/android/server/HapticsService$2;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/server/HapticsService$2;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 213
    return-void

    .line 189
    .restart local v0    # "a2hBuf":[C
    .restart local v1    # "a2h_f":Ljava/io/File;
    .restart local v4    # "filelen":I
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "HapticsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2H BufferedReader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    .end local v0    # "a2hBuf":[C
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "HapticsService"

    const-string v6, "A2H a2h_f length ZERO"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    goto :goto_1

    .line 198
    .end local v4    # "filelen":I
    :cond_2
    const-string v5, "HapticsService"

    const-string v6, "A2H a2h_f is not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    goto :goto_1
.end method

.method private InitHapticsEffectSettings(Ljava/lang/String;I)V
    .locals 6
    .param p1, "setting_str"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 243
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "setting":I
    if-nez v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    move v0, p2

    .line 249
    :cond_0
    const-string v1, "data_haptictheme_SIP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    .line 269
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/HapticsService$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/HapticsService$5;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    return-void

    .line 251
    :cond_2
    const-string v1, "data_haptictheme_dialpad"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    goto :goto_0

    .line 253
    :cond_3
    const-string v1, "data_haptictheme_launcher"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    goto :goto_0

    .line 255
    :cond_4
    const-string v1, "data_haptictheme_longpress"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 256
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    goto :goto_0

    .line 257
    :cond_5
    const-string v1, "data_haptictheme_virtualkey"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 258
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    goto :goto_0

    .line 259
    :cond_6
    const-string v1, "data_haptictheme_rotate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 260
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    goto :goto_0

    .line 261
    :cond_7
    const-string v1, "data_haptictheme_gallery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 262
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    goto :goto_0

    .line 263
    :cond_8
    const-string v1, "data_haptictheme_scroll"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 264
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    goto :goto_0

    .line 265
    :cond_9
    const-string v1, "data_haptictheme_multi_touch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMultitouch:I

    goto :goto_0
.end method

.method private InitHapticsRingSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-direct {p0}, Lcom/android/server/HapticsService;->GetRingHapticsFromConfig()V

    .line 217
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    .line 218
    iget v0, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    iget v2, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/HapticsService$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/HapticsService$3;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticWhenRing:I

    .line 232
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_when_ringing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/HapticsService$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/HapticsService$4;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 240
    return-void
.end method

.method private LookupHapticValue(I)I
    .locals 1
    .param p1, "effectID"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "value":I
    packed-switch p1, :pswitch_data_0

    .line 174
    :goto_0
    :pswitch_0
    return v0

    .line 141
    :pswitch_1
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    .line 142
    goto :goto_0

    .line 144
    :pswitch_2
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    .line 145
    goto :goto_0

    .line 147
    :pswitch_3
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    .line 148
    goto :goto_0

    .line 150
    :pswitch_4
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    .line 151
    goto :goto_0

    .line 153
    :pswitch_5
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    .line 154
    goto :goto_0

    .line 156
    :pswitch_6
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    .line 157
    goto :goto_0

    .line 159
    :pswitch_7
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    .line 160
    goto :goto_0

    .line 162
    :pswitch_8
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsLockScreen:I

    .line 163
    goto :goto_0

    .line 165
    :pswitch_9
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    .line 166
    goto :goto_0

    .line 168
    :pswitch_a
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMultitouch:I

    .line 169
    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/server/HapticsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HapticsService;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/HapticsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HapticsService;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsStatusPrev:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsStatusPrev:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsMultitouch:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/HapticsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HapticsService;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    return v0
.end method

.method static synthetic access$272(Lcom/android/server/HapticsService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/HapticsService;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HapticsService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/HapticsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/HapticsService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HapticsService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticWhenRing:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    return p1
.end method

.method private isA2HEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private setupRTPSeq(Ljava/lang/String;)V
    .locals 5
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 362
    iget-object v3, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 363
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "seq_str":[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v2, :cond_0

    :goto_0
    iput v2, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    if-ge v0, v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    .end local v0    # "i":I
    :cond_0
    array-length v2, v1

    goto :goto_0

    .line 368
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setupRTPSeq([BI)V
    .locals 4
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I

    .prologue
    const/16 v1, 0x20

    .line 371
    iget-object v2, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 373
    if-le p2, v1, :cond_0

    move p2, v1

    .end local p2    # "buffSize":I
    :cond_0
    iput p2, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    if-ge v0, v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    return-void
.end method

.method private setupSeq(Ljava/lang/String;)V
    .locals 4
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 348
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "seq_str":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/server/HapticsService;->mSeq:[B

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method private setupSeq([BI)V
    .locals 3
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/server/HapticsService;->mSeq:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public getRingHapticsName(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    return-object v0
.end method

.method public getRingHapticsValue(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRingHapticsValues(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    return-object v0
.end method

.method public playEffectSeqBuff([BILandroid/os/IBinder;)V
    .locals 3
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 468
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 469
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffectSeqBuff skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_1
    :goto_0
    return-void

    .line 472
    :cond_2
    if-lez p2, :cond_1

    const/16 v0, 0x8

    if-ge p2, v0, :cond_1

    .line 473
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/android/server/HapticsService;->setupSeq([BI)V

    .line 475
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffectSeqBuff["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/HapticsService;->mSeq:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    invoke-static {v0, p2}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0
.end method

.method public playEffectSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 451
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 452
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffectSequence skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    const-string v0, "HapticsService"

    const-string v1, "Seq ZERO, bypass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_2
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 460
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0
.end method

.method public playEffectSequenceRepeat(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "repeat"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 516
    iput p2, p0, Lcom/android/server/HapticsService;->mHapticsRepeat:I

    .line 517
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    .line 520
    return-void
.end method

.method public playPatternRTP(IIIILandroid/os/IBinder;)V
    .locals 0
    .param p1, "vibrationDuration"    # I
    .param p2, "silienceDuration"    # I
    .param p3, "repeat_times"    # I
    .param p4, "vibrationStrength"    # I
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 445
    invoke-static {p1, p2, p3, p4}, Lcom/ti/Haptic;->playPatternRTP(IIII)V

    .line 447
    return-void
.end method

.method public playRTPSeqBuff([BILandroid/os/IBinder;)V
    .locals 3
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 501
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 502
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRTPSeqBuff skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_1
    :goto_0
    return-void

    .line 504
    :cond_2
    if-lez p2, :cond_1

    const/16 v0, 0x10

    if-ge p2, v0, :cond_1

    .line 505
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/android/server/HapticsService;->setupRTPSeq([BI)V

    .line 507
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRTPSeqBuff["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    iget v1, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playRTPSequence([BI)V

    goto :goto_0
.end method

.method public playRTPSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 484
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRTPSequence skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    return-void

    .line 487
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    const-string v0, "HapticsService"

    const-string v1, "Seq ZERO, bypass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    :cond_2
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 493
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->setupRTPSeq(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    iget v1, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playRTPSequence([BI)V

    goto :goto_0
.end method

.method public playRingHaptics(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 564
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRingHaptics: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRingHapticsDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    if-nez v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 568
    :cond_0
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 569
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 570
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    .line 573
    :cond_1
    if-nez p1, :cond_2

    .line 574
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 579
    :goto_1
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public playRingSeq(ILandroid/os/IBinder;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    const/16 v5, 0x19

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 585
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRingSeq :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    if-nez v0, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    const/4 v0, 0x4

    if-eq v0, p1, :cond_2

    const/4 v0, 0x5

    if-ne v0, p1, :cond_4

    .line 592
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/HapticsService;->isNormalVoltage:Z

    if-eqz v0, :cond_3

    .line 593
    iput-boolean v4, p0, Lcom/android/server/HapticsService;->isNormalVoltage:Z

    .line 594
    invoke-static {v3, v4, v3, v5}, Lcom/ti/Haptic;->playPatternRTP(IIII)V

    .line 604
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 606
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0

    .line 597
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/HapticsService;->isNormalVoltage:Z

    if-nez v0, :cond_3

    .line 598
    iput-boolean v3, p0, Lcom/android/server/HapticsService;->isNormalVoltage:Z

    .line 599
    const/4 v0, 0x3

    invoke-static {v0, v4, v3, v5}, Lcom/ti/Haptic;->playPatternRTP(IIII)V

    goto :goto_1
.end method

.method public playTimedEffect(ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "effectDuration"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 439
    invoke-static {p1}, Lcom/ti/Haptic;->playTimedEffect(I)V

    .line 441
    return-void
.end method

.method public playeffect(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "effectID"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 380
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 381
    :cond_0
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playeffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") skip,mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HapticStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    iget v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    if-ne v1, v2, :cond_1

    .line 387
    iget-boolean v1, p0, Lcom/android/server/HapticsService;->isNormalVoltage:Z

    if-nez v1, :cond_3

    .line 388
    iput-boolean v2, p0, Lcom/android/server/HapticsService;->isNormalVoltage:Z

    .line 389
    const/4 v1, 0x3

    invoke-static {v1, v3, v2, v4}, Lcom/ti/Haptic;->playPatternRTP(IIII)V

    .line 393
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->LookupHapticValue(I)I

    move-result v0

    .line 397
    .local v0, "value":I
    const/16 v1, 0xc

    if-ne v1, p1, :cond_4

    .line 398
    const/16 v1, 0xf

    invoke-static {v1, v3, v2, v4}, Lcom/ti/Haptic;->playPatternRTP(IIII)V

    goto :goto_0

    .line 403
    :cond_4
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-lez v0, :cond_5

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_5

    .line 405
    invoke-static {v0}, Lcom/ti/Haptic;->playEffect(I)V

    goto :goto_0

    .line 407
    :cond_5
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playeffectforce(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "effectID"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 414
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 415
    :cond_0
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playeffectforce playeffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") skip,mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HapticStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    iget v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 418
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 419
    iget-object v1, p0, Lcom/android/server/HapticsService;->mUnLockEffect:[B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0

    .line 421
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->LookupHapticValue(I)I

    move-result v0

    .line 422
    .local v0, "value":I
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-lez v0, :cond_5

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_5

    .line 424
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    if-eqz v1, :cond_4

    .line 425
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 427
    :cond_4
    invoke-static {v0}, Lcom/ti/Haptic;->playEffect(I)V

    goto :goto_0

    .line 430
    :cond_5
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAudioHapticEnabled(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "appname"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    .line 544
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->isA2HEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 545
    .local v0, "sw":Z
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioHapticEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mHapticsMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SW="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz v0, :cond_1

    .line 547
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 548
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 560
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-static {v4}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    goto :goto_0

    .line 553
    :cond_1
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    if-ne v1, v4, :cond_2

    .line 554
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    .line 556
    :cond_2
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    goto :goto_0
.end method

.method public stopPlayingEffect(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 524
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 525
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 526
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 529
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlayingEffect2 mHapticsMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 531
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    .line 532
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 535
    :cond_1
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 536
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 537
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 540
    :cond_2
    return-void
.end method

.method public systemReady()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 309
    :try_start_0
    invoke-static {}, Lcom/ti/Haptic;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    const-string v1, "data_haptictheme_SIP"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 315
    const-string v1, "data_haptictheme_dialpad"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 316
    const-string v1, "data_haptictheme_launcher"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 317
    const-string v1, "data_haptictheme_longpress"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 318
    const-string v1, "data_haptictheme_virtualkey"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 319
    const-string v1, "data_haptictheme_rotate"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 320
    const-string v1, "data_haptictheme_gallery"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 321
    const-string v1, "data_haptictheme_scroll"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 322
    const-string v1, "data_haptictheme_multi_touch"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMultitouch:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 323
    invoke-direct {p0}, Lcom/android/server/HapticsService;->InitHapticsA2HSetting()V

    .line 324
    invoke-direct {p0}, Lcom/android/server/HapticsService;->InitHapticsRingSetting()V

    .line 326
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    .line 327
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/HapticsService$6;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/HapticsService$6;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 335
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/haptics/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/server/HapticsService;->mHapticsStatusObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/virtual/switch/haptics"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 340
    :goto_1
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "HapticsService"

    const-string v2, "switch not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
