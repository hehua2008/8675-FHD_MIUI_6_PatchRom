.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2384
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    .line 2385
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2386
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2390
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2478
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2392
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    :goto_1
    # invokes: Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v2, v0, v1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 2401
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider_google:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_google:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2402
    const-string v0, "LocationManagerService"

    const-string v1, "handleMessage MSG_LOAD_OUTCHINA_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2410
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2412
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    # invokes: Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    .line 2415
    :cond_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_google:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v1

    # setter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2502(Lcom/android/server/LocationManagerService;Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy;

    .line 2417
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider_google:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    # setter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2102(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy;

    .line 2424
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2426
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    # invokes: Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    .line 2428
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$800(Lcom/android/server/LocationManagerService;)V

    goto/16 :goto_0

    .line 2432
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider_baidu:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider_amap:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2433
    :cond_3
    const-string v0, "LocationManagerService"

    const-string v1, "handleMessage MSG_LOAD_INDOOR_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2441
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2442
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2443
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    # invokes: Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    .line 2446
    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_baidu:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2447
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_baidu:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v1

    # setter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2502(Lcom/android/server/LocationManagerService;Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy;

    .line 2462
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider_baidu:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2463
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider_baidu:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    # setter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2102(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy;

    .line 2464
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2466
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    # invokes: Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    .line 2473
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$800(Lcom/android/server/LocationManagerService;)V

    goto/16 :goto_0

    .line 2453
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_amap:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$3000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2454
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_amap:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$3000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v1

    # setter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2502(Lcom/android/server/LocationManagerService;Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy;

    goto :goto_2

    .line 2467
    :cond_8
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider_amap:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2468
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider_amap:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    # setter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2102(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy;

    .line 2469
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2470
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2471
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    # invokes: Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    goto :goto_3

    .line 2390
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x62 -> :sswitch_3
        0x63 -> :sswitch_0
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
