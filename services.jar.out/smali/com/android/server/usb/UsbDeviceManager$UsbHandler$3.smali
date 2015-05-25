.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 460
    const-string v4, "persist.tether.auto"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 461
    const-string v4, "connected"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 462
    .local v3, "usbConnected":Z
    const-string v4, "rndis"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 463
    .local v2, "rndisEnabled":Z
    const-string v4, "configured"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 465
    .local v0, "configEnabled":Z
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tethering---usbConnected= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mRndisEnabled= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", configEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSetUsbConfigOnlyOnce:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 467
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSetUsbConfigOnlyOnce:Z
    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1502(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 468
    const-string v4, "persist.yulong.defaultmode"

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 469
    .local v1, "phoneMode":I
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-eq v1, v7, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 471
    :cond_0
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3$1;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;)V

    invoke-virtual {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3$1;->start()V

    .line 489
    .end local v0    # "configEnabled":Z
    .end local v1    # "phoneMode":I
    .end local v2    # "rndisEnabled":Z
    .end local v3    # "usbConnected":Z
    :cond_1
    return-void
.end method
