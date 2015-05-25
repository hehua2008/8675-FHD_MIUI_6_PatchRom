.class Landroid/widget/RigoPlayerProgress$2;
.super Landroid/content/BroadcastReceiver;
.source "RigoPlayerProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RigoPlayerProgress;->registerMusicStartListener()V
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
    .line 221
    iput-object p1, p0, Landroid/widget/RigoPlayerProgress$2;->this$0:Landroid/widget/RigoPlayerProgress;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 226
    :try_start_0
    const-string v3, "RigoPlayerProgress"

    const-string/jumbo v4, "onReceive:ACTION_RIGO_MUSIC_START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    const-string v3, "ACTION_RIGO_MUSIC_START"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 230
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$2;->this$0:Landroid/widget/RigoPlayerProgress;

    const-string v4, "START_POSITION"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    # setter for: Landroid/widget/RigoPlayerProgress;->current_position:J
    invoke-static {v3, v4, v5}, Landroid/widget/RigoPlayerProgress;->access$002(Landroid/widget/RigoPlayerProgress;J)J

    .line 232
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$2;->this$0:Landroid/widget/RigoPlayerProgress;

    const-string v4, "RATE"

    const/16 v5, 0x32

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    # setter for: Landroid/widget/RigoPlayerProgress;->delaytime:I
    invoke-static {v3, v4}, Landroid/widget/RigoPlayerProgress;->access$402(Landroid/widget/RigoPlayerProgress;I)I

    .line 233
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$2;->this$0:Landroid/widget/RigoPlayerProgress;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/RigoPlayerProgress$2;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->current_position:J
    invoke-static {v6}, Landroid/widget/RigoPlayerProgress;->access$000(Landroid/widget/RigoPlayerProgress;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    # setter for: Landroid/widget/RigoPlayerProgress;->start_position:J
    invoke-static {v3, v4, v5}, Landroid/widget/RigoPlayerProgress;->access$102(Landroid/widget/RigoPlayerProgress;J)J

    .line 239
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$2;->this$0:Landroid/widget/RigoPlayerProgress;

    const-string v4, "DURATION"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    # setter for: Landroid/widget/RigoPlayerProgress;->duration:J
    invoke-static {v3, v4, v5}, Landroid/widget/RigoPlayerProgress;->access$202(Landroid/widget/RigoPlayerProgress;J)J

    .line 243
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$2;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/widget/RigoPlayerProgress;->access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$2;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/widget/RigoPlayerProgress;->access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    :cond_0
    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$2;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/widget/RigoPlayerProgress;->access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    const-string v3, "RigoPlayerProgress"

    const-string/jumbo v4, "onreceive music start"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
