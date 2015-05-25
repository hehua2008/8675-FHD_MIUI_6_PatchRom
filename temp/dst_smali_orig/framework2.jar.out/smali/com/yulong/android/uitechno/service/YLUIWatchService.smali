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
    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/BService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/yulong/android/uitechno/service/YLUIWatchService$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/uitechno/service/YLUIWatchService$1;-><init>(Lcom/yulong/android/uitechno/service/YLUIWatchService;)V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mRecoveryStatus:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected addAutoWatchTask()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->addUpdateManagerWatchTask()V

    return-void
.end method

.method protected addUpdateManagerWatchTask()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "addUpdateManagerWatchTask start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "event"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "packageName"

    const-string v2, "com.yulong.android.network.widget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "className"

    const-string v2, "com.yulong.android.network.widget.update.ControlUpdateManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->dealWatchEvent(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "event"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "time"

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "packageName"

    const-string v2, "com.yulong.android.network.widget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "className"

    const-string v2, "com.yulong.android.network.widget.update.ControlUpdateManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->dealWatchEvent(Landroid/content/Intent;)V

    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "addUpdateManagerWatchTask end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected dealWatchEvent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

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

    const-string v4, "event"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

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

    const-string v4, "packageName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    const-string v4, "className"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->getHandler(Ljava/lang/String;)Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;

    move-result-object v3

    .local v3, "watchHandler":Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;
    iput-object v2, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->className:Ljava/lang/String;

    const-string v4, "type"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->type:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v3, v7}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    invoke-virtual {v3, v7}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->removeMessages(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v3, v8}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    const/16 v4, 0x1f4

    iput v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v7, v4, v5}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {v3, v8}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    :pswitch_3
    invoke-virtual {v3}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->getEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "time"

    const/16 v5, 0x4e20

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

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

    invoke-virtual {v3, v7}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->removeMessages(I)V

    iget v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    int-to-long v4, v4

    invoke-virtual {v3, v7, v4, v5}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {v3, v7}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    goto :goto_0

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
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;

    invoke-direct {v1, p0}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;-><init>(Lcom/yulong/android/uitechno/service/YLUIWatchService;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/BService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->dealWatchEvent(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

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
    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "startComponent start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    packed-switch p3, :pswitch_data_0

    :goto_0
    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "startComponent end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method systemReady()V
    .locals 3

    .prologue
    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "systemReady() start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mRecoveryStatus:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->addAutoWatchTask()V

    const-string v1, "uitechnoService.YLUIWatchService"

    const-string v2, "systemReady() end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
