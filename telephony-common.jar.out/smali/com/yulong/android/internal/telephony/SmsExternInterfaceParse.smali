.class public final Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;
.super Ljava/lang/Thread;
.source "SmsExternInterfaceParse.java"


# static fields
.field private static final ThirdMethodName:Ljava/lang/String; = "parseSmsData"

.field private static final mParaMax:I = 0x9

.field private static final mParaMin:I = 0x1


# instance fields
.field private final EXTERNAL_JAR_DIR:Ljava/lang/String;

.field private JAR_EXTRACT_DIR:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mExtClassInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mNum:I

.field mXmlParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    const-string v0, "ExternInterfaceParse"

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->TAG:Ljava/lang/String;

    .line 33
    const-string v0, "//system/framework/"

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->EXTERNAL_JAR_DIR:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mXmlParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;

    .line 57
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mXmlParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->getTotalItem()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mNum:I

    .line 58
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mXmlParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlParse;->getAllConfigs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mExtClassInfoList:Ljava/util/List;

    .line 59
    return-void
.end method

.method private getAllMethod()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 72
    const-string v7, "ExternInterfaceParse"

    const-string v8, "enter getAllMethod()"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 75
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v7, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mNum:I

    if-ge v3, v7, :cond_7

    .line 79
    :try_start_0
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mExtClassInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;

    .line 80
    .local v5, "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    if-eqz v5, :cond_6

    .line 82
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->JAR_EXTRACT_DIR:Ljava/lang/String;

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jar:file://system/framework/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mJarName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "path":Ljava/lang/String;
    iget v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    if-le v7, v11, :cond_0

    iget v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/16 v8, 0x9

    if-le v7, v8, :cond_1

    .line 75
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    :cond_1
    new-instance v1, Ldalvik/system/DexClassLoader;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->JAR_EXTRACT_DIR:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v1, v4, v7, v8, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 91
    .local v1, "dcl":Ldalvik/system/DexClassLoader;
    iget-object v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 92
    .local v6, "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    .line 94
    iget v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    if-ne v12, v7, :cond_2

    .line 97
    const-string v7, "parseSmsData"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_1

    .line 130
    .end local v1    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .end local v6    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "dcl":Ldalvik/system/DexClassLoader;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .restart local v6    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    iget v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    if-ne v13, v7, :cond_3

    .line 102
    const-string v7, "parseSmsData"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 134
    .end local v1    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .end local v6    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v2    # "e":Ljava/lang/InstantiationException;
    .restart local v1    # "dcl":Ldalvik/system/DexClassLoader;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .restart local v6    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_2
    iget v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    if-ne v14, v7, :cond_4

    .line 108
    const-string v7, "parseSmsData"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 137
    .end local v1    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .end local v6    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 110
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v1    # "dcl":Ldalvik/system/DexClassLoader;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .restart local v6    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v7, 0x5

    :try_start_3
    iget v8, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    if-ne v7, v8, :cond_5

    .line 113
    const-string v7, "parseSmsData"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-class v10, [B

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1

    .line 140
    .end local v1    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .end local v6    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_1

    .line 121
    .end local v2    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "dcl":Ldalvik/system/DexClassLoader;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .restart local v6    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :try_start_4
    const-string v7, "parseSmsData"

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-class v10, [B

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-class v10, [[B

    aput-object v10, v8, v9

    const/4 v9, 0x6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, v5, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_1

    .line 143
    .end local v1    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    .end local v6    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_1

    .line 127
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    :cond_6
    :try_start_5
    const-string v7, "ExternInterfaceParse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: getAllMethod tmpCfg is null,i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_1

    .line 146
    .end local v5    # "tmpCfg":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    :catch_5
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 149
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 153
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_7
    const-string v7, "ExternInterfaceParse"

    const-string v8, "end getAllMethod()"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method


# virtual methods
.method protected getClassNum()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mNum:I

    return v0
.end method

.method public getExternInterfaceParseResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[B[[BIILjava/lang/String;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "teleserviceId"    # I
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "userdata"    # [B
    .param p6, "pdus"    # [[B
    .param p7, "phoneId"    # I
    .param p8, "status"    # I
    .param p9, "format"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mNum:I

    if-ge v1, v4, :cond_8

    .line 177
    :try_start_0
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->mExtClassInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;

    .line 179
    .local v3, "tmpInfo":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    iget-object v4, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 181
    :cond_0
    const-string v4, "ExternInterfaceParse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExternInterfaceParseResult method is null,i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v3    # "tmpInfo":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .restart local v3    # "tmpInfo":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    :cond_2
    const-string v4, "ExternInterfaceParse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mParaNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v4, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    iget v4, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/16 v5, 0x9

    if-gt v4, v5, :cond_1

    .line 191
    const/4 v4, 0x2

    iget v5, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    if-ne v4, v5, :cond_3

    .line 193
    iget-object v4, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    iget-object v5, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 213
    .local v2, "o":Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_1

    .line 218
    const-string v4, "ExternInterfaceParse"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 222
    const/4 v4, 0x1

    .line 248
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "tmpInfo":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    :goto_3
    return v4

    .line 195
    .restart local v3    # "tmpInfo":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    :cond_3
    const/4 v4, 0x3

    iget v5, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    if-ne v4, v5, :cond_4

    .line 197
    iget-object v4, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    iget-object v5, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 199
    .end local v2    # "o":Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x4

    iget v5, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    if-ne v4, v5, :cond_5

    .line 201
    iget-object v4, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    iget-object v5, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 203
    .end local v2    # "o":Ljava/lang/Object;
    :cond_5
    const/4 v4, 0x5

    iget v5, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mParaNum:I

    if-ne v4, v5, :cond_6

    .line 205
    iget-object v4, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    iget-object v5, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/4 v7, 0x4

    aput-object p5, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 209
    .end local v2    # "o":Ljava/lang/Object;
    :cond_6
    iget-object v4, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    iget-object v5, v3, Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/4 v7, 0x4

    aput-object p5, v6, v7

    const/4 v7, 0x5

    aput-object p6, v6, v7

    const/4 v7, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    aput-object p9, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "o":Ljava/lang/Object;
    goto/16 :goto_2

    .line 224
    :cond_7
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    const/4 v4, 0x2

    goto/16 :goto_3

    .line 234
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "tmpInfo":Lcom/yulong/android/internal/telephony/SmsExternInterfaceXmlConfig;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 238
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 242
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_1

    .line 248
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method public run()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->getAllMethod()V

    .line 64
    return-void
.end method
