.class Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;
.super Ljava/util/TimerTask;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckPortalTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

.field private timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 430
    const-string v13, "WifiWatchdogStateMachine"

    const-string v14, "CheckPortalTask:run"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v1, 0x1

    .line 432
    .local v1, "apType":I
    const/4 v11, 0x0

    .line 434
    .local v11, "urlConnection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 435
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 436
    .local v12, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v12, :cond_1

    .line 437
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 438
    const-string v13, "WifiWatchdogStateMachine"

    const-string v14, "CheckPortalTask:WiFi is available"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_1

    .line 440
    const-string v13, "WifiWatchdogStateMachine"

    const-string v14, "CheckPortalTask:WiFi is not connected"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->timer:Ljava/util/Timer;

    invoke-virtual {v13}, Ljava/util/Timer;->cancel()V

    .line 524
    :goto_0
    return-void

    .line 446
    :cond_0
    const-string v13, "WifiWatchdogStateMachine"

    const-string v14, "CheckPortalTask:WiFi is not available"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->timer:Ljava/util/Timer;

    invoke-virtual {v13}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 453
    :cond_1
    const/4 v9, 0x0

    .line 454
    .local v9, "ret":I
    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 455
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v11, v0

    .line 456
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 457
    const/16 v13, 0x2710

    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 458
    const/16 v13, 0x2710

    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 459
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 460
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 462
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 463
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "delayCheckNetworkStatus: urlConnection.getResponseCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 467
    :cond_2
    sparse-switch v9, :sswitch_data_0

    .line 491
    const/4 v1, 0x1

    .line 492
    const-string v13, "WifiWatchdogStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "delayCheckNetworkStatus:urlConnection.getResponseCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", online"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_1
    const/4 v13, 0x2

    if-ne v1, v13, :cond_8

    .line 497
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v14, "Walled garden detected"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 500
    :cond_3
    const-wide/16 v7, 0x0

    .line 501
    .local v7, "rand":D
    :goto_2
    const-wide v13, 0x3fb999999999999aL    # 0.1

    cmpg-double v13, v7, v13

    if-gez v13, :cond_7

    .line 502
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    goto :goto_2

    .line 469
    .end local v7    # "rand":D
    :sswitch_0
    const/4 v1, 0x2

    .line 470
    const-string v13, "WifiWatchdogStateMachine"

    const-string v14, "delayCheckNetworkStatus: online"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 512
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 513
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 514
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "delayCheckNetworkStatus - probably not a portal: exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 516
    :cond_4
    const/4 v1, 0x0

    .line 517
    const-string v13, "WifiWatchdogStateMachine"

    const-string v14, "delayCheckNetworkStatus: Connection fail, island"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    if-eqz v11, :cond_5

    .line 520
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 523
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->timer:Ljava/util/Timer;

    invoke-virtual {v13}, Ljava/util/Timer;->cancel()V

    goto/16 :goto_0

    .line 475
    .restart local v10    # "url":Ljava/net/URL;
    :sswitch_1
    const/4 v1, 0x3

    .line 476
    :try_start_2
    const-string v13, "WifiWatchdogStateMachine"

    const-string v14, "delayCheckNetworkStatus: WalledGarden"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 519
    .end local v10    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v13

    if-eqz v11, :cond_6

    .line 520
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v13

    .line 486
    .restart local v10    # "url":Ljava/net/URL;
    :sswitch_2
    const/4 v1, 0x2

    .line 487
    :try_start_3
    const-string v13, "WifiWatchdogStateMachine"

    const-string v14, "delayCheckNetworkStatus: portal"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 505
    .restart local v7    # "rand":D
    :cond_7
    const-wide/high16 v13, 0x4170000000000000L    # 1.6777216E7

    mul-double/2addr v13, v7

    double-to-int v3, v13

    .line 506
    .local v3, "dRandInfo":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://www.baidu.com?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 507
    .local v6, "mportalGardenUrl":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 508
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v13, 0x10400000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 509
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->timer:Ljava/util/Timer;

    invoke-virtual {v13}, Ljava/util/Timer;->cancel()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    .end local v3    # "dRandInfo":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "mportalGardenUrl":Ljava/lang/String;
    .end local v7    # "rand":D
    :cond_8
    if-eqz v11, :cond_5

    .line 520
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 467
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcc -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x130 -> :sswitch_2
        0x131 -> :sswitch_2
        0x132 -> :sswitch_2
        0x133 -> :sswitch_2
    .end sparse-switch
.end method

.method public startCheck(I)V
    .locals 6
    .param p1, "delay"    # I

    .prologue
    .line 423
    const-string v0, "WifiWatchdogStateMachine"

    const-string v1, "CheckPortalTask:startCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->timer:Ljava/util/Timer;

    .line 425
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CheckPortalTask;->timer:Ljava/util/Timer;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 426
    return-void
.end method
