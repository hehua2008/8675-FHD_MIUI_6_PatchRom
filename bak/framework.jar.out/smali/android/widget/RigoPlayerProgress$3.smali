.class Landroid/widget/RigoPlayerProgress$3;
.super Landroid/content/BroadcastReceiver;
.source "RigoPlayerProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RigoPlayerProgress;->registerMusicPauseListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RigoPlayerProgress;


# direct methods
.method constructor <init>(Landroid/widget/RigoPlayerProgress;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Landroid/widget/RigoPlayerProgress$3;->this$0:Landroid/widget/RigoPlayerProgress;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 266
    :try_start_0
    const-string v3, "RigoPlayerProgress"

    const-string/jumbo v4, "onReceive:ACTION_RIGO_MUSIC_PAUSE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "action":Ljava/lang/String;
    const-string v3, "ACTION_RIGO_MUSIC_PAUSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 270
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$3;->this$0:Landroid/widget/RigoPlayerProgress;

    const-string v4, "PAUSE_POSITION"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    # setter for: Landroid/widget/RigoPlayerProgress;->pause_position:J
    invoke-static {v3, v4, v5}, Landroid/widget/RigoPlayerProgress;->access$502(Landroid/widget/RigoPlayerProgress;J)J

    .line 272
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$3;->this$0:Landroid/widget/RigoPlayerProgress;

    const-string v4, "DURATION"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    # setter for: Landroid/widget/RigoPlayerProgress;->duration:J
    invoke-static {v3, v4, v5}, Landroid/widget/RigoPlayerProgress;->access$202(Landroid/widget/RigoPlayerProgress;J)J

    .line 273
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$3;->this$0:Landroid/widget/RigoPlayerProgress;

    iget-object v4, p0, Landroid/widget/RigoPlayerProgress$3;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->pause_position:J
    invoke-static {v4}, Landroid/widget/RigoPlayerProgress;->access$500(Landroid/widget/RigoPlayerProgress;)J

    move-result-wide v4

    # setter for: Landroid/widget/RigoPlayerProgress;->current_position:J
    invoke-static {v3, v4, v5}, Landroid/widget/RigoPlayerProgress;->access$002(Landroid/widget/RigoPlayerProgress;J)J

    .line 274
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$3;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/widget/RigoPlayerProgress;->access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$3;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/widget/RigoPlayerProgress;->access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    :cond_0
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$3;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/widget/RigoPlayerProgress;->access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    const-string v3, "RigoPlayerProgress"

    const-string/jumbo v4, "onreceive music pause"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
