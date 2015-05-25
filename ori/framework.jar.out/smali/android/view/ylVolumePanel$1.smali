.class final Landroid/view/ylVolumePanel$1;
.super Ljava/lang/Thread;
.source "ylVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ylVolumePanel;->playSound(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pathSound:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Landroid/view/ylVolumePanel$1;->val$pathSound:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    sget-boolean v2, Landroid/view/ylVolumePanel;->LOG_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ylVolumePanel"

    const-string v3, "begin play ring sound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 65
    .local v1, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v2, p0, Landroid/view/ylVolumePanel$1;->val$pathSound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 66
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 67
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 68
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 69
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 70
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 75
    :cond_1
    const-string/jumbo v2, "ylVolumePanel"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
