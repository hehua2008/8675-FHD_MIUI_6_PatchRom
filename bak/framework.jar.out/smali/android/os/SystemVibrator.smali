.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final mHapticsService:Landroid/os/IHapticsService;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 44
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 47
    const-string v0, "haptics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHapticsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHapticsService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mHapticsService:Landroid/os/IHapticsService;

    .line 49
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemHaptics mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Landroid/os/SystemVibrator;->mHapticsService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 51
    const-string v0, "Vibrator"

    const-string v1, "SystemHaptics construct null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 59
    const-string v0, "haptics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHapticsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHapticsService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mHapticsService:Landroid/os/IHapticsService;

    .line 61
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cpVibratorSetLevel(I)Z
    .locals 2
    .param p1, "vibratorLevel"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "setResult":Z
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 183
    :goto_0
    return v1

    .line 177
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1, p1}, Landroid/os/IVibratorService;->cpVibratorSetLevel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 183
    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public hasLinearVibrator()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/os/SystemVibrator;->mHapticsService:Landroid/os/IHapticsService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 66
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return v0

    .line 70
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->hasVibrator()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setYLVibrate(IJ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "milliseconds"    # J

    .prologue
    .line 195
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 196
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v3, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/os/IVibratorService;->setYLVibrate(ILjava/lang/String;IJLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v7

    .line 205
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setYLVibrate(I[JI)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I

    .prologue
    .line 219
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 220
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return-void

    .line 226
    :cond_0
    array-length v0, p2

    if-ge p3, v0, :cond_1

    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/os/IVibratorService;->setYLVibratePattern(ILjava/lang/String;I[JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v7

    .line 233
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public vibrate(ILjava/lang/String;J)V
    .locals 7
    .param p1, "owningUid"    # I
    .param p2, "owningPackage"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J

    .prologue
    .line 96
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 97
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/os/IVibratorService;->vibrate(ILjava/lang/String;JLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v6

    .line 103
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public vibrate(ILjava/lang/String;[JI)V
    .locals 7
    .param p1, "owningUid"    # I
    .param p2, "owningPackage"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I

    .prologue
    .line 112
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 113
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    array-length v0, p3

    if-ge p4, v0, :cond_1

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IVibratorService;->vibratePattern(ILjava/lang/String;[JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v6

    .line 123
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public vibrate(J)V
    .locals 2
    .param p1, "milliseconds"    # J

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/os/SystemVibrator;->vibrate(ILjava/lang/String;J)V

    .line 84
    return-void
.end method

.method public vibrate([JI)V
    .locals 2
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/os/SystemVibrator;->vibrate(ILjava/lang/String;[JI)V

    .line 89
    return-void
.end method
