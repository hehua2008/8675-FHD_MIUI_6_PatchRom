.class Lcom/android/internal/policy/impl/PhoneWindowManager$28;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLibTorchSupported:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private torchJni:Lcom/android/flashlight/TorchJni;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->mLibTorchSupported:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x0

    const-string v1, "ro.monkey"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/flashlight/TorchJni;->hasLibTorch:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->mLibTorchSupported:Z

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/flashlight/TorchJni;

    invoke-direct {v1}, Lcom/android/flashlight/TorchJni;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->torchJni:Lcom/android/flashlight/TorchJni;

    const-string v1, "PhoneWindowManager"

    const-string v2, "Torch FlashLightController"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->torchJni:Lcom/android/flashlight/TorchJni;

    invoke-virtual {v1}, Lcom/android/flashlight/TorchJni;->yl_open()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->mLibTorchSupported:Z

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->mLibTorchSupported:Z

    if-eqz v1, :cond_0

    const-string v1, "com.android.intent.action.Open_FlashLight"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/flashlight/TorchJni;->flashLightIsOpen:Z

    if-nez v1, :cond_0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->torchJni:Lcom/android/flashlight/TorchJni;

    invoke-virtual {v1, v3}, Lcom/android/flashlight/TorchJni;->yl_flash_process(I)I

    const-string v1, "sys.yulong.flashlight"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "notify":Landroid/content/Intent;
    const-string v1, "com.android.intent.action.FlashLight_On_Flag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PhoneWindowManager"

    const-string v2, "sendbroadcast for ACTION_TORCH_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/flashlight/TorchJni;->flashLightIsOpen:Z

    goto :goto_0

    .end local v0    # "notify":Landroid/content/Intent;
    :cond_3
    sget-boolean v1, Lcom/android/flashlight/TorchJni;->flashLightIsOpen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->torchJni:Lcom/android/flashlight/TorchJni;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/flashlight/TorchJni;->yl_flash_process(I)I

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->torchJni:Lcom/android/flashlight/TorchJni;

    invoke-virtual {v1}, Lcom/android/flashlight/TorchJni;->yl_close()Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->mLibTorchSupported:Z

    const-string v1, "sys.yulong.flashlight"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .restart local v0    # "notify":Landroid/content/Intent;
    const-string v1, "com.android.intent.action.FlashLight_Close_Flag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PhoneWindowManager"

    const-string v2, "sendbroadcast for ACTION_TORCH_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v3, Lcom/android/flashlight/TorchJni;->flashLightIsOpen:Z

    goto/16 :goto_0
.end method
