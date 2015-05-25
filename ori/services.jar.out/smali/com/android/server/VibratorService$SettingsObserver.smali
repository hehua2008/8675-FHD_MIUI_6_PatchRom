.class Lcom/android/server/VibratorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method public constructor <init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    .line 675
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 676
    # getter for: Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 677
    return-void
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 702
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "ring_virbation_level"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/android/server/VibratorService;->level_ring:I
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1602(I)I

    .line 704
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "notify_virbation_level"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/android/server/VibratorService;->level_notify:I
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1702(I)I

    .line 706
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "touch_virbation_level"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/android/server/VibratorService;->level_feedback:I
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1802(I)I

    .line 709
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_ring is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->level_ring:I
    invoke-static {}, Lcom/android/server/VibratorService;->access$1600()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; level_notify is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->level_notify:I
    invoke-static {}, Lcom/android/server/VibratorService;->access$1700()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; level_feedback is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->level_feedback:I
    invoke-static {}, Lcom/android/server/VibratorService;->access$1800()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method


# virtual methods
.method RegisterObserverAndUpdateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 681
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "ring_virbation_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 684
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "notify_virbation_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 687
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "touch_virbation_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 692
    invoke-direct {p0}, Lcom/android/server/VibratorService$SettingsObserver;->updateSettings()V

    .line 693
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/android/server/VibratorService$SettingsObserver;->updateSettings()V

    .line 699
    return-void
.end method
