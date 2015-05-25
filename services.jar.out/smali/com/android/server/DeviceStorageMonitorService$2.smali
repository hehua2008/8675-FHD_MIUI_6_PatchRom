.class Lcom/android/server/DeviceStorageMonitorService$2;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 219
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_0
    # invokes: Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V
    invoke-static {v1, v0}, Lcom/android/server/DeviceStorageMonitorService;->access$100(Lcom/android/server/DeviceStorageMonitorService;Z)V

    .line 239
    :goto_1
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/DeviceStorageMonitorService;->checkInternalExternal()V
    invoke-static {v0}, Lcom/android/server/DeviceStorageMonitorService;->access$200(Lcom/android/server/DeviceStorageMonitorService;)V

    goto :goto_1

    .line 223
    :cond_2
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    .line 224
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/DeviceStorageMonitorService;->checkRAM()V
    invoke-static {v0}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;)V

    goto :goto_1

    .line 226
    :cond_3
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "Will not process invalid message"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
