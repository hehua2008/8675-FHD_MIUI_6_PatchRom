.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1$1;
.super Ljava/lang/Thread;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 388
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 389
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const-string v2, "/system/media/audio/ui/battery_charge.ogg"

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->playSound(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
