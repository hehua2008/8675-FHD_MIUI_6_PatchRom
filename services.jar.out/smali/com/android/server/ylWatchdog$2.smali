.class Lcom/android/server/ylWatchdog$2;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog;->rebootSystem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/android/server/ylWatchdog$2;->this$0:Lcom/android/server/ylWatchdog;

    iput-object p2, p0, Lcom/android/server/ylWatchdog$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1635
    const-string v1, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ylWatchdog$2;->val$reason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-object v1, p0, Lcom/android/server/ylWatchdog$2;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v2, p0, Lcom/android/server/ylWatchdog$2;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v2, v2, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/ylWatchdog;->processStealShutdown(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/server/ylWatchdog;->access$800(Lcom/android/server/ylWatchdog;Landroid/content/Context;)V

    .line 1638
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ylWatchdog$2;->val$reason:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    :goto_0
    return-void

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ylWatchdog"

    const-string v2, "Reboot failed, will attempt shutdown instead"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
