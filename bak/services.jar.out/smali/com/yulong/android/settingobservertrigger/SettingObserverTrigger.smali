.class public Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;
.super Ljava/lang/Object;
.source "SettingObserverTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;
    }
.end annotation


# static fields
.field static final CHARGE_MODE_PATH:Ljava/lang/String; = "/sys/class/power_supply/charge_mode"

.field static final DISABLE_MODE:Ljava/lang/String; = "disable"

.field static final ENABLE_MODE:Ljava/lang/String; = "enable"

.field static final GLOVE_MODE:Ljava/lang/String; = "glove"

.field static final GOD_DOT_PATH:Ljava/lang/String; = "/sys/class/touchscreen/touchscreen_dev/enable_goddot"

.field static final HALL_SENSOR_PATH:Ljava/lang/String; = "/sys/class/switch/hall/enable"

.field static final HOME_KEY_PATH:Ljava/lang/String; = "/dev/homekey_wakeup"

.field static final INVALID_MODE:Ljava/lang/String; = "invalid"

.field static final NEGATIVE_MODE:Ljava/lang/String; = "0"

.field static final NORMAL_MODE:Ljava/lang/String; = "normal"

.field static final POSITIVE_MODE:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String;

.field static final TW_PATH:Ljava/lang/String; = "/sys/class/touchscreen/touchscreen_dev/mode"

.field static final VOLUME_DOWN_INTERRUPT_SOURCE_PATH:Ljava/lang/String; = "/dev/volkey_wakeup"

.field static final WINDOW_MODE:Ljava/lang/String; = "window"


# instance fields
.field private CHARGE_DEFAULT_MODE:I

.field private charge_mode:I

.field private glove_state:Z

.field private hallsensor_enable:Z

.field private homekey_wakeup_enable:Z

.field private final mContext:Landroid/content/Context;

.field private mFastCapture:Z

.field private mGodDot:Z

.field private mHandler:Landroid/os/Handler;

.field private mRecoardFastCapture:Z

.field private mRecoardGodDot:Z

.field private recoard_charge_mode:I

.field private recoard_hallsensor_enable:Z

.field private recorad_glove_state:Z

.field private recorad_homekey_wakeup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->mHandler:Landroid/os/Handler;

    .line 48
    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recoard_charge_mode:I

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->CHARGE_DEFAULT_MODE:I

    .line 73
    iput-object p1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;

    iget-object v1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;-><init>(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Landroid/os/Handler;)V

    .line 76
    .local v0, "settingsObserver":Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;
    invoke-virtual {v0}, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger$SettingsObserver;->RegisterObserverAndUpdateSettings()V

    .line 78
    sget-object v1, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->TAG:Ljava/lang/String;

    const-string v2, " SettingObserverTrigger start "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->glove_state:Z

    return v0
.end method

.method static synthetic access$102(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->glove_state:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recorad_glove_state:Z

    return v0
.end method

.method static synthetic access$202(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recorad_glove_state:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->homekey_wakeup_enable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->homekey_wakeup_enable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recorad_homekey_wakeup:Z

    return v0
.end method

.method static synthetic access$502(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recorad_homekey_wakeup:Z

    return p1
.end method

.method static synthetic access$600(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->hallsensor_enable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->hallsensor_enable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recoard_hallsensor_enable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yulong/android/settingobservertrigger/SettingObserverTrigger;->recoard_hallsensor_enable:Z

    return p1
.end method
