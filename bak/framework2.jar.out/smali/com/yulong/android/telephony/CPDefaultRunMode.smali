.class public Lcom/yulong/android/telephony/CPDefaultRunMode;
.super Ljava/lang/Object;
.source "CPDefaultRunMode.java"


# static fields
.field static final COMM_PROPERTY_DEFAULT_RUN_MODE:Ljava/lang/String; = "persist.yulong.comm.runmode"

.field private static sInstance:Lcom/yulong/android/telephony/CPDefaultRunMode;


# instance fields
.field public LOG_TAG:Ljava/lang/String;

.field private defaultRunMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "CPDefaultRunMode"

    iput-object v0, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->LOG_TAG:Ljava/lang/String;

    .line 14
    const-string v0, "0000"

    iput-object v0, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    .line 54
    const-string v0, "persist.yulong.comm.runmode"

    const-string v1, "0000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPDefaultRunMode() defaultRunMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/yulong/android/telephony/CPDefaultRunMode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/telephony/CPDefaultRunMode;->sInstance:Lcom/yulong/android/telephony/CPDefaultRunMode;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/yulong/android/telephony/CPDefaultRunMode;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPDefaultRunMode;->sInstance:Lcom/yulong/android/telephony/CPDefaultRunMode;

    .line 25
    :cond_0
    sget-object v0, Lcom/yulong/android/telephony/CPDefaultRunMode;->sInstance:Lcom/yulong/android/telephony/CPDefaultRunMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDefaultRunMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    return-object v0
.end method

.method public isLabMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 121
    iget-object v1, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutField()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 133
    iget-object v1, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProductMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 62
    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 63
    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isRFMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 98
    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isRoamingMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 142
    iget-object v1, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRuWangMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 74
    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isTestMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 110
    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isXianWangMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 86
    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 87
    iget-object v2, p0, Lcom/yulong/android/telephony/CPDefaultRunMode;->defaultRunMode:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
