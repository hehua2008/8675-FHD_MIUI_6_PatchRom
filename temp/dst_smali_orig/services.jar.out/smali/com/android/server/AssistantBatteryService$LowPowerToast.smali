.class Lcom/android/server/AssistantBatteryService$LowPowerToast;
.super Landroid/widget/Toast;
.source "AssistantBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssistantBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LowPowerToast"
.end annotation


# instance fields
.field private isSound:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AssistantBatteryService$LowPowerToast;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSound"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/android/server/AssistantBatteryService$LowPowerToast;->isSound:Z

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    .local v1, "soundUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_battery_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "soundPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AssistantBatteryService$LowPowerToast;->mPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$LowPowerToast;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/server/AssistantBatteryService$LowPowerToast$1;

    invoke-direct {v3, p0}, Lcom/android/server/AssistantBatteryService$LowPowerToast$1;-><init>(Lcom/android/server/AssistantBatteryService$LowPowerToast;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .end local v0    # "soundPath":Ljava/lang/String;
    .end local v1    # "soundUri":Landroid/net/Uri;
    :goto_0
    return-void

    :cond_2
    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/server/AssistantBatteryService$LowPowerToast;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;IZ)Lcom/android/server/AssistantBatteryService$LowPowerToast;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastLevel"    # I
    .param p2, "isSound"    # Z

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x0

    new-instance v3, Lcom/android/server/AssistantBatteryService$LowPowerToast;

    invoke-direct {v3, p0, p2}, Lcom/android/server/AssistantBatteryService$LowPowerToast;-><init>(Landroid/content/Context;Z)V

    .local v3, "mLowPowerToast":Lcom/android/server/AssistantBatteryService$LowPowerToast;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v5, 0x10900db

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .local v4, "mView":Landroid/widget/LinearLayout;
    const v5, 0x10203c1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, "mLowPowerIcon":Landroid/widget/ImageView;
    const v5, 0x10203c2

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "mLowPowerLevelText":Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ne p1, v8, :cond_0

    const v5, 0x108068c

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne p1, v8, :cond_1

    const v5, 0x10406f5

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v4}, Lcom/android/server/AssistantBatteryService$LowPowerToast;->setView(Landroid/view/View;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/AssistantBatteryService$LowPowerToast;->setDuration(I)V

    const/16 v5, 0x30

    invoke-virtual {v3, v5, v7, v7}, Lcom/android/server/AssistantBatteryService$LowPowerToast;->setGravity(III)V

    const/16 v5, 0x7d9

    invoke-virtual {v3, v5}, Lcom/android/server/AssistantBatteryService$LowPowerToast;->setLayoutType(I)V

    return-object v3

    :cond_0
    const v5, 0x108068d

    goto :goto_0

    :cond_1
    const v5, 0x10406f4

    goto :goto_1
.end method


# virtual methods
.method public show()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    const-string v0, "persist.yulong.defaultmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AssistantBatteryService$LowPowerToast;->isSound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$LowPowerToast;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$LowPowerToast;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Vibrator;->setYLVibrate(IJ)V

    goto :goto_0
.end method
