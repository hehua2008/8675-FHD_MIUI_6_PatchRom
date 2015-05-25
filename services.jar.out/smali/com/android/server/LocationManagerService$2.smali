.class Lcom/android/server/LocationManagerService$2;
.super Landroid/telephony/PhoneStateListener;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x64

    const/16 v3, 0x62

    .line 294
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateListener serviceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->networkProvider_google:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_google:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->sendMessage:Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->isInChina()Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    const-string v0, "LocationManagerService"

    const-string v1, "-----STATE_IN_SERVICE --- not in China"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(I)V

    .line 301
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendEmptyMessage(I)Z

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # setter for: Lcom/android/server/LocationManagerService;->sendMessage:Z
    invoke-static {v0, v5}, Lcom/android/server/LocationManagerService;->access$502(Lcom/android/server/LocationManagerService;Z)Z

    .line 309
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->sendMessage:Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->isInChina()Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 312
    const-string v0, "LocationManagerService"

    const-string v1, "-----STATE_OUT_OF_SERVICE --- not in China"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(I)V

    .line 314
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendEmptyMessage(I)Z

    .line 323
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 324
    return-void

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(I)V

    .line 304
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(I)V

    .line 317
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
