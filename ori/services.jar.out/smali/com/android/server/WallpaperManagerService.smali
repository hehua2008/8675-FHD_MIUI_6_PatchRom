.class Lcom/android/server/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field public static final ACTION_KEYGUARD_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

.field public static final ACTION_LAUNCHERMENU_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.LAUNCHERMENU_WALLPAPER_CHANGED"

.field static final DEBUG:Z = false

.field static final IMAGE_WALLPAPER:Landroid/content/ComponentName;

.field static final KEYGUARD_WALLPAPER:Ljava/lang/String; = "keyguard_wallpaper"

.field static final LAUNCHERMENU_WALLPAPER:Ljava/lang/String; = "launchermenu_wallpaper"

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

.field mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 471
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 93
    new-array v0, v4, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 188
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 473
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 474
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 476
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 477
    new-instance v0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    .line 478
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 479
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 480
    invoke-direct {p0, v4}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 481
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->notifyKeyguardCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->notifyLauncherMenuCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_0
    return-void
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 675
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 676
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 677
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 678
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 679
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .locals 4

    .prologue
    .line 1402
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1403
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1404
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 484
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private loadSettingsLocked(I)V
    .locals 24
    .param p1, "userId"    # I

    .prologue
    .line 1300
    invoke-static/range {p1 .. p1}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v9

    .line 1301
    .local v9, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v13, 0x0

    .line 1302
    .local v13, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    .line 1303
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1305
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->migrateFromOld()V

    .line 1307
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1308
    .local v18, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v18, :cond_1

    .line 1309
    new-instance v18, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .end local v18    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/server/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 1310
    .restart local v18    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1312
    :cond_1
    const/4 v15, 0x0

    .line 1314
    .local v15, "success":Z
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1315
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v14, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1316
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-interface {v12, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1320
    :cond_2
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .line 1321
    .local v17, "type":I
    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1322
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1323
    .local v16, "tag":Ljava/lang/String;
    const-string v20, "wp"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1324
    const/16 v20, 0x0

    const-string v21, "width"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1325
    const/16 v20, 0x0

    const-string v21, "height"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1327
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1328
    const/16 v20, 0x0

    const-string v21, "component"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1329
    .local v4, "comp":Ljava/lang/String;
    if-eqz v4, :cond_9

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v20

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1332
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    const-string v20, "android"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1335
    :cond_3
    sget-object v20, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7

    .line 1347
    .end local v4    # "comp":Ljava/lang/String;
    .end local v16    # "tag":Ljava/lang/String;
    :cond_4
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1348
    const/4 v15, 0x1

    move-object v13, v14

    .line 1363
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "type":I
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v13, :cond_5

    .line 1364
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1370
    :cond_5
    :goto_2
    if-nez v15, :cond_6

    .line 1371
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1372
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1373
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1380
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "window"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    .line 1381
    .local v19, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1382
    .local v5, "d":Landroid/view/Display;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1383
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1384
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1385
    .local v10, "maxDim":I
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1386
    .local v11, "minDim":I
    int-to-double v0, v11

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1387
    move-object/from16 v0, v18

    iput v10, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1392
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->getMaximumSizeDimension()I

    move-result v3

    .line 1393
    .local v3, "baseSize":I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_7

    .line 1394
    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1396
    :cond_7
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_8

    .line 1397
    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1399
    :cond_8
    return-void

    .line 1329
    .end local v3    # "baseSize":I
    .end local v5    # "d":Landroid/view/Display;
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v10    # "maxDim":I
    .end local v11    # "minDim":I
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .end local v19    # "wm":Landroid/view/WindowManager;
    .restart local v4    # "comp":Ljava/lang/String;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1349
    .end local v4    # "comp":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":I
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 1350
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v20, "WallpaperService"

    const-string v21, "no current wallpaper -- first boot?"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1351
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 1352
    .local v7, "e":Ljava/lang/NullPointerException;
    :goto_4
    const-string v20, "WallpaperService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1353
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v7

    .line 1354
    .local v7, "e":Ljava/lang/NumberFormatException;
    :goto_5
    const-string v20, "WallpaperService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1355
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v7

    .line 1356
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    const-string v20, "WallpaperService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1357
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v7

    .line 1358
    .local v7, "e":Ljava/io/IOException;
    :goto_7
    const-string v20, "WallpaperService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1359
    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 1360
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_8
    const-string v20, "WallpaperService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1366
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_6
    move-exception v20

    goto/16 :goto_2

    .line 1359
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 1357
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 1355
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 1353
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v7

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 1351
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v7

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 1349
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v7

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userId"    # I

    .prologue
    .line 1245
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper_info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1285
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1287
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1288
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1289
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1291
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1292
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1293
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1295
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 6
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1191
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1192
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1194
    :try_start_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1201
    :cond_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1202
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1204
    return-void

    .line 1195
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private notifyKeyguardCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1207
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1208
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1210
    :try_start_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onKeyguardWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    :cond_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1218
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1220
    return-void

    .line 1211
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private notifyLauncherMenuCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1222
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1223
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1225
    :try_start_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onLauncherMenuWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1232
    :cond_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1233
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.LAUNCHERMENU_WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1235
    return-void

    .line 1226
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 8
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1250
    iget v5, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 1251
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 1253
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1255
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1256
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1258
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1259
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1262
    iget-object v5, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1264
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1267
    :cond_0
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1269
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1270
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1271
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 1282
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1272
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v3, :cond_1

    .line 1275
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1280
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0

    .line 1277
    :catch_1
    move-exception v5

    goto :goto_2

    .line 1272
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 10
    .param p1, "conn"    # Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1179
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1182
    :catch_0
    move-exception v7

    .line 1183
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "WallpaperService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1184
    iget-boolean v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v8

    move-object v4, p2

    move-object v5, v9

    .line 1185
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_0
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 21
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1000
    if-nez p2, :cond_1

    .line 1001
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_1

    .line 1002
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    .line 1003
    if-nez p1, :cond_1

    .line 1006
    const/4 v3, 0x1

    .line 1141
    :goto_0
    return v3

    .line 1008
    :cond_0
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1011
    const/4 v3, 0x1

    goto :goto_0

    .line 1017
    :cond_1
    if-nez p1, :cond_3

    .line 1018
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104001d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1020
    .local v9, "defaultComponent":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 1022
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 1025
    :cond_2
    if-nez p1, :cond_3

    .line 1027
    sget-object p1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    .line 1033
    .end local v9    # "defaultComponent":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v17, v0

    .line 1034
    .local v17, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x1080

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v18

    .line 1036
    .local v18, "si":Landroid/content/pm/ServiceInfo;
    if-nez v18, :cond_4

    .line 1038
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v3, 0x0

    goto :goto_0

    .line 1041
    :cond_4
    const-string v3, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1045
    .local v13, "msg":Ljava/lang/String;
    if-eqz p3, :cond_5

    .line 1046
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    .end local v13    # "msg":Ljava/lang/String;
    .end local v17    # "serviceUserId":I
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v10

    .line 1134
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1135
    .restart local v13    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_11

    .line 1136
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1048
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v17    # "serviceUserId":I
    .restart local v18    # "si":Landroid/content/pm/ServiceInfo;
    :cond_5
    :try_start_1
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1052
    .end local v13    # "msg":Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    .line 1054
    .local v19, "wi":Landroid/app/WallpaperInfo;
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v12, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_c

    sget-object v3, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    move/from16 v0, v17

    invoke-interface {v3, v12, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v15

    .line 1061
    .local v15, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_7

    .line 1062
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    .line 1063
    .local v16, "rsi":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_a

    .line 1066
    :try_start_2
    new-instance v19, Landroid/app/WallpaperInfo;

    .end local v19    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1083
    .end local v16    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v19    # "wi":Landroid/app/WallpaperInfo;
    :cond_7
    if-nez v19, :cond_c

    .line 1084
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service is not a wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1086
    .restart local v13    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_b

    .line 1087
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1067
    .end local v13    # "msg":Ljava/lang/String;
    .end local v19    # "wi":Landroid/app/WallpaperInfo;
    .restart local v16    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v10

    .line 1068
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_8

    .line 1069
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1071
    :cond_8
    const-string v3, "WallpaperService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1072
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1073
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v10

    .line 1074
    .local v10, "e":Ljava/io/IOException;
    if-eqz p3, :cond_9

    .line 1075
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1077
    :cond_9
    const-string v3, "WallpaperService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1061
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v19    # "wi":Landroid/app/WallpaperInfo;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1089
    .end local v16    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v13    # "msg":Ljava/lang/String;
    :cond_b
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1096
    .end local v11    # "i":I
    .end local v13    # "msg":Ljava/lang/String;
    .end local v15    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_c
    new-instance v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/server/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1097
    .local v14, "newConn":Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1098
    const-string v3, "android.intent.extra.client_label"

    const v4, 0x10404ae

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1100
    const-string v20, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10404af

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v4, 0x20000001

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v12, v14, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1110
    .restart local v13    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_d

    .line 1111
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1113
    :cond_d
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1116
    .end local v13    # "msg":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_f

    .line 1117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1119
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1120
    move-object/from16 v0, p4

    iput-object v14, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p4

    iput-wide v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    .line 1122
    move-object/from16 v0, p5

    iput-object v0, v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1124
    :try_start_4
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_10

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v5, 0x7dd

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 1129
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1141
    :cond_10
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1138
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "newConn":Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .end local v17    # "serviceUserId":I
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    .end local v19    # "wi":Landroid/app/WallpaperInfo;
    .local v10, "e":Landroid/os/RemoteException;
    .restart local v13    # "msg":Ljava/lang/String;
    :cond_11
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1131
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v13    # "msg":Ljava/lang/String;
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v14    # "newConn":Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .restart local v17    # "serviceUserId":I
    .restart local v18    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v19    # "wi":Landroid/app/WallpaperInfo;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public clearWallpaper()V
    .locals 4

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 610
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 611
    monitor-exit v1

    .line 612
    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1173
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1174
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1175
    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .locals 11
    .param p1, "defaultFailed"    # Z
    .param p2, "userId"    # I
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v1, 0x0

    .line 615
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 616
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    new-instance v8, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    const-string v2, "wallpaper"

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 617
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 620
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 621
    .local v9, "ident":J
    const/4 v6, 0x0

    .line 623
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 624
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v0, :cond_3

    .line 633
    :cond_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    :cond_2
    :goto_0
    return-void

    .line 625
    :cond_3
    if-eqz p1, :cond_4

    :try_start_1
    sget-object v1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 633
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 640
    const-string v0, "WallpaperService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 642
    if-eqz p3, :cond_2

    .line 644
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    goto :goto_0

    .line 630
    :catch_1
    move-exception v7

    .line 631
    .local v7, "e1":Ljava/lang/IllegalArgumentException;
    move-object v6, v7

    goto :goto_1

    .line 633
    .end local v7    # "e1":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v2, 0x0

    .line 1145
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2

    .line 1146
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1148
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1151
    :goto_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1153
    :cond_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_1

    .line 1155
    :try_start_1
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1159
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1163
    :try_start_2
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1166
    :goto_2
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1167
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1168
    iput-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1170
    :cond_2
    return-void

    .line 1164
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1156
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1149
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1532
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    :goto_0
    return-void

    .line 1541
    :cond_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1542
    :try_start_0
    const-string v3, "Current Wallpaper Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1544
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1545
    .local v2, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1547
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1548
    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1549
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1550
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1551
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1554
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_2

    .line 1555
    iget-object v0, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1556
    .local v0, "conn":Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    const-string v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1558
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_1

    .line 1560
    const-string v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1561
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1563
    :cond_1
    const-string v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1564
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1565
    const-string v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1566
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1567
    const-string v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1569
    const-string v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1570
    iget-wide v5, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    .line 1543
    .end local v0    # "conn":Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1573
    .end local v2    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_3
    monitor-exit v4

    goto/16 :goto_0

    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 489
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 492
    .local v1, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    return-void
.end method

.method public getHeightHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 730
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 732
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v2

    return v1

    .line 733
    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKeyguardWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 771
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 774
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 775
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 776
    .local v4, "wallpaperUserId":I
    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_1

    .line 777
    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    .line 781
    :goto_0
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    .local v3, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_0

    .line 784
    :try_start_1
    const-string v7, "width"

    iget v8, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 785
    const-string v7, "height"

    iget v8, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 787
    :cond_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 788
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v7

    const-string v8, "keyguard_wallpaper"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 789
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 790
    :try_start_2
    monitor-exit v6

    .line 797
    .end local v2    # "f":Ljava/io/File;
    :goto_1
    return-object v5

    .line 779
    .end local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 792
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_2
    const/high16 v7, 0x10000000

    :try_start_3
    invoke-static {v2, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    monitor-exit v6

    goto :goto_1

    .line 798
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 793
    .restart local v0    # "callingUid":I
    .restart local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaperUserId":I
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v7, "WallpaperService"

    const-string v8, "Error getting wallpaper"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public getLauncherMenuWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 802
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 805
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 806
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 807
    .local v4, "wallpaperUserId":I
    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_1

    .line 808
    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    .line 812
    :goto_0
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    .local v3, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_0

    .line 815
    :try_start_1
    const-string v7, "width"

    iget v8, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 816
    const-string v7, "height"

    iget v8, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 818
    :cond_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 819
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v7

    const-string v8, "launchermenu_wallpaper"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 821
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 822
    :try_start_2
    monitor-exit v6

    .line 829
    .end local v2    # "f":Ljava/io/File;
    :goto_1
    return-object v5

    .line 810
    .end local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 824
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_2
    const/high16 v7, 0x10000000

    :try_start_3
    invoke-static {v2, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    monitor-exit v6

    goto :goto_1

    .line 830
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 825
    .restart local v0    # "callingUid":I
    .restart local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaperUserId":I
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v7, "WallpaperService"

    const-string v8, "Error getting wallpaper"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 738
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 741
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 742
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 743
    .local v4, "wallpaperUserId":I
    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_1

    .line 744
    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    .line 748
    :goto_0
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    .local v3, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_0

    .line 751
    :try_start_1
    const-string v7, "width"

    iget v8, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    const-string v7, "height"

    iget v8, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 754
    :cond_0
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 755
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v7

    const-string v8, "wallpaper"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 756
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 757
    :try_start_2
    monitor-exit v6

    .line 764
    .end local v2    # "f":Ljava/io/File;
    :goto_1
    return-object v5

    .line 746
    .end local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 759
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_2
    const/high16 v7, 0x10000000

    :try_start_3
    invoke-static {v2, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    monitor-exit v6

    goto :goto_1

    .line 765
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 760
    .restart local v0    # "callingUid":I
    .restart local v3    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaperUserId":I
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v7, "WallpaperService"

    const-string v8, "Error getting wallpaper"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    .prologue
    .line 835
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 836
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 837
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 838
    .local v1, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    .line 839
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v3

    .line 841
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 842
    .end local v1    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWidthHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 723
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 725
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v2

    return v1

    .line 726
    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 651
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 653
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 655
    .local v1, "ident":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 657
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 660
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 661
    .local v5, "wd":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_1

    .line 663
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 664
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "wd":Lcom/android/server/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 666
    .restart local v5    # "wd":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 667
    const/4 v6, 0x1

    monitor-exit v7

    .line 671
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "wd":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :goto_0
    return v6

    .line 657
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 670
    .end local v1    # "ident":J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "ident":J
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 671
    const/4 v6, 0x0

    goto :goto_0
.end method

.method onRemoveUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 562
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 570
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 564
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->onStoppingUser(I)V

    .line 565
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string v4, "wallpaper"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 566
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 567
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string v4, "wallpaper_info.xml"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 568
    .local v1, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 569
    monitor-exit v3

    goto :goto_0

    .end local v0    # "wallpaperFile":Ljava/io/File;
    .end local v1    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onStoppingUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 548
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 559
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 551
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_2

    .line 552
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_1

    .line 553
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 554
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 558
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreNamedResourceLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)Z
    .locals 21
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    const-string v17, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1458
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1460
    .local v14, "resName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1461
    .local v10, "pkg":Ljava/lang/String;
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1462
    .local v5, "colon":I
    if-lez v5, :cond_0

    .line 1463
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1466
    :cond_0
    const/4 v9, 0x0

    .line 1467
    .local v9, "ident":Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1468
    .local v15, "slash":I
    if-lez v15, :cond_1

    .line 1469
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1472
    :cond_1
    const/16 v16, 0x0

    .line 1473
    .local v16, "type":Ljava/lang/String;
    if-lez v5, :cond_2

    if-lez v15, :cond_2

    sub-int v17, v15, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1474
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1477
    :cond_2
    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    if-eqz v16, :cond_8

    .line 1478
    const/4 v13, -0x1

    .line 1479
    .local v13, "resId":I
    const/4 v12, 0x0

    .line 1480
    .local v12, "res":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1482
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1483
    .local v4, "c":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1484
    .local v11, "r":Landroid/content/res/Resources;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1485
    if-nez v13, :cond_5

    .line 1486
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    const/16 v17, 0x0

    .line 1513
    if-eqz v12, :cond_3

    .line 1515
    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1518
    :cond_3
    :goto_0
    if-eqz v7, :cond_4

    .line 1519
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1521
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1527
    .end local v4    # "c":Landroid/content/Context;
    .end local v5    # "colon":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "r":Landroid/content/res/Resources;
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "resId":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "slash":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_4
    :goto_1
    return v17

    .line 1491
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v5    # "colon":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v12    # "res":Ljava/io/InputStream;
    .restart local v13    # "resId":I
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "slash":I
    .restart local v16    # "type":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 1492
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1493
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 1495
    :cond_6
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1497
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    const v17, 0x8000

    :try_start_4
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 1499
    .local v3, "buffer":[B
    :goto_2
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "amt":I
    if-lez v2, :cond_9

    .line 1500
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 1506
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    :catch_0
    move-exception v6

    move-object v7, v8

    .line 1507
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1513
    if-eqz v12, :cond_7

    .line 1515
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 1518
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 1519
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1521
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1527
    .end local v5    # "colon":I
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "resId":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "slash":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_8
    :goto_5
    const/16 v17, 0x0

    goto :goto_1

    .line 1504
    .restart local v2    # "amt":I
    .restart local v3    # "buffer":[B
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v5    # "colon":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v12    # "res":Ljava/io/InputStream;
    .restart local v13    # "resId":I
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "slash":I
    .restart local v16    # "type":Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restored wallpaper: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1505
    const/16 v17, 0x1

    .line 1513
    if-eqz v12, :cond_a

    .line 1515
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 1518
    :cond_a
    :goto_6
    if-eqz v8, :cond_4

    .line 1519
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1521
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 1522
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v18

    goto/16 :goto_1

    .line 1508
    .end local v4    # "c":Landroid/content/Context;
    .end local v11    # "r":Landroid/content/res/Resources;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .line 1509
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_7
    :try_start_b
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resource not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1513
    if-eqz v12, :cond_b

    .line 1515
    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 1518
    :cond_b
    :goto_8
    if-eqz v7, :cond_8

    .line 1519
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1521
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_5

    .line 1522
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v17

    goto :goto_5

    .line 1510
    :catch_4
    move-exception v6

    .line 1511
    .local v6, "e":Ljava/io/IOException;
    :goto_9
    :try_start_e
    const-string v17, "WallpaperService"

    const-string v18, "IOException while restoring wallpaper "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1513
    if-eqz v12, :cond_c

    .line 1515
    :try_start_f
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 1518
    :cond_c
    :goto_a
    if-eqz v7, :cond_8

    .line 1519
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1521
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_5

    .line 1513
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_b
    if-eqz v12, :cond_d

    .line 1515
    :try_start_11
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 1518
    :cond_d
    :goto_c
    if-eqz v7, :cond_e

    .line 1519
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1521
    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 1513
    :cond_e
    :goto_d
    throw v17

    .line 1516
    :catch_5
    move-exception v18

    goto :goto_c

    .line 1522
    :catch_6
    move-exception v18

    goto :goto_d

    .line 1516
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_7
    move-exception v17

    goto/16 :goto_4

    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_8
    move-exception v17

    goto :goto_8

    .local v6, "e":Ljava/io/IOException;
    :catch_9
    move-exception v17

    goto :goto_a

    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v11    # "r":Landroid/content/res/Resources;
    :catch_a
    move-exception v18

    goto/16 :goto_0

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "amt":I
    .restart local v3    # "buffer":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v18

    goto :goto_6

    .line 1513
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    :catchall_1
    move-exception v17

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b

    .line 1510
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 1508
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1506
    .end local v4    # "c":Landroid/content/Context;
    .end local v11    # "r":Landroid/content/res/Resources;
    :catch_e
    move-exception v6

    goto/16 :goto_3
.end method

.method public setDimensionHints(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 683
    const-string v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v3}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 684
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 685
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 686
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 687
    .local v2, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_0

    .line 688
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper not yet initialized for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 719
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 690
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 691
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "width and height must be > 0"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 694
    :cond_2
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 695
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 696
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 698
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v3, :cond_3

    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v3, :cond_5

    .line 699
    :cond_3
    iput p1, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 700
    iput p2, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 701
    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 702
    iget v3, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v1, :cond_4

    monitor-exit v4

    .line 720
    :goto_0
    return-void

    .line 703
    :cond_4
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_5

    .line 704
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    .line 706
    :try_start_2
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 710
    :goto_1
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 719
    :cond_5
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 711
    :cond_6
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_5

    .line 715
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 708
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public setKeyguardWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 869
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 870
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 872
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 873
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 874
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 875
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 884
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 877
    .restart local v3    # "userId":I
    .restart local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 879
    .local v0, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, v4}, Lcom/android/server/WallpaperManagerService;->updateKeyguardWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 882
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    monitor-exit v6

    return-object v2

    .line 882
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setLauncherMenuWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 887
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 888
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 890
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 891
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 892
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 893
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 902
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 895
    .restart local v3    # "userId":I
    .restart local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 897
    .local v0, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, v4}, Lcom/android/server/WallpaperManagerService;->updateLauncherMenuWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 900
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 898
    monitor-exit v6

    return-object v2

    .line 900
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 846
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 847
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 849
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 850
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 851
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 852
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 864
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 854
    .restart local v3    # "userId":I
    .restart local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 856
    .local v0, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, v4}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 857
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 858
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 862
    :cond_1
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    monitor-exit v6

    return-object v2

    .line 862
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 978
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 979
    iget-object v9, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 981
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 982
    .local v8, "userId":I
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 983
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 984
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    .end local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v8    # "userId":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 986
    .restart local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .restart local v8    # "userId":I
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 988
    .local v6, "ident":J
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 989
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 991
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    monitor-exit v9

    .line 994
    return-void

    .line 991
    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method settingsRestored()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1412
    const/4 v5, 0x0

    .line 1413
    .local v5, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 1414
    .local v7, "success":Z
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1415
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1416
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 1417
    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1419
    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1424
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1426
    :cond_0
    const/4 v7, 0x1

    .line 1443
    :cond_1
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    if-nez v7, :cond_2

    .line 1446
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const-string v1, ""

    iput-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1448
    invoke-static {v9}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1451
    :cond_2
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1452
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1453
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1454
    return-void

    .line 1430
    :cond_3
    :try_start_2
    const-string v1, ""

    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1432
    const/4 v7, 0x1

    .line 1438
    :goto_1
    if-eqz v7, :cond_1

    .line 1439
    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_0

    .line 1443
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1435
    :cond_4
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    goto :goto_1

    .line 1453
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 573
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 574
    :try_start_0
    iput p1, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    .line 575
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 576
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 577
    new-instance v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    invoke-direct {v0, p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 578
    .restart local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 579
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 582
    :cond_0
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_1

    .line 583
    new-instance v1, Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    .line 584
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 586
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/server/WallpaperManagerService;->switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 587
    monitor-exit v2

    .line 588
    return-void

    .line 587
    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 591
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 592
    const/4 v6, 0x0

    .line 594
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 596
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    .end local v1    # "cname":Landroid/content/ComponentName;
    :goto_1
    return-void

    .line 594
    :cond_0
    :try_start_2
    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v7

    .line 600
    .local v7, "e1":Ljava/lang/RuntimeException;
    move-object v6, v7

    .line 602
    .end local v7    # "e1":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_3
    const-string v0, "WallpaperService"

    const-string v2, "Failure starting previous wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    const/4 v0, 0x0

    iget v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 604
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public systemRunning()V
    .locals 5

    .prologue
    .line 498
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 499
    .local v2, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/WallpaperManagerService;->switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 500
    new-instance v3, Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iput-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    .line 501
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v3}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 503
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 504
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/WallpaperManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/WallpaperManagerService$1;-><init>(Lcom/android/server/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 524
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/WallpaperManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/WallpaperManagerService$2;-><init>(Lcom/android/server/WallpaperManagerService;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method updateKeyguardWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v4, 0x0

    .line 933
    :try_start_0
    iget v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 934
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 935
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 936
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 941
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v5, "keyguard_wallpaper"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 942
    .local v3, "file":Ljava/io/File;
    const/high16 v5, 0x38000000

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 944
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 951
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v2

    .line 948
    :catch_0
    move-exception v1

    .line 949
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "WallpaperService"

    const-string v6, "Error setting keyguard wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 951
    goto :goto_0
.end method

.method updateLauncherMenuWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v4, 0x0

    .line 955
    :try_start_0
    iget v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 956
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 957
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 958
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 963
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v5, "launchermenu_wallpaper"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 964
    .local v3, "file":Ljava/io/File;
    const/high16 v5, 0x38000000

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 966
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 973
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v2

    .line 970
    :catch_0
    move-exception v1

    .line 971
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "WallpaperService"

    const-string v6, "Error setting launchermenu wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 973
    goto :goto_0
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v4, 0x0

    .line 907
    if-nez p1, :cond_0

    const-string p1, ""

    .line 909
    :cond_0
    :try_start_0
    iget v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 910
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 911
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 912
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 917
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, "wallpaper"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 918
    .local v3, "file":Ljava/io/File;
    const/high16 v5, 0x38000000

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 920
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v2, v4

    .line 928
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 923
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "file":Ljava/io/File;
    :cond_2
    iput-object p1, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 926
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "WallpaperService"

    const-string v6, "Error setting wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 928
    goto :goto_0
.end method
