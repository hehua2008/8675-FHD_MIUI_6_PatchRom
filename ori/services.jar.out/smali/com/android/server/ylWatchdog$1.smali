.class Lcom/android/server/ylWatchdog$1;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog;->startPersistentProcessesMemMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1247
    const/16 v6, 0x8

    .line 1248
    .local v6, "j":I
    const-wide/32 v2, -0x3199999

    .line 1250
    .local v2, "TotalPssMonitor":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "IDandSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v7, v6

    .line 1252
    .end local v6    # "j":I
    .local v7, "j":I
    :goto_0
    const/4 v10, 0x1

    if-le v7, v10, :cond_0

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    :goto_1
    mul-int/lit8 v10, v7, 0x3c

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1253
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1254
    const-string v10, "ylWatchdog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Check persistent processes memleak: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " minute"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    monitor-enter p0

    .line 1256
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    # invokes: Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses(Ljava/util/ArrayList;)J
    invoke-static {v10, v1}, Lcom/android/server/ylWatchdog;->access$700(Lcom/android/server/ylWatchdog;Ljava/util/ArrayList;)J

    move-result-wide v10

    cmp-long v10, v10, v2

    if-gez v10, :cond_1

    .line 1257
    monitor-exit p0

    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    goto :goto_0

    .line 1252
    :cond_0
    const/4 v10, 0x1

    move v6, v7

    .end local v7    # "j":I
    .restart local v6    # "j":I
    move v7, v10

    goto :goto_1

    .line 1259
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1261
    .local v0, "Count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_2

    .line 1262
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1263
    .local v8, "pid":I
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1265
    .local v9, "size_m":I
    const-string v10, "am dumpheap  %d /sdcard/persistent_heap_%dM_%d_java.txt"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1267
    .local v4, "cmd":Ljava/lang/String;
    const-string v10, "service.ylkeydb.cmd"

    const-string v11, "run_by_root"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string v10, "service.ylkeydb.file"

    invoke-static {v10, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v10, "ctl.start"

    const-string v11, "ylkeydb"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const-wide/16 v10, 0x1388

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1274
    const-string v10, "am dumpheap  -n %d /sdcard/persistent_heap_%dM_%d_native.txt"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1276
    const-string v10, "service.ylkeydb.cmd"

    const-string v11, "run_by_root"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const-string v10, "service.ylkeydb.file"

    invoke-static {v10, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v10, "ctl.start"

    const-string v11, "ylkeydb"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-wide/16 v10, 0x1388

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1261
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_2

    .line 1259
    .end local v0    # "Count":I
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "pid":I
    .end local v9    # "size_m":I
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 1282
    .restart local v0    # "Count":I
    .restart local v5    # "i":I
    :cond_2
    const/16 v6, 0x8

    move v7, v6

    .line 1284
    .end local v6    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_0
.end method
