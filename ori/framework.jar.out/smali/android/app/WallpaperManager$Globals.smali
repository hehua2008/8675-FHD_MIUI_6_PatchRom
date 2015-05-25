.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_KEYGUARD_WALLPAPER:I = 0x2

.field private static final MSG_CLEAR_LAUNCHERMENU_WALLPAPER:I = 0x3

.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mKeyguardWallpaper:Landroid/graphics/Bitmap;

.field private mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 261
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 262
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 263
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 290
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 241
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 241
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getKeyguardDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getLauncherMenuDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 241
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$302(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 241
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$402(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 241
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$502(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 241
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$702(Landroid/app/WallpaperManager$Globals;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # I

    .prologue
    .line 241
    iput p1, p0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    return p1
.end method

.method static synthetic access$802(Landroid/app/WallpaperManager$Globals;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # I

    .prologue
    .line 241
    iput p1, p0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    return p1
.end method

.method static synthetic access$900(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 241
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentKeyguardWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 528
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 529
    .local v4, "params":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5, p0, v4}, Landroid/app/IWallpaperManager;->getKeyguardWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 530
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 532
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 533
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 534
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 536
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget v5, p0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    iget v7, p0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    invoke-static {p1, v0, v5, v7}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 541
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 550
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "params":Landroid/os/Bundle;
    :goto_0
    return-object v5

    .line 537
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Can\'t decode file"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 541
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_0
    :goto_1
    move-object v5, v6

    .line 550
    goto :goto_0

    .line 540
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "params":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    .line 541
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 544
    :goto_2
    :try_start_6
    throw v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 547
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "params":Landroid/os/Bundle;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 542
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method private getCurrentLauncherMenuWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 554
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 555
    .local v4, "params":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5, p0, v4}, Landroid/app/IWallpaperManager;->getLauncherMenuWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 556
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 559
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 560
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 561
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 563
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget v5, p0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    iget v7, p0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    invoke-static {p1, v0, v5, v7}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 568
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 577
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "params":Landroid/os/Bundle;
    :goto_0
    return-object v5

    .line 564
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Can\'t decode file"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_0
    :goto_1
    move-object v5, v6

    .line 577
    goto :goto_0

    .line 567
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "params":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    .line 568
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 571
    :goto_2
    :try_start_6
    throw v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 574
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "params":Landroid/os/Bundle;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 569
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 495
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 496
    .local v5, "params":Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 497
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 498
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 499
    .local v6, "width":I
    const-string v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 502
    .local v3, "height":I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 504
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 506
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 508
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 513
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 522
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :goto_0
    return-object v7

    .line 509
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :cond_0
    :goto_1
    move-object v7, v8

    .line 522
    goto :goto_0

    .line 512
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catchall_0
    move-exception v7

    .line 513
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 516
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 519
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 514
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 582
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1080220

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 584
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 585
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v5

    .line 586
    .local v5, "width":I
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 589
    .local v2, "height":I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 591
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 593
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 594
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 599
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 608
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "width":I
    :goto_0
    return-object v6

    .line 595
    .restart local v2    # "height":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "width":I
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode stream"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 599
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "height":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "width":I
    :cond_0
    :goto_1
    move-object v6, v7

    .line 608
    goto :goto_0

    .line 598
    .restart local v2    # "height":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "width":I
    :catchall_0
    move-exception v6

    .line 599
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 602
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 605
    .end local v2    # "height":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "width":I
    :catch_1
    move-exception v6

    goto :goto_1

    .line 600
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "height":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "width":I
    :catch_2
    move-exception v7

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v8

    goto :goto_2
.end method

.method private getKeyguardDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 612
    const/4 v2, 0x0

    .line 613
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "default_keyguard_wallpaper"

    const-string v8, "drawable"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 614
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 615
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 617
    :cond_0
    if-eqz v2, :cond_1

    .line 620
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 621
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 622
    const/4 v6, 0x0

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 623
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget v6, p0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    iget v7, p0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    invoke-static {p1, v0, v6, v7}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 628
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 634
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v5

    .line 624
    :catch_0
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Can\'t decode keyguard stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 628
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 629
    :catch_1
    move-exception v6

    goto :goto_0

    .line 627
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 628
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 631
    :goto_1
    throw v5

    .line 629
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method private getLauncherMenuDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 637
    const/4 v2, 0x0

    .line 638
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "default_launchermenu_wallpaper"

    const-string v8, "drawable"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 639
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 640
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 642
    :cond_0
    if-eqz v2, :cond_1

    .line 644
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 645
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 646
    const/4 v6, 0x0

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget v6, p0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    iget v7, p0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    invoke-static {p1, v0, v6, v7}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 652
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 658
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v5

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Can\'t decode launchermenu stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 652
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 653
    :catch_1
    move-exception v6

    goto :goto_0

    .line 651
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 652
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 655
    :goto_1
    throw v5

    .line 653
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public forgetLoadedKeyguardWallpaper()V
    .locals 2

    .prologue
    .line 485
    monitor-enter p0

    .line 486
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 488
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    monitor-exit p0

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forgetLoadedLauncherMenuWallpaper()V
    .locals 2

    .prologue
    .line 478
    monitor-enter p0

    .line 479
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 481
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    monitor-exit p0

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forgetLoadedWallpaper()V
    .locals 2

    .prologue
    .line 470
    monitor-enter p0

    .line 471
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 473
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    monitor-exit p0

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onKeyguardWallpaperChanged()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 307
    return-void
.end method

.method public onLauncherMenuWallpaperChanged()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    return-void
.end method

.method public peekKeyguardWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 368
    :goto_0
    return-object v1

    .line 351
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 354
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentKeyguardWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    :goto_1
    if-eqz p2, :cond_3

    .line 361
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 362
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getKeyguardDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 363
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current keyguardwallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 365
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 368
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public peekKeyguardWallpaperBitmap(Landroid/content/Context;ZIIIII)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "orientation"    # I

    .prologue
    .line 375
    monitor-enter p0

    .line 376
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Landroid/app/WallpaperManager$Globals;->peekKeyguardWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 377
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 378
    const/4 v13, 0x0

    monitor-exit p0

    .line 402
    :goto_0
    return-object v13

    .line 380
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    .line 381
    .local v15, "screenWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    .line 383
    .local v14, "screenHeight":I
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_1

    .line 385
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 386
    .local v6, "m":Landroid/graphics/Matrix;
    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 387
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 388
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    .line 389
    move-object/from16 v0, p0

    iget v14, v0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    .line 391
    .end local v6    # "m":Landroid/graphics/Matrix;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v15, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v14, :cond_3

    .line 393
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, p3

    div-int p3, v2, v15

    .line 394
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, p5

    div-int p5, v2, v15

    .line 395
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, p4

    div-int p4, v2, v14

    .line 396
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, p6

    div-int p6, v2, v14

    :cond_3
    move-object/from16 v7, p1

    move-object v8, v1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 398
    invoke-static/range {v7 .. v12}, Landroid/app/WallpaperManager;->clipBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 399
    .local v13, "bm":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_4

    if-eq v13, v1, :cond_4

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedKeyguardWallpaper()V

    .line 402
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 403
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "bm":Landroid/graphics/Bitmap;
    .end local v14    # "screenHeight":I
    .end local v15    # "screenWidth":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public peekLauncherMenuWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 430
    :goto_0
    return-object v1

    .line 413
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 416
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentLauncherMenuWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    :goto_1
    if-eqz p2, :cond_3

    .line 423
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 424
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getLauncherMenuDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 425
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current launchermenuwallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 427
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 430
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLauncherMenuWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public peekLauncherMenuWallpaperBitmap(Landroid/content/Context;ZIIIII)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "orientation"    # I

    .prologue
    .line 437
    monitor-enter p0

    .line 438
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Landroid/app/WallpaperManager$Globals;->peekLauncherMenuWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 439
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 440
    const/4 v13, 0x0

    monitor-exit p0

    .line 464
    :goto_0
    return-object v13

    .line 442
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    .line 443
    .local v15, "screenWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    .line 445
    .local v14, "screenHeight":I
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_1

    .line 447
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 448
    .local v6, "m":Landroid/graphics/Matrix;
    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 449
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 450
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/WallpaperManager$Globals;->screenHeight:I

    .line 451
    move-object/from16 v0, p0

    iget v14, v0, Landroid/app/WallpaperManager$Globals;->screenWidth:I

    .line 453
    .end local v6    # "m":Landroid/graphics/Matrix;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v15, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v14, :cond_3

    .line 455
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, p3

    div-int p3, v2, v15

    .line 456
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, p5

    div-int p5, v2, v15

    .line 457
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, p4

    div-int p4, v2, v14

    .line 458
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, p6

    div-int p6, v2, v14

    :cond_3
    move-object/from16 v7, p1

    move-object v8, v1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 460
    invoke-static/range {v7 .. v12}, Landroid/app/WallpaperManager;->clipBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 461
    .local v13, "bm":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_4

    if-eq v13, v1, :cond_4

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedLauncherMenuWallpaper()V

    .line 464
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 465
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "bm":Landroid/graphics/Bitmap;
    .end local v14    # "screenHeight":I
    .end local v15    # "screenWidth":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 338
    :goto_0
    return-object v1

    .line 321
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 324
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    :goto_1
    if-eqz p2, :cond_3

    .line 331
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 332
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 333
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 335
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 338
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
