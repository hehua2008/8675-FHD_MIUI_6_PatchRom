.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 6

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1534
    const v1, 0x10802ae

    const v2, 0x10802ac

    const v3, 0x10400c9

    const v4, 0x10400ca

    const v5, 0x10400cb

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1539
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1542
    if-eqz p1, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "MODEL_QUIET"

    invoke-static {v1}, Lcom/yulong/android/reflect/YLReflect;->getSceneModeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1557
    :goto_0
    return-void

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "MODEL_STANDARD"

    invoke-static {v1}, Lcom/yulong/android/reflect/YLReflect;->getSceneModeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1564
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1560
    const/4 v0, 0x1

    return v0
.end method
