.class Lcom/android/internal/telephony/CallManager$AudioModeWorker;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioModeWorker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2452
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$AudioModeWorker;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2449
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager$AudioModeWorker;->mLock:Ljava/lang/Object;

    .line 2453
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2454
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2455
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$AudioModeWorker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2456
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$AudioModeWorker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2458
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$AudioModeWorker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2459
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2462
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 2463
    return-void

    .line 2462
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$AudioModeWorker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$AudioModeWorker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2480
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2470
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$AudioModeWorker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2471
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2472
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager$AudioModeWorker;->mLooper:Landroid/os/Looper;

    .line 2473
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$AudioModeWorker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2474
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2475
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2476
    return-void

    .line 2474
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
