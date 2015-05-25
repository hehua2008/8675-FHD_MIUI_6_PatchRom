.class final Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillProcessTimeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 343
    new-instance v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;-><init>(Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver$1;->start()V

    .line 390
    return-void
.end method
