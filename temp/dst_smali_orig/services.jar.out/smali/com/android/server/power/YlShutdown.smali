.class public final Lcom/android/server/power/YlShutdown;
.super Ljava/lang/Object;
.source "YlShutdown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/YlShutdown$MySensorEventListener;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final RADIO_SHUTDOWN_PROPERTY:Ljava/lang/String; = "sys.radio.shutdown"

.field private static final SHUTDOWN_DELAY:I = 0x9c40

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mPoweroffdelay:Ljava/lang/Runnable;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mShutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/power/YlShutdown$1;

    invoke-direct {v0}, Lcom/android/server/power/YlShutdown$1;-><init>()V

    sput-object v0, Lcom/android/server/power/YlShutdown;->mPoweroffdelay:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/YlShutdown;->mReboot:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/power/YlShutdown;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method public static shutDownSensor(Landroid/content/Context;)V
    .locals 4
    .param p0, "cpContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .local v1, "mSensorManager":Landroid/hardware/SensorManager;
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .local v0, "mSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0, v3}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0, v3}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0, v3}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .end local v0    # "mSensor":Landroid/hardware/Sensor;
    :cond_2
    return-void
.end method

.method public static shutDownTimeOut(ZLjava/lang/String;)V
    .locals 5
    .param p0, "flag"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    sput-boolean p0, Lcom/android/server/power/YlShutdown;->mReboot:Z

    sput-object p1, Lcom/android/server/power/YlShutdown;->mRebootReason:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ylShutdownThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, "shutHanderThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/power/YlShutdown;->mShutHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/YlShutdown;->mShutHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/power/YlShutdown;->mPoweroffdelay:Ljava/lang/Runnable;

    const-wide/32 v3, 0x9c40

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static shutRadios(I)V
    .locals 8
    .param p0, "timeout"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p0

    add-long v1, v4, v6

    .local v1, "endTime":J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .local v0, "done":[Z
    new-instance v3, Lcom/android/server/power/YlShutdown$2;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/server/power/YlShutdown$2;-><init>(J[Z)V

    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    int-to-long v4, p0

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_0

    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static shutTelephony(Ljava/lang/Object;)V
    .locals 9
    .param p0, "ITelephony"    # Ljava/lang/Object;

    .prologue
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "inData":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "outData":Landroid/os/Bundle;
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants_IOCTRL_QUEREY_POWERCONTROL_KEY_STATE()Ljava/lang/String;

    move-result-object v3

    .local v3, "key_state":Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants_IOCTRL_QUEREY_POWERCONTROL()I

    move-result v5

    .local v5, "powercontrol":I
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key_state :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "powercontrol :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/power/YlShutdown$3;

    invoke-direct {v6, p0, v5, v2, v4}, Lcom/android/server/power/YlShutdown$3;-><init>(Ljava/lang/Object;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v0, "cdmaThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/power/YlShutdown$4;

    invoke-direct {v6, p0, v5, v2, v4}, Lcom/android/server/power/YlShutdown$4;-><init>(Ljava/lang/Object;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-direct {v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v1, "gsmThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
