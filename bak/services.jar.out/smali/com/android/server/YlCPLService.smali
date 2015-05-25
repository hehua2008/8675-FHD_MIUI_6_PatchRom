.class public Lcom/android/server/YlCPLService;
.super Lcom/yulong/android/ylcplsvc/IYlCPL$Stub;
.source "YlCPLService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/YlCPLService$YLAppProfile;
    }
.end annotation


# static fields
.field private static final ATTR_Label:Ljava/lang/String; = "Label"

.field private static final ATTR_Value:Ljava/lang/String; = "Value"

.field private static final DEBUG:Z = false

.field private static final NODE_ACTIVITY:Ljava/lang/String; = "ACTIVITY"

.field private static final NODE_APPLICATION:Ljava/lang/String; = "APPLICATION"

.field private static final NODE_PROFILE:Ljava/lang/String; = "PROFILE"

.field private static final NODE_PROPERTY:Ljava/lang/String; = "PROPERTY"

.field private static final TAG:Ljava/lang/String; = "YlCPLService"

.field private static mInit:I = 0x0

.field private static final m_xmlFile:Ljava/lang/String; = "/system/etc/yl_profiles.xml"

.field private static final m_xmlFile_update:Ljava/lang/String; = "/data/system/yl_profiles.xml"


# instance fields
.field private m_YlAppProfiles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/YlCPLService$YLAppProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/android/server/YlCPLService;->mInit:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/yulong/android/ylcplsvc/IYlCPL$Stub;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/YlCPLService;->m_YlAppProfiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    iget-object v0, p0, Lcom/android/server/YlCPLService;->m_YlAppProfiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/YlCPLService$1;

    invoke-direct {v1, p0}, Lcom/android/server/YlCPLService$1;-><init>(Lcom/android/server/YlCPLService;)V

    const-string v2, "YlCPLThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 41
    sput p0, Lcom/android/server/YlCPLService;->mInit:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/YlCPLService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/YlCPLService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/YlCPLService;->parse()I

    move-result v0

    return v0
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 259
    .local v1, "permReader":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/data/system/yl_profiles.xml"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "permReader":Ljava/io/FileInputStream;
    .local v2, "permReader":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 270
    .end local v2    # "permReader":Ljava/io/FileInputStream;
    .restart local v1    # "permReader":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "YlCPLService"

    const-string v4, "Couldn\'t find or open app profile XML: /data/system/yl_profiles.xml"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/system/etc/yl_profiles.xml"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "permReader":Ljava/io/FileInputStream;
    .restart local v2    # "permReader":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 267
    .end local v2    # "permReader":Ljava/io/FileInputStream;
    .restart local v1    # "permReader":Ljava/io/FileInputStream;
    goto :goto_0

    .line 268
    :catch_1
    move-exception v0

    .line 269
    const-string v3, "YlCPLService"

    const-string v4, "Couldn\'t find or open app profile XML: /system/etc/yl_profiles.xml"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final main()V
    .locals 3

    .prologue
    .line 117
    const-string v1, "YlCPLService"

    const-string v2, "main++"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, -0x1

    sget v2, Lcom/android/server/YlCPLService;->mInit:I

    if-ne v1, v2, :cond_0

    .line 119
    new-instance v0, Lcom/android/server/YlCPLService;

    invoke-direct {v0}, Lcom/android/server/YlCPLService;-><init>()V

    .line 120
    .local v0, "m":Lcom/android/server/YlCPLService;
    const-string v1, "ylcpl"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 122
    :cond_0
    const-string v1, "YlCPLService"

    const-string v2, "main--"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method private parse()I
    .locals 24

    .prologue
    .line 185
    const/16 v20, 0x0

    .line 186
    .local v20, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/YlCPLService;->m_YlAppProfiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 187
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 189
    .local v10, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 190
    .local v7, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/YlCPLService;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 191
    .local v8, "dom":Lorg/w3c/dom/Document;
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v21

    .line 192
    .local v21, "root":Lorg/w3c/dom/Element;
    const-string v22, "PROFILE"

    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 193
    .local v13, "items":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_9

    .line 194
    new-instance v4, Lcom/android/server/YlCPLService$YLAppProfile;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/YlCPLService$YLAppProfile;-><init>(Lcom/android/server/YlCPLService;)V

    .line 195
    .local v4, "appProfile":Lcom/android/server/YlCPLService$YLAppProfile;
    invoke-interface {v13, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 196
    .local v12, "item":Lorg/w3c/dom/Element;
    const-string v22, "APPLICATION"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 197
    .local v18, "properties":Lorg/w3c/dom/NodeList;
    const/16 v22, 0x1

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 193
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const/16 v17, 0x0

    .line 203
    .local v17, "packageName":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v16

    .line 204
    .local v16, "maps":Lorg/w3c/dom/NamedNodeMap;
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_3

    .line 205
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    .line 206
    .local v5, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Label"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 207
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 208
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/server/YlCPLService$YLAppProfile;->setPkgName(Ljava/lang/String;)V

    .line 204
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 213
    .end local v5    # "attr":Lorg/w3c/dom/Attr;
    :cond_3
    if-eqz v17, :cond_0

    .line 218
    const-string v22, "PROPERTY"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 219
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_a

    .line 220
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 221
    .local v19, "property":Lorg/w3c/dom/Node;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "PROFILE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 219
    :cond_4
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 224
    :cond_5
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 225
    .local v6, "attr_maps":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .line 226
    .local v2, "Label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 227
    .local v3, "Value":Ljava/lang/String;
    const/4 v15, 0x0

    :goto_5
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_8

    .line 228
    invoke-interface {v6, v15}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    .line 229
    .restart local v5    # "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Label"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 230
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 231
    :cond_6
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Value"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 232
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 227
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 234
    .end local v5    # "attr":Lorg/w3c/dom/Attr;
    :cond_8
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 235
    invoke-virtual {v4, v2, v3}, Lcom/android/server/YlCPLService$YLAppProfile;->addAppProfileProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 247
    .end local v2    # "Label":Ljava/lang/String;
    .end local v3    # "Value":Ljava/lang/String;
    .end local v4    # "appProfile":Lcom/android/server/YlCPLService$YLAppProfile;
    .end local v6    # "attr_maps":Lorg/w3c/dom/NamedNodeMap;
    .end local v7    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "dom":Lorg/w3c/dom/Document;
    .end local v11    # "i":I
    .end local v12    # "item":Lorg/w3c/dom/Element;
    .end local v13    # "items":Lorg/w3c/dom/NodeList;
    .end local v14    # "j":I
    .end local v15    # "k":I
    .end local v16    # "maps":Lorg/w3c/dom/NamedNodeMap;
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "properties":Lorg/w3c/dom/NodeList;
    .end local v19    # "property":Lorg/w3c/dom/Node;
    .end local v21    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v9

    .line 249
    .local v9, "e":Ljava/lang/Exception;
    const-string v22, "YlCPLService"

    const-string v23, "Couldn\'t parse app profile XML: /system/etc/yl_profiles.xml"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/16 v20, -0x1

    .line 253
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_9
    return v20

    .line 239
    .restart local v4    # "appProfile":Lcom/android/server/YlCPLService$YLAppProfile;
    .restart local v7    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "dom":Lorg/w3c/dom/Document;
    .restart local v11    # "i":I
    .restart local v12    # "item":Lorg/w3c/dom/Element;
    .restart local v13    # "items":Lorg/w3c/dom/NodeList;
    .restart local v14    # "j":I
    .restart local v15    # "k":I
    .restart local v16    # "maps":Lorg/w3c/dom/NamedNodeMap;
    .restart local v17    # "packageName":Ljava/lang/String;
    .restart local v18    # "properties":Lorg/w3c/dom/NodeList;
    .restart local v21    # "root":Lorg/w3c/dom/Element;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/YlCPLService;->m_YlAppProfiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {v4}, Lcom/android/server/YlCPLService$YLAppProfile;->getPropertyCount()I

    move-result v22

    if-lez v22, :cond_b

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/YlCPLService;->m_YlAppProfiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12}, Lcom/android/server/YlCPLService;->parseActivity(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private parseActivity(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eProfile"    # Lorg/w3c/dom/Element;

    .prologue
    .line 130
    const-string v17, "ACTIVITY"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 131
    .local v10, "items":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_b

    .line 132
    new-instance v5, Lcom/android/server/YlCPLService$YLAppProfile;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/YlCPLService$YLAppProfile;-><init>(Lcom/android/server/YlCPLService;)V

    .line 133
    .local v5, "appProfile":Lcom/android/server/YlCPLService$YLAppProfile;
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 135
    .local v9, "item":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 136
    .local v4, "activityName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 137
    .local v14, "packageActivityName":Ljava/lang/String;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    .line 138
    .local v13, "maps":Lorg/w3c/dom/NamedNodeMap;
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_1
    invoke-interface {v13}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 139
    invoke-interface {v13, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    .line 140
    .local v6, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Label"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 141
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 143
    const/16 v17, 0x1

    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 144
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 148
    :goto_2
    invoke-virtual {v5, v14}, Lcom/android/server/YlCPLService$YLAppProfile;->setPkgName(Ljava/lang/String;)V

    .line 138
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 146
    :cond_1
    move-object v14, v4

    goto :goto_2

    .line 151
    .end local v6    # "attr":Lorg/w3c/dom/Attr;
    :cond_2
    if-nez v14, :cond_4

    .line 131
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 156
    :cond_4
    const-string v17, "PROPERTY"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 157
    .local v15, "properties":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_a

    .line 158
    invoke-interface {v15, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 159
    .local v16, "property":Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ACTIVITY"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 157
    :cond_5
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 162
    :cond_6
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 163
    .local v7, "attr_maps":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .line 164
    .local v2, "Label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 165
    .local v3, "Value":Ljava/lang/String;
    const/4 v12, 0x0

    :goto_6
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_9

    .line 166
    invoke-interface {v7, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    .line 167
    .restart local v6    # "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Label"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 168
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 169
    :cond_7
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Value"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 170
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 165
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 172
    .end local v6    # "attr":Lorg/w3c/dom/Attr;
    :cond_9
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 173
    invoke-virtual {v5, v2, v3}, Lcom/android/server/YlCPLService$YLAppProfile;->addAppProfileProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 177
    .end local v2    # "Label":Ljava/lang/String;
    .end local v3    # "Value":Ljava/lang/String;
    .end local v7    # "attr_maps":Lorg/w3c/dom/NamedNodeMap;
    .end local v16    # "property":Lorg/w3c/dom/Node;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/YlCPLService;->m_YlAppProfiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v5}, Lcom/android/server/YlCPLService$YLAppProfile;->getPropertyCount()I

    move-result v17

    if-lez v17, :cond_3

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/YlCPLService;->m_YlAppProfiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 182
    .end local v4    # "activityName":Ljava/lang/String;
    .end local v5    # "appProfile":Lcom/android/server/YlCPLService$YLAppProfile;
    .end local v9    # "item":Lorg/w3c/dom/Element;
    .end local v11    # "j":I
    .end local v12    # "k":I
    .end local v13    # "maps":Lorg/w3c/dom/NamedNodeMap;
    .end local v14    # "packageActivityName":Ljava/lang/String;
    .end local v15    # "properties":Lorg/w3c/dom/NodeList;
    :cond_b
    return-void
.end method


# virtual methods
.method public getAppProfileSettingBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "ret":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/server/YlCPLService;->getAppProfileSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 97
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 100
    :cond_0
    return v0
.end method

.method public getAppProfileSettingInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, -0x1

    .line 85
    .local v0, "ret":I
    invoke-virtual {p0, p1, p2}, Lcom/android/server/YlCPLService;->getAppProfileSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 90
    :cond_0
    return v0
.end method

.method public getAppProfileSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "ret":Ljava/lang/String;
    sget v3, Lcom/android/server/YlCPLService;->mInit:I

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const-string v3, "system_server"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v0

    .line 80
    .end local v0    # "ret":Ljava/lang/String;
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 70
    .end local v1    # "ret":Ljava/lang/String;
    .restart local v0    # "ret":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/YlCPLService;->m_YlAppProfiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/YlCPLService$YLAppProfile;

    .line 71
    .local v2, "ylAppProfile":Lcom/android/server/YlCPLService$YLAppProfile;
    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v2, p2}, Lcom/android/server/YlCPLService$YLAppProfile;->getAppProfileValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 80
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public sendPowerHint(I[I)V
    .locals 0
    .param p1, "hint"    # I
    .param p2, "data"    # [I

    .prologue
    .line 104
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(I[I)V

    .line 105
    return-void
.end method
