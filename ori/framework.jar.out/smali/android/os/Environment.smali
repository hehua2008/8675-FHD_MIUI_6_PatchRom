.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Environment$UserEnvironment;
    }
.end annotation


# static fields
.field private static final CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

.field private static final DATA_DIRECTORY:Ljava/io/File;

.field private static final DEBUG:Z = true

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static final DIRECTORY_ANDROID:Ljava/lang/String; = "Android"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOCUMENTS:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field public static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_ANDROID_ROOT:Ljava/io/File;

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_MEDIA:Ljava/lang/String; = "media"

.field private static final DIR_MEDIA_STORAGE:Ljava/io/File;

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

.field private static final ENV_ANDROID_ROOT:Ljava/lang/String; = "ANDROID_ROOT"

.field private static final ENV_EMULATED_STORAGE_SOURCE:Ljava/lang/String; = "EMULATED_STORAGE_SOURCE"

.field private static final ENV_EMULATED_STORAGE_TARGET:Ljava/lang/String; = "EMULATED_STORAGE_TARGET"

.field private static final ENV_EXTERNAL_STORAGE:Ljava/lang/String; = "EXTERNAL_STORAGE"

.field private static final ENV_MEDIA_STORAGE:Ljava/lang/String; = "MEDIA_STORAGE"

.field private static final ENV_SECONDARY_STORAGE:Ljava/lang/String; = "SECONDARY_STORAGE"

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_FORMATTING:Ljava/lang/String; = "formatting"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field public static final MEDIA_UNMOUNTING:Ljava/lang/String; = "unmounting"

.field private static final SECURE_DATA_DIRECTORY:Ljava/io/File;

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final SYSTEM_PROPERTY_MAIN_STORAGE:Ljava/lang/String; = "sys.storage.main"
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final SYSTEM_PROPERTY_MAIN_STORAGE_PERSIST:Ljava/lang/String; = "persist.sys.storage.main"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static volatile mIndexRemovable:I

.field private static volatile mIndexUnremovable:I

.field private static volatile mSelectedIndex:I

.field private static volatile mVolumes:[Landroid/os/storage/StorageVolume;

.field private static sCurrentUser:Landroid/os/Environment$UserEnvironment;

.field private static final sLock:Ljava/lang/Object;

.field private static sUserRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    .line 72
    const-string v0, "MEDIA_STORAGE"

    const-string v1, "/data/media"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_MEDIA_STORAGE:Ljava/io/File;

    .line 74
    const-string v0, "EMULATED_STORAGE_TARGET"

    invoke-static {v0}, Landroid/os/Environment;->getCanonicalPathOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    .line 118
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 119
    sput v2, Landroid/os/Environment;->mIndexUnremovable:I

    .line 120
    sput v2, Landroid/os/Environment;->mIndexRemovable:I

    .line 121
    sput v2, Landroid/os/Environment;->mSelectedIndex:I

    .line 294
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 512
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    .line 518
    const-string v0, "ANDROID_SECURE_DATA"

    const-string v1, "/data/secure"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 521
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    .line 623
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 635
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 647
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 659
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 671
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 679
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 687
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 697
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 704
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 710
    const-string v0, "Documents"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method

.method public static buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 1

    .prologue
    .line 750
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 751
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidDataDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 795
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 796
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 759
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 760
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 787
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 768
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 769
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 777
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 778
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 1036
    move-object v1, p0

    .line 1037
    .local v1, "cur":Ljava/io/File;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move-object v2, v1

    .end local v1    # "cur":Ljava/io/File;
    .local v2, "cur":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 1038
    .local v5, "segment":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1039
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1037
    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "cur":Ljava/io/File;
    .restart local v2    # "cur":Ljava/io/File;
    goto :goto_0

    .line 1041
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_1

    .line 1044
    .end local v1    # "cur":Ljava/io/File;
    .end local v5    # "segment":Ljava/lang/String;
    .restart local v2    # "cur":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method public static varargs buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p0, "base"    # [Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 1023
    array-length v2, p0

    new-array v1, v2, [Ljava/io/File;

    .line 1024
    .local v1, "result":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1025
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1027
    :cond_0
    return-object v1
.end method

.method private static getCanonicalPathOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "variableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 993
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1001
    :goto_0
    return-object v2

    .line 998
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Environment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resolve canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 527
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "defaultPath"    # Ljava/lang/String;

    .prologue
    .line 988
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 803
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getEmulatedStorageObbSource()Ljava/io/File;
    .locals 3

    .prologue
    .line 611
    new-instance v0, Ljava/io/File;

    const-string v1, "EMULATED_STORAGE_SOURCE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "obb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEmulatedStorageSource(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 605
    new-instance v0, Ljava/io/File;

    const-string v1, "EMULATED_STORAGE_SOURCE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 588
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 589
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->selectedVolumeIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 741
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 742
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->selectedVolumeIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 910
    sget-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->selectedVolumeIndex()I

    move-result v2

    aget-object v0, v1, v2

    .line 911
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLegacyExternalStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 594
    new-instance v0, Ljava/io/File;

    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLegacyExternalStorageObbDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 599
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 488
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getMediaDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getPrimaryIndex()I
    .locals 27

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    .line 125
    .local v16, "pid":I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/proc/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/cmdline"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 126
    .local v19, "statFile":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 127
    .local v18, "procStatusValues":[I
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 128
    .local v21, "tempPkgName":[Ljava/lang/String;
    const/16 v23, 0x0

    const/16 v24, 0x1000

    aput v24, v18, v23

    .line 129
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 130
    const/16 v23, 0x0

    aget-object v23, v21, v23

    const-string/jumbo v24, "zygote"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 131
    const/16 v17, 0x0

    .line 197
    :cond_0
    :goto_0
    return v17

    .line 134
    :cond_1
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v23, :cond_a

    .line 135
    sget-object v24, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    monitor-enter v24

    .line 136
    :try_start_0
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v23, :cond_9

    .line 138
    :try_start_1
    const-string/jumbo v23, "mount"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 139
    .local v6, "binderMount":Landroid/os/IBinder;
    const/4 v12, 0x0

    .line 140
    .local v12, "length":I
    if-nez v6, :cond_2

    .line 141
    const/16 v17, 0x0

    :try_start_2
    monitor-exit v24

    goto :goto_0

    .line 190
    .end local v6    # "binderMount":Landroid/os/IBinder;
    .end local v12    # "length":I
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    .line 143
    .restart local v6    # "binderMount":Landroid/os/IBinder;
    .restart local v12    # "length":I
    :cond_2
    :try_start_3
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .line 144
    .local v13, "mountService":Landroid/os/storage/IMountService;
    if-nez v13, :cond_3

    .line 145
    const/16 v17, 0x0

    :try_start_4
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 148
    :cond_3
    :try_start_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    .line 149
    .local v14, "myUserId":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v8, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v13}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v23

    sput-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 151
    sget-object v5, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    .local v5, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_6

    aget-object v22, v5, v10

    .line 152
    .local v22, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v15

    .line 153
    .local v15, "owner":Landroid/os/UserHandle;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v23

    move/from16 v0, v23

    if-ne v0, v14, :cond_5

    .line 154
    :cond_4
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v23, "Environment"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "volume = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 158
    .end local v15    # "owner":Landroid/os/UserHandle;
    .end local v22    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/os/storage/StorageVolume;

    check-cast v23, [Landroid/os/storage/StorageVolume;

    sput-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    :try_start_6
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    move-object/from16 v0, v23

    array-length v12, v0

    .line 165
    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v12, v0, :cond_9

    .line 166
    add-int/lit8 v9, v12, -0x1

    .local v9, "i":I
    :goto_2
    if-ltz v9, :cond_c

    .line 167
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v23, v23, v9

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 168
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v23, v23, v9

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v25, "sdcard1"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 169
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v9, v0, :cond_7

    .line 170
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v20, v23, v9

    .line 171
    .local v20, "temp":Landroid/os/storage/StorageVolume;
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    sget-object v25, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    aput-object v25, v23, v9

    .line 172
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v25, 0x1

    aput-object v20, v23, v25

    .line 166
    .end local v20    # "temp":Landroid/os/storage/StorageVolume;
    :cond_7
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 159
    .end local v5    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v8    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v9    # "i":I
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v14    # "myUserId":I
    :catch_0
    move-exception v7

    .line 160
    .local v7, "e":Landroid/os/RemoteException;
    const-string v23, "Environment"

    const-string v25, "Failed to mountService.getVolumeList"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/16 v23, 0x0

    sput-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 162
    const/16 v17, 0x0

    :try_start_7
    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 176
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v5    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v8    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v9    # "i":I
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v14    # "myUserId":I
    :cond_8
    if-eqz v9, :cond_7

    .line 177
    :try_start_8
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v20, v23, v9

    .line 178
    .restart local v20    # "temp":Landroid/os/storage/StorageVolume;
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    sget-object v25, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    aput-object v25, v23, v9

    .line 179
    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v25, 0x0

    aput-object v20, v23, v25
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 186
    .end local v5    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v6    # "binderMount":Landroid/os/IBinder;
    .end local v8    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v9    # "i":I
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "length":I
    .end local v13    # "mountService":Landroid/os/storage/IMountService;
    .end local v14    # "myUserId":I
    .end local v20    # "temp":Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v7

    .line 187
    .local v7, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v23, "Environment"

    const-string v25, "couldn\'t talk to MountService"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_4
    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 192
    :cond_a
    const-string/jumbo v23, "sys.storage.main"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 193
    .local v17, "primaryIndex":I
    if-ltz v17, :cond_b

    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v23, :cond_0

    sget-object v23, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 194
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 183
    .end local v17    # "primaryIndex":I
    .restart local v5    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v6    # "binderMount":Landroid/os/IBinder;
    .restart local v8    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v9    # "i":I
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "length":I
    .restart local v13    # "mountService":Landroid/os/storage/IMountService;
    .restart local v14    # "myUserId":I
    :cond_c
    const/16 v23, 0x0

    :try_start_a
    sput v23, Landroid/os/Environment;->mIndexUnremovable:I

    .line 184
    const/16 v23, 0x1

    sput v23, Landroid/os/Environment;->mIndexRemovable:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4
.end method

.method private static getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 9

    .prologue
    .line 241
    invoke-static {}, Landroid/os/Environment;->getPrimaryIndex()I

    move-result v4

    .line 242
    .local v4, "primaryIndex":I
    sget-object v6, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v6, :cond_4

    .line 243
    if-lez v4, :cond_0

    .line 244
    add-int/lit8 v6, v4, -0x1

    sput v6, Landroid/os/Environment;->mSelectedIndex:I

    .line 245
    sget-object v6, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    sget v7, Landroid/os/Environment;->mSelectedIndex:I

    aget-object v6, v6, v7

    .line 278
    :goto_0
    return-object v6

    .line 248
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 249
    .local v5, "uid":I
    const v6, 0x186a0

    rem-int v6, v5, v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_1

    .line 251
    sget v6, Landroid/os/Environment;->mIndexUnremovable:I

    sput v6, Landroid/os/Environment;->mSelectedIndex:I

    .line 252
    sget-object v6, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    sget v7, Landroid/os/Environment;->mIndexUnremovable:I

    aget-object v6, v6, v7

    goto :goto_0

    .line 254
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 255
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    if-nez v3, :cond_2

    .line 256
    const-string v6, "Environment"

    const-string/jumbo v7, "pm == null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget v6, Landroid/os/Environment;->mIndexUnremovable:I

    sput v6, Landroid/os/Environment;->mSelectedIndex:I

    .line 258
    sget-object v6, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    sget v7, Landroid/os/Environment;->mIndexUnremovable:I

    aget-object v6, v6, v7

    goto :goto_0

    .line 261
    :cond_2
    :try_start_0
    invoke-interface {v3, v5}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 263
    const/4 v6, 0x0

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v3, v2, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 264
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const-string v6, "Environment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPrimaryVolume info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",packagename:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",UserId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eqz v1, :cond_3

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 266
    const-string v6, "Environment"

    const-string v7, "getPrimaryVolume: This apk install on sd and we return volumeRemovable!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget v6, Landroid/os/Environment;->mIndexRemovable:I

    sput v6, Landroid/os/Environment;->mSelectedIndex:I

    .line 268
    sget-object v6, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    sget v7, Landroid/os/Environment;->mIndexRemovable:I

    aget-object v6, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 271
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget v6, Landroid/os/Environment;->mIndexUnremovable:I

    sput v6, Landroid/os/Environment;->mSelectedIndex:I

    .line 276
    sget-object v6, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    sget v7, Landroid/os/Environment;->mIndexUnremovable:I

    aget-object v6, v6, v7

    goto/16 :goto_0

    .line 278
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    .end local v5    # "uid":I
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static getSecureDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 476
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 928
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 935
    .local v5, "rawPath":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 937
    .local v4, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 938
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 939
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 940
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 946
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "rawPath":Ljava/lang/String;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v8

    .line 929
    :catch_0
    move-exception v1

    .line 930
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "Environment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to resolve target path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string/jumbo v8, "unknown"

    goto :goto_1

    .line 938
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "mountService":Landroid/os/storage/IMountService;
    .restart local v5    # "rawPath":Ljava/lang/String;
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 943
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v1

    .line 944
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "Environment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find external storage state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v8, "unknown"

    goto :goto_1
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 458
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 461
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUserSystemDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 499
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static initForCurrentUser()V
    .locals 3

    .prologue
    .line 299
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 300
    .local v0, "userId":I
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    sput-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    .line 304
    sget-object v2, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 305
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 306
    monitor-exit v2

    .line 308
    return-void

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isEncryptedFilesystemEnabled()Z
    .locals 2

    .prologue
    .line 509
    const-string/jumbo v0, "persist.security.efs.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageEmulated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 977
    sget-object v1, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_0

    .line 978
    invoke-static {}, Landroid/os/Environment;->getPrimaryIndex()I

    .line 980
    :cond_0
    sget-object v1, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isExternalStorageRemovable()Z
    .locals 2

    .prologue
    .line 958
    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 959
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 1061
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1080
    .local v0, "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object p0

    .line 1067
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "rawPath":Ljava/lang/String;
    sget-object v3, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1069
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIR_MEDIA_STORAGE:Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1071
    .local v1, "internalPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object p0, v1

    .line 1072
    goto :goto_0

    .line 1075
    .end local v1    # "internalPath":Ljava/io/File;
    .end local v2    # "rawPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1076
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Environment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static selectedVolumeIndex()I
    .locals 5

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 284
    .local v0, "primaryolume":Landroid/os/storage/StorageVolume;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 285
    .local v1, "userId":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 286
    :cond_0
    sget v2, Landroid/os/Environment;->mIndexUnremovable:I

    sput v2, Landroid/os/Environment;->mSelectedIndex:I

    .line 288
    :cond_1
    const-string v2, "Environment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSelectedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Environment;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget v2, Landroid/os/Environment;->mSelectedIndex:I

    return v2
.end method

.method public static setUserRequired(Z)V
    .locals 0
    .param p0, "userRequired"    # Z

    .prologue
    .line 1007
    sput-boolean p0, Landroid/os/Environment;->sUserRequired:Z

    .line 1008
    return-void
.end method

.method private static throwIfUserRequired()V
    .locals 3

    .prologue
    .line 1011
    sget-boolean v0, Landroid/os/Environment;->sUserRequired:Z

    if-eqz v0, :cond_0

    .line 1012
    const-string v0, "Environment"

    const-string v1, "Path requests must specify a user by using UserEnvironment"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    :cond_0
    return-void
.end method

.method public static updateMainStorageProp()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 201
    const-string/jumbo v8, "persist.sys.storage.main"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 202
    .local v4, "primaryIndex_persist":I
    const-string/jumbo v8, "sys.storage.main"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 204
    .local v3, "primaryIndex":I
    const/4 v8, 0x2

    if-eq v4, v8, :cond_1

    .line 205
    const-string/jumbo v8, "sys.storage.main"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-eq v4, v3, :cond_0

    .line 237
    :goto_0
    return v6

    :cond_0
    move v6, v7

    .line 206
    goto :goto_0

    .line 209
    :cond_1
    sget-object v8, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v8, :cond_2

    .line 210
    invoke-static {}, Landroid/os/Environment;->getPrimaryIndex()I

    .line 213
    :cond_2
    add-int/lit8 v1, v4, -0x1

    .line 214
    .local v1, "index":I
    sget-object v8, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v8, :cond_6

    .line 215
    const-string/jumbo v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 217
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v5, "unmounted"

    .line 219
    .local v5, "state":Ljava/lang/String;
    :try_start_0
    sget-object v8, Landroid/os/Environment;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 224
    :goto_1
    const-string/jumbo v8, "mounted"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "mounted_ro"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 225
    :cond_3
    if-eq v3, v4, :cond_6

    .line 226
    const-string/jumbo v7, "sys.storage.main"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v8, "unmounted"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "removed"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "nofs"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 231
    :cond_5
    if-ne v3, v4, :cond_6

    .line 232
    const-string/jumbo v7, "sys.storage.main"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "state":Ljava/lang/String;
    :cond_6
    move v6, v7

    .line 237
    goto :goto_0
.end method
