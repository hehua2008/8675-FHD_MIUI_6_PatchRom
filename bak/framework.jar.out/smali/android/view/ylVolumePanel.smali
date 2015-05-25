.class public final Landroid/view/ylVolumePanel;
.super Ljava/lang/Object;
.source "ylVolumePanel.java"


# static fields
.field static LOG_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ylVolumePanel"

.field static mContext:Landroid/content/Context;

.field static path_ogg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ylVolumePanel;->LOG_DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static playSound(Ljava/lang/String;)V
    .locals 2
    .param p0, "pathSound"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    sget-boolean v0, Landroid/view/ylVolumePanel;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "ylVolumePanel"

    const-string/jumbo v1, "sidekey play before systemready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v0, Landroid/view/ylVolumePanel$1;

    invoke-direct {v0, p0}, Landroid/view/ylVolumePanel$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ylVolumePanel$1;->start()V

    goto :goto_0
.end method

.method public static switchPlaySound(II)V
    .locals 3
    .param p0, "volume"    # I
    .param p1, "type"    # I

    .prologue
    .line 46
    sget-boolean v0, Landroid/view/ylVolumePanel;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ylVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRingVolume is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-eqz p0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ui/sidekey_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/ylVolumePanel;->path_ogg:Ljava/lang/String;

    .line 51
    :cond_1
    sget-object v0, Landroid/view/ylVolumePanel;->path_ogg:Ljava/lang/String;

    invoke-static {v0}, Landroid/view/ylVolumePanel;->playSound(Ljava/lang/String;)V

    .line 52
    return-void
.end method
