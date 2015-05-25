.class Lcom/yulong/android/uitechno/service/YLUIWatchService;
.super Lcom/yulong/android/uitechno/service/BService;
.source "UitechnoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;
    }
.end annotation


# static fields
.field public static final COMPONENT_TYPE_ACTIVITY:I = 0x0

.field public static final COMPONENT_TYPE_SERVICE:I = 0x1

.field public static final EVENT_CREATED:I = 0x0

.field public static final EVENT_DESTROYED:I = 0x1

.field public static final EVENT_TIME_START:I = 0x4

.field public static final EVENT_TIME_STOP:I = 0x3

.field public static final EVENT_TIME_TICK:I = 0x2

.field public static final INTENT_ACTION:Ljava/lang/String; = "com.yulong.action.YLUIWatchService"

.field public static final INTENT_CONTENT_CLASSNAME:Ljava/lang/String; = "className"

.field public static final INTENT_CONTENT_EVENT:Ljava/lang/String; = "event"

.field public static final INTENT_CONTENT_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final INTENT_CONTENT_TIME:Ljava/lang/String; = "time"

.field public static final INTENT_CONTENT_TYPE:Ljava/lang/String; = "type"

.field static final START_WAIT_TIME:I = 0x4e20

.field static final TAG:Ljava/lang/String; = "uitechnoService.YLUIWatchService"


# instance fields
.field mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;",
            ">;"
        }
    .end annotation
.end field

.field mRecoveryStatus:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/BService;-><init>(Landroid/content/Context;)V

    .line 1431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    .line 1483
    new-instance v0, Lcom/yulong/android/uitechno/service/YLUIWatchService$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/uitechno/service/YLUIWatchService$1;-><init>(Lcom/yulong/android/uitechno/service/YLUIWatchService;)V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mRecoveryStatus:Landroid/content/BroadcastReceiver;

    .line 1435
    return-void
.end method


# virtual methods
.method protected addAutoWatchTask()V
    .locals 0

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->addUpdateManagerWatchTask()V

    .line 1448
    return-void
.end method

.method protected addUpdateManagerWatchTask()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1451
    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "addUpdateManagerWatchTask start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1456
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    const-string v1, "event"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1458
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1459
    const-string v1, "packageName"

    const-string v2, "com.yulong.android.network.widget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1461
    const-string v1, "className"

    const-string v2, "com.yulong.android.network.widget.update.ControlUpdateManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->dealWatchEvent(Landroid/content/Intent;)V

    .line 1467
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1468
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1469
    const-string v1, "event"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1470
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1472
    const-string v1, "time"

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1473
    const-string v1, "packageName"

    const-string v2, "com.yulong.android.network.widget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1475
    const-string v1, "className"

    const-string v2, "com.yulong.android.network.widget.update.ControlUpdateManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->dealWatchEvent(Landroid/content/Intent;)V

    .line 1480
    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "addUpdateManagerWatchTask end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    return-void
.end method

.method protected dealWatchEvent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1493
    const-string v4, "uitechnoService.YLUIWatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const-string v4, "event"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1495
    .local v1, "eventType":I
    const-string v4, "uitechnoService.YLUIWatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventType == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const-string v4, "packageName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1497
    .local v2, "packageName":Ljava/lang/String;
    const-string v4, "uitechnoService.YLUIWatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const-string v4, "className"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "className":Ljava/lang/String;
    const-string v4, "uitechnoService.YLUIWatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->getHandler(Ljava/lang/String;)Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;

    move-result-object v3

    .line 1501
    .local v3, "watchHandler":Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;
    iput-object v2, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->packageName:Ljava/lang/String;

    .line 1502
    iput-object v0, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->className:Ljava/lang/String;

    .line 1503
    const-string v4, "type"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->type:I

    .line 1504
    packed-switch v1, :pswitch_data_0

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1506
    :pswitch_0
    invoke-virtual {v3, v7}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    .line 1507
    invoke-virtual {v3, v7}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->removeMessages(I)V

    goto :goto_0

    .line 1510
    :pswitch_1
    invoke-virtual {v3, v8}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    .line 1511
    const/16 v4, 0x1f4

    iput v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    .line 1512
    const-wide/16 v4, 0x64

    invoke-virtual {v3, v7, v4, v5}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1515
    :pswitch_2
    invoke-virtual {v3, v8}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    .line 1518
    :pswitch_3
    invoke-virtual {v3}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->getEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1521
    const-string v4, "time"

    const/16 v5, 0x4e20

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    .line 1522
    const-string v4, "uitechnoService.YLUIWatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {v3, v7}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->removeMessages(I)V

    .line 1524
    iget v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    int-to-long v4, v4

    invoke-virtual {v3, v7, v4, v5}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1527
    :pswitch_4
    invoke-virtual {v3, v7}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    goto :goto_0

    .line 1504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method getHandler(Ljava/lang/String;)Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;

    invoke-direct {v1, p0}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;-><init>(Lcom/yulong/android/uitechno/service/YLUIWatchService;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;

    return-object v0
.end method

.method onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1533
    packed-switch p1, :pswitch_data_0

    .line 1539
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/BService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 1535
    :pswitch_0
    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1536
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->dealWatchEvent(Landroid/content/Intent;)V

    .line 1537
    const/4 v1, 0x1

    goto :goto_0

    .line 1533
    nop

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_0
    .end packed-switch
.end method

.method startComponent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1582
    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "startComponent start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const-string v1, "uitechnoService.YLUIWatchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const-string v1, "uitechnoService.YLUIWatchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const-string v1, "uitechnoService.YLUIWatchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1587
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    packed-switch p3, :pswitch_data_0

    .line 1599
    :goto_0
    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "startComponent end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return-void

    .line 1591
    :pswitch_0
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1593
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1596
    :pswitch_1
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 1438
    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "systemReady() start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1440
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1441
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mRecoveryStatus:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1442
    invoke-virtual {p0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->addAutoWatchTask()V

    .line 1443
    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "systemReady() end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    return-void
.end method
