.class public Lcom/yulong/android/font/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "FontUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "fontutil_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native native_GetDefaultFontPath()Ljava/lang/String;
.end method

.method public static native native_GetFontName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native native_GetUserFontsName()[Ljava/lang/String;
.end method

.method public static native native_SetDefaultFont(Ljava/lang/String;)Z
.end method

.method public static setDefaultFontAndRefresh(Ljava/lang/String;)Z
    .locals 13
    .param p0, "directory"    # Ljava/lang/String;

    .prologue
    const/high16 v12, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    .line 33
    invoke-static {}, Lcom/yulong/android/font/FontUtil;->native_GetDefaultFontPath()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "directoryBefore":Ljava/lang/String;
    const-string v8, "FontUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Font Before:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/yulong/android/font/FontUtil;->native_SetDefaultFont(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 80
    :goto_0
    return v7

    .line 42
    :cond_1
    const-string v8, "persist.sys.font.default_path"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "directoryCurrent":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 44
    const-string v1, ""

    .line 46
    :cond_2
    const-string v8, "FontUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Font current:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    move-object v2, p0

    .line 48
    .local v2, "directorySet":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 49
    const-string v2, ""

    .line 51
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 52
    const-string v8, "FontUtil"

    const-string v9, "Set prop failed."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_4
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    .line 58
    .local v5, "mCurConfig":Landroid/content/res/Configuration;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iput-object p0, v5, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 65
    iget v8, v5, Landroid/content/res/Configuration;->fontScale:F

    mul-float v4, v8, v12

    .line 66
    .local v4, "fscale":F
    float-to-int v6, v4

    .line 68
    .local v6, "nscale":I
    int-to-float v8, v6

    sub-float v8, v4, v8

    float-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_5

    .line 69
    int-to-float v8, v6

    div-float/2addr v8, v12

    iput v8, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 74
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    const/4 v7, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "fscale":F
    .end local v6    # "nscale":I
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/yulong/android/font/FontUtil;->native_SetDefaultFont(Ljava/lang/String;)Z

    .line 61
    const-string v8, "FontUtil"

    const-string v9, "RemoteException in getConfiguration."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v4    # "fscale":F
    .restart local v6    # "nscale":I
    :cond_5
    iget v8, v5, Landroid/content/res/Configuration;->fontScale:F

    float-to-double v8, v8

    const-wide v10, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    add-double/2addr v8, v10

    double-to-float v8, v8

    iput v8, v5, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_1

    .line 75
    :catch_1
    move-exception v3

    .line 76
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/yulong/android/font/FontUtil;->native_SetDefaultFont(Ljava/lang/String;)Z

    .line 77
    const-string v8, "FontUtil"

    const-string v9, "RemoteException in updatePersistentConfiguration."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
