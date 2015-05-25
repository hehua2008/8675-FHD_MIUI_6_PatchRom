.class public Lcom/yulong/android/telephony/CPTelephonyActMode;
.super Ljava/lang/Object;
.source "CPTelephonyActMode.java"


# static fields
.field private static sInstance:Lcom/yulong/android/telephony/CPTelephonyActMode;


# instance fields
.field public LOG_TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "CPTelephonyActMode"

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyActMode;->LOG_TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/yulong/android/telephony/CPTelephonyActMode;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/yulong/android/telephony/CPTelephonyActMode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyActMode;->sInstance:Lcom/yulong/android/telephony/CPTelephonyActMode;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/yulong/android/telephony/CPTelephonyActMode;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CPTelephonyActMode;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPTelephonyActMode;->sInstance:Lcom/yulong/android/telephony/CPTelephonyActMode;

    .line 22
    :cond_0
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyActMode;->sInstance:Lcom/yulong/android/telephony/CPTelephonyActMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getActMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    const-string v0, "yulong.current.actmode"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setActMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "actMode"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "yulong.current.actmode"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyActMode;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPTelephonyActMode() setActMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yulong/android/telephony/CPTelephonyActMode;->getActMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method
