.class Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingObserverTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;


# direct methods
.method public constructor <init>(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$000(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    const-string v1, "glove_state"

    invoke-direct {p0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->glove_state:Z
    invoke-static {v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$102(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z

    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recorad_glove_state:Z
    invoke-static {v0}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$200(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v0

    iget-object v1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->glove_state:Z
    invoke-static {v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$100(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->glove_state:Z
    invoke-static {v0}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$100(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/sys/class/touchscreen/touchscreen_dev/mode"

    const-string v1, "glove"

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    iget-object v1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->glove_state:Z
    invoke-static {v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$100(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v1

    # setter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recorad_glove_state:Z
    invoke-static {v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$202(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glove update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->glove_state:Z
    invoke-static {v2}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$100(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    const-string v1, "homekey_wakeup"

    invoke-direct {p0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->homekey_wakeup_enable:Z
    invoke-static {v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$402(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z

    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recorad_homekey_wakeup:Z
    invoke-static {v0}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$500(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v0

    iget-object v1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->homekey_wakeup_enable:Z
    invoke-static {v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$400(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->homekey_wakeup_enable:Z
    invoke-static {v0}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$400(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/dev/homekey_wakeup"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    iget-object v1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->homekey_wakeup_enable:Z
    invoke-static {v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$400(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v1

    # setter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recorad_homekey_wakeup:Z
    invoke-static {v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$502(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "home Key update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->homekey_wakeup_enable:Z
    invoke-static {v2}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$400(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    const-string v1, "judge_hall_sensor_enable"

    invoke-direct {p0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->hallsensor_enable:Z
    invoke-static {v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$602(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z

    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recoard_hallsensor_enable:Z
    invoke-static {v0}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$700(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v0

    iget-object v1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->hallsensor_enable:Z
    invoke-static {v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$600(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->hallsensor_enable:Z
    invoke-static {v0}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$600(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "/sys/class/switch/hall/enable"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    iget-object v1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->hallsensor_enable:Z
    invoke-static {v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$600(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v1

    # setter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recoard_hallsensor_enable:Z
    invoke-static {v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$702(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hall sensor update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->this$0:Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->hallsensor_enable:Z
    invoke-static {v2}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$600(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string v0, "/sys/class/touchscreen/touchscreen_dev/mode"

    const-string v1, "normal"

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "/dev/homekey_wakeup"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "/sys/class/switch/hall/enable"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/FileWriter;
    invoke-virtual {v1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "file":Ljava/io/FileWriter;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "write file exception."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method RegisterObserverAndUpdateSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "glove_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "homekey_wakeup"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "judge_hall_sensor_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->updateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->updateSettings()V

    return-void
.end method
