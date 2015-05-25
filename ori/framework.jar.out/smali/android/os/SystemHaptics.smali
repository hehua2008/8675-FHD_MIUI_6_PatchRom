.class public Landroid/os/SystemHaptics;
.super Landroid/os/Haptics;
.source "SystemHaptics.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemHaptics"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/os/IHapticsService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Haptics;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    .line 30
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemHaptics;->mPackageName:Ljava/lang/String;

    .line 31
    const-string v0, "haptics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHapticsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHapticsService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    .line 33
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "SystemHaptics"

    const-string v1, "SystemHaptics construct null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemHaptics mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 38
    return-void

    .line 36
    :cond_0
    const-string v0, "SystemHaptics"

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/Haptics;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemHaptics;->mPackageName:Ljava/lang/String;

    .line 42
    const-string v0, "haptics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHapticsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHapticsService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    .line 44
    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 0
    .param p1, "log_str"    # Ljava/lang/String;

    .prologue
    .line 264
    return-void
.end method


# virtual methods
.method public getRingHapticsName()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "RingNames":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsName mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 220
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return-object v0

    .line 223
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IHapticsService;->getRingHapticsName(Landroid/os/IBinder;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingHapticsValue(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsValue mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 250
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-object v0

    .line 253
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Landroid/os/IHapticsService;->getRingHapticsValue(ILandroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingHapticsValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "RingValues":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsValues mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 235
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-object v0

    .line 238
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IHapticsService;->getRingHapticsValues(Landroid/os/IBinder;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playEffectSeqBuff([BI)V
    .locals 2
    .param p1, "Sequence"    # [B
    .param p2, "buffSize"    # I

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playEffectSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IHapticsService;->playEffectSeqBuff([BILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playEffectSequence(Ljava/lang/String;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playEffectSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->playEffectSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playEffectSequenceRepeat(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playEffectSequenceRepeat mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 154
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IHapticsService;->playEffectSequenceRepeat(Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playPatternRTP(IIII)V
    .locals 6
    .param p1, "vibrationDuration"    # I
    .param p2, "silienceDuration"    # I
    .param p3, "repeat_times"    # I
    .param p4, "vibrationStrength"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playPatternRTP mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 89
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v5, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IHapticsService;->playPatternRTP(IIIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playRTPSeqBuff([BI)V
    .locals 2
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playRTPSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IHapticsService;->playRTPSeqBuff([BILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playRTPSequence(Ljava/lang/String;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playRTPSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 128
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->playRTPSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playRingHaptics(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playRingHaptics mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 193
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Landroid/os/IHapticsService;->playRingHaptics(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playRingSeq(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playRingSeq mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 207
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Landroid/os/IHapticsService;->playRingSeq(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playTimedEffect(I)V
    .locals 2
    .param p1, "effectDuration"    # I

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playTimedEffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 76
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->playTimedEffect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playeffect(I)V
    .locals 2
    .param p1, "effectID"    # I

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playeffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->playeffect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playeffectforce(I)V
    .locals 2
    .param p1, "effectID"    # I

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playeffectforce mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->playeffectforce(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAudioHapticEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 179
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->setAudioHapticEnabled(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopPlayingEffect()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopPlayingEffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 167
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/os/IHapticsService;->stopPlayingEffect(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method
