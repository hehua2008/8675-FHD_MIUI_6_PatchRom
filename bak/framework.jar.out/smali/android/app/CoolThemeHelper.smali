.class public Landroid/app/CoolThemeHelper;
.super Ljava/lang/Object;
.source "CoolThemeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "icon"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "pItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p5, "isCustomizedIcon"    # Z

    .prologue
    .line 30
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/CoolThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "icon"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "pItemName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 48
    .local v0, "draw":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 49
    const/4 v1, 0x0

    .local v1, "localDrawable":Landroid/graphics/drawable/Drawable;
    move-object v2, p0

    .line 50
    check-cast v2, Landroid/app/ApplicationPackageManager;

    invoke-virtual {v2}, Landroid/app/ApplicationPackageManager;->getContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-static {v2, p1, p4, v1}, Lcom/yulong/android/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 54
    .end local v1    # "localDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static handleExtraConfigurationChanges(I)V
    .locals 0
    .param p0, "paramInt"    # I

    .prologue
    .line 65
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p0, "paramInt"    # I
    .param p1, "paramConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "paramContext"    # Landroid/content/Context;
    .param p3, "paramHandler"    # Landroid/os/Handler;

    .prologue
    .line 71
    return-void
.end method

.method public static isCompatibilityMode(I)Z
    .locals 1
    .param p0, "paramInt"    # I

    .prologue
    .line 74
    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 3
    .param p0, "intentFilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 80
    if-eqz p0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 82
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    .line 88
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 81
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
