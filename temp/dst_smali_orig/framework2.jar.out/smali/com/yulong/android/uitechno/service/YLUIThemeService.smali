.class Lcom/yulong/android/uitechno/service/YLUIThemeService;
.super Lcom/yulong/android/uitechno/service/BService;
.source "UitechnoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "uitechnoService.YLUIThemeService"

.field static final THEME_DEFAULT_PATH_VALUE:Ljava/lang/String; = "system/lib/uitechno/defaulttheme"

.field public static final THEME_DEF_STYLE:Ljava/lang/String; = "Samsung"

.field static final THEME_ICON_DEFAULT_PATH_VALUE:Ljava/lang/String; = "system/lib/uitechno/icon"

.field static final THEME_SUBTYPE_MULTIPLE_COMMON:I = 0x1

.field static final THEME_SUBTYPE_MULTIPLE_USER:I = 0x3

.field static final THEME_SUBTYPE_MULTIPLE_WIDGET:I = 0x2

.field static final THEME_TYPE_MULTIPLE_PACKAGE:I = 0x100

.field static final THEME_TYPE_SINGLE_PACKAGE:I = 0x0

.field public static final USERTHEME_CACHE_PATH:Ljava/lang/String; = "data/data/userthemecache"

.field public static final USERTHEME_PATH_A:Ljava/lang/String; = "data/data/userthemeA"

.field public static final USERTHEME_PATH_B:Ljava/lang/String; = "data/data/userthemeB"

.field public static final USER_THEME_SET_COMPLETED:Ljava/lang/String; = "android.intent.action.USER_THEME_SET_COMPLETED"


# instance fields
.field THEME_ALWAYS_AVAILABLE:Z

.field public mCurPath:Ljava/lang/String;

.field private mLoadedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPropertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSetUserThemePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThemePropertyMap:Ljava/util/HashMap;
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

.field public mUserThemePackagesProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/BService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->THEME_ALWAYS_AVAILABLE:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mPropertiesMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mLoadedPackages:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mThemePropertyMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mSetUserThemePackages:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mUserThemePackagesProperties:Ljava/util/HashMap;

    const-string v0, "data/data/userthemeA"

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mCurPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/uitechno/service/YLUIThemeService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/uitechno/service/YLUIThemeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mThemePropertyMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private declared-synchronized beginSetUserTheme(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->ensureUserThemeCacheExist()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->ensureUserThemeDirExist()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mSetUserThemePackages:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    const-string v3, "uitechnoService.YLUIThemeService"

    const-string v4, "YLUIThemeService.beginSetUserTheme() end fail 1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mSetUserThemePackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "data/data/userthemeA"

    iput-object v4, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mCurPath:Ljava/lang/String;

    const-string v4, "persist.sys.ui.usertheme.path"

    const-string v5, "data/data/userthemeB"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "curUserPath":Ljava/lang/String;
    const-string v4, "data/data/userthemeA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "data/data/userthemeB"

    iput-object v4, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mCurPath:Ljava/lang/String;

    :cond_3
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mCurPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/yulong/android/uitechno/service/UitechnoService;->deleteFile(Ljava/io/File;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mCurPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile2Dir(Ljava/io/File;Ljava/io/File;ZZ)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v3, "uitechnoService.YLUIThemeService"

    const-string v4, "YLUIThemeService.beginSetUserTheme() end fail 2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v0    # "curUserPath":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mSetUserThemePackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    goto :goto_2
.end method

.method private declared-synchronized clearProperty()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized clearProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private varargs declared-synchronized clearProperty([Ljava/lang/String;)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized clearThemeProperty()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mThemePropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized endSetUserTheme(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mSetUserThemePackages:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "uitechnoService.YLUIThemeService"

    const-string v4, "YLUIThemeService.endSetUserTheme() end fail 1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mSetUserThemePackages:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mUserThemePackagesProperties:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .local v0, "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;>;"
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mUserThemePackagesProperties:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mCurPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/properties.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->writeUserThemePropertis2XML(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    if-nez v1, :cond_1

    const-string v3, "uitechnoService.YLUIThemeService"

    const-string v4, "YLUIThemeService.endSetUserTheme() end fail 2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;>;"
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;>;"
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mSetUserThemePackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "persist.sys.ui.usertheme.path"

    iget-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mCurPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_THEME_SET_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized ensureUserThemeCacheExist()Z
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "data/data/userthemecache"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "result":Z
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .end local v1    # "result":Z
    :goto_0
    monitor-exit p0

    return v2

    .restart local v1    # "result":Z
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "result":Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized ensureUserThemeDirExist()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "data/data/userthemeA"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "result":Z
    if-nez v1, :cond_1

    .end local v1    # "result":Z
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .restart local v1    # "result":Z
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1ed

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .end local v1    # "result":Z
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v3, "data/data/userthemeB"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .restart local v1    # "result":Z
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ed

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "result":Z
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getLocaleSuffix()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-zh-rCN"

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-zh-rTW"

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private getPackageProperties(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .local v0, "packageProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "packageProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "packageProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private declared-synchronized getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v10, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->loadPackageProperty(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->getPackageProperties(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .local v3, "packageProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_5

    const-string v4, ""

    .local v4, "property":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .local v6, "realKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .local v2, "keySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "realKey":Ljava/lang/String;
    const-string v10, "-"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "strs":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "packageProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "property":Ljava/lang/String;
    .end local v5    # "realKey":Ljava/lang/String;
    .end local v6    # "realKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "strs":[Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "packageProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "property":Ljava/lang/String;
    .restart local v6    # "realKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "keyL":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "keyL":Ljava/lang/String;
    .end local v2    # "keySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "property":Ljava/lang/String;
    .end local v6    # "realKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    invoke-direct {p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->getLocaleSuffix()Ljava/lang/String;

    move-result-object v9

    .local v9, "suffix":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "relKey":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "property":Ljava/lang/String;
    if-nez v4, :cond_1

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "property":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v4    # "property":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private declared-synchronized getThemeProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mThemePropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadPackageProperty(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v6, "persist.sys.ui.theme.path"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "path":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/properties.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    const-string v6, "uitechnoService.YLUIThemeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->getPackageProperties(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .local v3, "packageProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v4, 0x0

    .local v4, "parser":Ljavax/xml/parsers/SAXParser;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    new-instance v6, Lcom/yulong/android/uitechno/service/YLUIThemeService$1;

    invoke-direct {v6, p0, v3}, Lcom/yulong/android/uitechno/service/YLUIThemeService$1;-><init>(Lcom/yulong/android/uitechno/service/YLUIThemeService;Ljava/util/HashMap;)V

    invoke-virtual {v4, v2, v6}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "uitechnoService.YLUIThemeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "YLUIThemeService.loadPackageProperties() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized loadThemeProperty()V
    .locals 8

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v5, "persist.sys.ui.theme.path"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "path":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, "file":Ljava/io/File;
    :try_start_1
    const-string v5, "system/lib/uitechno/defaulttheme"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/description.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "file":Ljava/io/File;
    :goto_1
    const-string v5, "uitechnoService.YLUIThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mThemePropertyMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mThemePropertyMap:Ljava/util/HashMap;

    const-string v6, "style"

    const-string v7, "Samsung"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v3, 0x0

    .local v3, "parser":Ljavax/xml/parsers/SAXParser;
    :try_start_2
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    new-instance v5, Lcom/yulong/android/uitechno/service/YLUIThemeService$2;

    invoke-direct {v5, p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService$2;-><init>(Lcom/yulong/android/uitechno/service/YLUIThemeService;)V

    invoke-virtual {v3, v2, v5}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "uitechnoService.YLUIThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "YLUIThemeService.loadThemeProperty() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "path":Ljava/lang/String;
    :cond_2
    :try_start_4
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/description_common.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v2    # "file":Ljava/io/File;
    goto :goto_1
.end method

.method private declared-synchronized loadUserThemeProperties(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;>;"
    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mCurPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/properties.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "propertisFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    monitor-exit p0

    return v5

    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v3, 0x0

    .local v3, "parser":Ljavax/xml/parsers/SAXParser;
    :try_start_2
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    new-instance v6, Lcom/yulong/android/uitechno/service/YLUIThemeService$3;

    invoke-direct {v6, p0, p2}, Lcom/yulong/android/uitechno/service/YLUIThemeService$3;-><init>(Lcom/yulong/android/uitechno/service/YLUIThemeService;Ljava/util/HashMap;)V

    invoke-virtual {v3, v2, v6}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "uitechnoService.YLUIThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "YLUIThemeService.loadUserThemeProperties() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "propertisFilePath":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized setUserThemeBitmapDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resFilePath"    # Ljava/lang/String;
    .param p3, "bitmapFilePath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mSetUserThemePackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "uitechnoService.YLUIThemeService"

    const-string v3, "YLUIThemeService.setUserThemeBitmapDrawable() end fail 1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x1

    .local v1, "result":Z
    :try_start_1
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mCurPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    if-nez p3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "uitechnoService.YLUIThemeService"

    const-string v3, "YLUIThemeService.setUserThemeBitmapDrawable() end fail 2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized setUserThemeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mSetUserThemePackages:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "uitechnoService.YLUIThemeService"

    const-string v8, "YLUIThemeService.setUserThemeString() end fail 1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v6

    :cond_0
    const/4 v5, 0x1

    .local v5, "result":Z
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mCurPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/properties.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "propertisFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    iget-object v7, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mUserThemePackagesProperties:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .local v2, "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;>;"
    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .restart local v2    # "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;>;"
    iget-object v7, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->mUserThemePackagesProperties:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->loadUserThemeProperties(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v7, "uitechnoService.YLUIThemeService"

    const-string v8, "YLUIThemeService.setUserThemeString() end fail 2"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;>;"
    .end local v3    # "propertisFilePath":Ljava/lang/String;
    .end local v5    # "result":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;>;"
    .restart local v3    # "propertisFilePath":Ljava/lang/String;
    .restart local v5    # "result":Z
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x1ed

    invoke-static {v1, v7}, Lcom/yulong/android/uitechno/service/UitechnoService;->mkDirForFile(Ljava/io/File;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1ed

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;

    .local v4, "property":Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;
    if-nez p3, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_0

    .end local v4    # "property":Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v7, "uitechnoService.YLUIThemeService"

    const-string v8, "YLUIThemeService.setUserThemeString() end fail 3"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "property":Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;
    :cond_3
    if-eqz v4, :cond_4

    iput-object p3, v4, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->value:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;

    .end local v4    # "property":Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;
    invoke-direct {v4}, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;-><init>()V

    .restart local v4    # "property":Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;
    const-string v6, "string"

    iput-object v6, v4, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->nodeName:Ljava/lang/String;

    iput-object p2, v4, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->key:Ljava/lang/String;

    iput-object p3, v4, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->value:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized writeUserThemePropertis2XML(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 15
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .local v3, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v13, "root"

    invoke-interface {v4, v13}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .local v9, "root":Lorg/w3c/dom/Element;
    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;

    .local v7, "property":Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;
    iget-object v13, v7, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->nodeName:Ljava/lang/String;

    invoke-interface {v4, v13}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .local v1, "child":Lorg/w3c/dom/Element;
    const-string v13, "key"

    iget-object v14, v7, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->key:Ljava/lang/String;

    invoke-interface {v1, v13, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "value"

    iget-object v14, v7, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->value:Ljava/lang/String;

    invoke-interface {v1, v13, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "child":Lorg/w3c/dom/Element;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "property":Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;
    .end local v9    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return v13

    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "root":Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v11

    .local v11, "tFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v12

    .local v12, "transformer":Ljavax/xml/transform/Transformer;
    const-string v13, "encoding"

    const-string v14, "UTF-8"

    invoke-virtual {v12, v13, v14}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v10, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .local v10, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v8, Ljavax/xml/transform/stream/StreamResult;

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v13}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .local v8, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v12, v10, v8}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, 0x1

    goto :goto_1

    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v9    # "root":Lorg/w3c/dom/Element;
    .end local v10    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v11    # "tFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v12    # "transformer":Ljavax/xml/transform/Transformer;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private zygotePreloadResources()V
    .locals 11

    .prologue
    const-class v7, Landroid/os/Process;

    monitor-enter v7

    :try_start_0
    const-string v6, "android.os.Process"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "ZygoteInitClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "zygoteSendArgsAndGetResult"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/util/ArrayList;

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "preloadResources"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sZygoteSocket"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LocalSocket;

    .local v4, "localSocket":Landroid/net/LocalSocket;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "ZygoteInitClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "localSocket":Landroid/net/LocalSocket;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v7

    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "uitechnoService.YLUIThemeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " android.os.Process e == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method


# virtual methods
.method onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p4}, Lcom/yulong/android/uitechno/service/BService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    :goto_0
    return v11

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "value":Ljava/lang/String;
    if-nez v10, :cond_0

    const-string v10, ""

    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_0

    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "packageName":Ljava/lang/String;
    const-string v11, "uitechnoService.YLUIThemeService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "packageName == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->loadPackageProperty(Ljava/lang/String;)V

    :cond_1
    const/4 v11, 0x1

    goto :goto_0

    .end local v4    # "packageName":Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->clearProperty()V

    const/4 v11, 0x1

    goto :goto_0

    :pswitch_4
    const/16 v9, 0x100

    .local v9, "themeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_2
    const/4 v8, 0x1

    .local v8, "subThemeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :cond_3
    if-nez v9, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->clearProperty(Ljava/lang/String;)V

    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->clearProperty()V

    const/4 v11, 0x1

    if-ne v8, v11, :cond_6

    invoke-direct {p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->clearThemeProperty()V

    invoke-direct {p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->loadThemeProperty()V

    :cond_6
    const/4 v11, 0x3

    if-eq v8, v11, :cond_4

    invoke-direct {p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->zygotePreloadResources()V

    goto :goto_1

    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "subThemeType":I
    .end local v9    # "themeType":I
    :pswitch_5
    invoke-direct {p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->zygotePreloadResources()V

    const/4 v11, 0x1

    goto :goto_0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->beginSetUserTheme(Ljava/lang/String;)Z

    move-result v6

    .local v6, "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->endSetUserTheme(Ljava/lang/String;)Z

    move-result v6

    .restart local v6    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "resFilePath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "bitmapFilePath":Ljava/lang/String;
    invoke-direct {p0, v4, v5, v1}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->setUserThemeBitmapDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .restart local v6    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    .end local v1    # "bitmapFilePath":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "resFilePath":Ljava/lang/String;
    .end local v6    # "result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "str":Ljava/lang/String;
    invoke-direct {p0, v4, v3, v7}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->setUserThemeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .restart local v6    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "result":Z
    .end local v7    # "str":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->getThemeProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "value":Ljava/lang/String;
    if-nez v10, :cond_7

    const-string v10, ""

    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method systemReady()V
    .locals 3

    .prologue
    const-string v1, "uitechnoService.YLUIThemeService"

    const-string v2, "systemReady() start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "persist.sys.ui.theme.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "available":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService;->THEME_ALWAYS_AVAILABLE:Z

    if-eqz v1, :cond_3

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "persist.sys.ui.theme.enable"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v1, "persist.sys.ui.theme.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "persist.sys.ui.theme.path"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "persist.sys.ui.theme.path"

    const-string v2, "system/lib/uitechno/defaulttheme"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "persist.sys.ui.theme.icon.path"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "persist.sys.ui.theme.icon.path"

    const-string v2, "system/lib/uitechno/icon"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/yulong/android/uitechno/service/YLUIThemeService;->loadThemeProperty()V

    const-string v1, "uitechnoService.YLUIThemeService"

    const-string v2, "systemReady() end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "false"

    const-string v1, "persist.sys.ui.theme.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
