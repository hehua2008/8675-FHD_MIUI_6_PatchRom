.class Lcom/android/server/pm/PackageManagerService$Injector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation build Landroid/annotation/CoolLifeHook;
    value = .enum Landroid/annotation/CoolLifeHook$CoolLifeHookType;->NEW_CLASS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addCoolLifeExtendFlags(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 208
    const/high16 v0, -0x80000000

    .line 209
    .local v0, "coollifeExtendFlags":I
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 210
    return-void
.end method

.method static setCoolLifeExtendFlags(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .locals 11
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v10, -0x80000000

    .line 223
    if-eq p2, v10, :cond_0

    .line 245
    :goto_0
    return v6

    .line 227
    :cond_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 229
    .local v2, "permission":I
    if-nez v2, :cond_1

    move v0, v7

    .line 230
    .local v0, "allowedByPermission":Z
    :goto_1
    if-nez v0, :cond_2

    move v6, v7

    .line 231
    goto :goto_0

    .end local v0    # "allowedByPermission":Z
    :cond_1
    move v0, v6

    .line 229
    goto :goto_1

    .line 234
    .restart local v0    # "allowedByPermission":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .line 235
    .local v1, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 236
    .local v5, "settings":Lcom/android/server/pm/Settings;
    monitor-enter v1

    .line 237
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 238
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 239
    .local v4, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 240
    if-ne p2, v10, :cond_3

    .line 241
    const/high16 v6, -0x80000000

    invoke-static {v4, v3, v6, p3}, Lcom/android/server/pm/PackageManagerService$Injector;->updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 245
    :cond_4
    monitor-exit v1

    move v6, v7

    goto :goto_0

    .line 246
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v6

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method static updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V
    .locals 3
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "updateFlags"    # I
    .param p3, "flags"    # I

    .prologue
    .line 213
    if-ne p3, p2, :cond_0

    .line 214
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 215
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 218
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method
