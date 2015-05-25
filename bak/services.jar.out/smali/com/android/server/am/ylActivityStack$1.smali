.class final Lcom/android/server/am/ylActivityStack$1;
.super Ljava/lang/Thread;
.source "ylActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ylActivityStack;->killRedundantHomeApps(Ljava/util/List;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$processesToKill:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/am/ylActivityStack$1;->val$processesToKill:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 162
    const-wide/16 v8, 0xbb8

    :try_start_0
    invoke-static {v8, v9}, Lcom/android/server/am/ylActivityStack$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    iget-object v9, p0, Lcom/android/server/am/ylActivityStack$1;->val$processesToKill:Ljava/util/List;

    monitor-enter v9

    .line 168
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 169
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v6, 0x0

    .line 171
    .local v6, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_2
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 175
    :goto_1
    if-eqz v6, :cond_1

    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 176
    .local v5, "numProcesses":I
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v5, :cond_3

    .line 177
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 179
    .local v7, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, p0, Lcom/android/server/am/ylActivityStack$1;->val$processesToKill:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    .local v2, "homeAppProcessName":Ljava/lang/String;
    iget-object v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 181
    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V

    goto :goto_4

    .line 187
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v2    # "homeAppProcessName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "numProcesses":I
    .end local v6    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v6    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_1
    move-exception v1

    .line 173
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v8, "ylActivityStack"

    const-string v10, "runnging processes is null, impossible!"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 176
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "numProcesses":I
    .restart local v7    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 186
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    iget-object v8, p0, Lcom/android/server/am/ylActivityStack$1;->val$processesToKill:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 187
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    return-void
.end method
