.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3$1;
.super Ljava/lang/Thread;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v2, "charge_only"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 475
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 482
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v2, "rndis,adb"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 483
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
