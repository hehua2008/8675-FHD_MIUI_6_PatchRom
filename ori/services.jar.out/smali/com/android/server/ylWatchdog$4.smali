.class Lcom/android/server/ylWatchdog$4;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog;->processStealShutdown(Landroid/content/Context;)V
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
    .line 1742
    iput-object p1, p0, Lcom/android/server/ylWatchdog$4;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/server/ylWatchdog$4;->this$0:Lcom/android/server/ylWatchdog;

    invoke-virtual {v0}, Lcom/android/server/ylWatchdog;->actionDone()V

    .line 1747
    return-void
.end method
