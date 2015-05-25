.class final Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner$Accessor;
.super Ljava/lang/Object;
.source "YlAppProfileService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Accessor"
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;


# direct methods
.method public constructor <init>(Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner$Accessor;->this$1:Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x7d0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 392
    :goto_0
    # getter for: Lcom/yulong/android/ylcplsvc/YlAppProfileService;->m_cg_mem:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner$Accessor;->iterator:Ljava/util/Iterator;

    .line 393
    :goto_1
    iget-object v3, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner$Accessor;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 395
    :cond_0
    :goto_2
    # getter for: Lcom/yulong/android/ylcplsvc/YlAppProfileService;->m_wait_for_power_hint:Z
    invoke-static {}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 397
    invoke-static {v7}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setWaitFlag(Z)V

    .line 398
    sget-boolean v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->reinit_for_monkey_test:Z

    if-nez v3, :cond_0

    const/16 v3, 0x64

    sget v4, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_scale:I

    if-eq v3, v4, :cond_0

    .line 400
    const-string v3, "ro.monkey"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v8, v3, :cond_0

    .line 401
    sput-boolean v8, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->reinit_for_monkey_test:Z

    .line 407
    sget v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->HINT_CGROUP_MEM:I

    # invokes: Lcom/yulong/android/ylcplsvc/YlAppProfileService;->initMemGroup(I)V
    invoke-static {v3}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->access$200(I)V

    goto :goto_2

    .line 412
    :cond_1
    iget-object v3, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner$Accessor;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 415
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;

    .line 416
    .local v2, "tmp":Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;
    iget-object v3, v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;->mName:Ljava/lang/String;

    iget v4, v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;->mPid:I

    iget v5, v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;->mAdj:I

    iget v6, v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;->mHint:I

    # invokes: Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppCgroupMemOnce(Ljava/lang/String;III)V
    invoke-static {v3, v4, v5, v6}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->access$300(Ljava/lang/String;III)V

    .line 417
    # getter for: Lcom/yulong/android/ylcplsvc/YlAppProfileService;->m_cg_mem:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 418
    .end local v2    # "tmp":Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;>;"
    :cond_2
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
