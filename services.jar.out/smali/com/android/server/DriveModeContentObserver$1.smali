.class Lcom/android/server/DriveModeContentObserver$1;
.super Landroid/os/Handler;
.source "DriveModeContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DriveModeContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DriveModeContentObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DriveModeContentObserver;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/DriveModeContentObserver$1;->this$0:Lcom/android/server/DriveModeContentObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    const-string v0, "DriveModeContentObserver"

    const-string v1, "handleMessage test "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/server/DriveModeContentObserver$1;->this$0:Lcom/android/server/DriveModeContentObserver;

    # getter for: Lcom/android/server/DriveModeContentObserver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/server/DriveModeContentObserver;->access$000(Lcom/android/server/DriveModeContentObserver;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/server/DriveModeContentObserver$1;->this$0:Lcom/android/server/DriveModeContentObserver;

    # getter for: Lcom/android/server/DriveModeContentObserver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/server/DriveModeContentObserver;->access$000(Lcom/android/server/DriveModeContentObserver;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/DriveModeContentObserver$1;->this$0:Lcom/android/server/DriveModeContentObserver;

    # getter for: Lcom/android/server/DriveModeContentObserver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/server/DriveModeContentObserver;->access$000(Lcom/android/server/DriveModeContentObserver;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 119
    :cond_0
    return-void
.end method
