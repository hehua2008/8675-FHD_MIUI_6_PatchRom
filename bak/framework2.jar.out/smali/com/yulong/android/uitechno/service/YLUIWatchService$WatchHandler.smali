.class Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;
.super Landroid/os/Handler;
.source "UitechnoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/uitechno/service/YLUIWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchHandler"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field enable:Z

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/yulong/android/uitechno/service/YLUIWatchService;

.field time:I

.field type:I


# direct methods
.method constructor <init>(Lcom/yulong/android/uitechno/service/YLUIWatchService;)V
    .locals 1

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->this$0:Lcom/yulong/android/uitechno/service/YLUIWatchService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->enable:Z

    return-void
.end method


# virtual methods
.method public getEnable()Z
    .locals 1

    .prologue
    .line 1555
    iget-boolean v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->enable:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1562
    invoke-virtual {p0, v5}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->removeMessages(I)V

    .line 1563
    iget-boolean v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->enable:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1573
    :goto_0
    return-void

    .line 1567
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->this$0:Lcom/yulong/android/uitechno/service/YLUIWatchService;

    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->className:Ljava/lang/String;

    iget v4, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->type:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->startComponent(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :goto_1
    iget v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    int-to-long v1, v1

    invoke-virtual {p0, v5, v1, v2}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1568
    :catch_0
    move-exception v0

    .line 1569
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enableL"    # Z

    .prologue
    .line 1551
    iput-boolean p1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->enable:Z

    .line 1552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->removeMessages(I)V

    .line 1553
    return-void
.end method
