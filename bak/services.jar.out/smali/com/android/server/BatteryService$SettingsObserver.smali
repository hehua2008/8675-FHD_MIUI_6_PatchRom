.class Lcom/android/server/BatteryService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1513
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1514
    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 1515
    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1670
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isSettingsChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1635
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "yulong_breath_light_charging"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/server/BatteryService;->ylBreathLightCharging:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$2102(Lcom/android/server/BatteryService;Z)Z

    .line 1636
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "yulong_breath_light_lowpower"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/server/BatteryService;->ylBreathLightLowpower:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$2202(Lcom/android/server/BatteryService;Z)Z

    .line 1637
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "kavass_forbid_led"

    invoke-direct {p0, v1, v3}, Lcom/android/server/BatteryService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/BatteryService;->ylBreathLightDisturb:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1402(Lcom/android/server/BatteryService;I)I

    .line 1638
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "yulong_breath_light_call_switch"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/server/BatteryService;->ylBreathLightCallSwitch:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1502(Lcom/android/server/BatteryService;Z)Z

    .line 1639
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "yulong_breath_light_message_switch"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/server/BatteryService;->ylBreathLightMessageSwitch:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    .line 1640
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "notification_light_pulse"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/server/BatteryService;->ylBreathLightNotify:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1902(Lcom/android/server/BatteryService;Z)Z

    .line 1654
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "savepower_adjust_cpu"

    invoke-direct {p0, v1, v4}, Lcom/android/server/BatteryService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/BatteryService;->enableAdjustCpuValue:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$2902(Lcom/android/server/BatteryService;I)I

    .line 1656
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "savepower_lowbattery_level"

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/android/server/BatteryService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/BatteryService;->lowBatteryValue:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$3002(Lcom/android/server/BatteryService;I)I

    .line 1658
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "savepower_adjust_cpu_normal"

    invoke-direct {p0, v1, v3}, Lcom/android/server/BatteryService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/BatteryService;->enableAdjustCpuNormal:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$3102(Lcom/android/server/BatteryService;I)I

    .line 1660
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->recoardEnableAdjustCpuNormal:I
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$3200(Lcom/android/server/BatteryService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->enableAdjustCpuNormal:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$3100(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->enableAdjustCpuNormal:I
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$3100(Lcom/android/server/BatteryService;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->BatteryCpuUpdate()V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$3300(Lcom/android/server/BatteryService;)V

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->enableAdjustCpuNormal:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$3100(Lcom/android/server/BatteryService;)I

    move-result v1

    # setter for: Lcom/android/server/BatteryService;->recoardEnableAdjustCpuNormal:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$3202(Lcom/android/server/BatteryService;I)I

    .line 1667
    :cond_1
    return-void
.end method

.method private updateSettings()V
    .locals 2

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1618
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/BatteryService$SettingsObserver;->isSettingsChanged()V

    .line 1619
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 1621
    return-void

    .line 1619
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method RegisterObserverAndUpdateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1546
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_charging"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1550
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_lowpower"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1554
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "kavass_forbid_led"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1557
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_call_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1561
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_message_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1565
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_notify_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1568
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "notification_light_pulse"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1597
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "savepower_adjust_cpu"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1600
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "savepower_lowbattery_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1606
    invoke-direct {p0}, Lcom/android/server/BatteryService$SettingsObserver;->updateSettings()V

    .line 1607
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 1612
    invoke-direct {p0}, Lcom/android/server/BatteryService$SettingsObserver;->updateSettings()V

    .line 1614
    return-void
.end method
