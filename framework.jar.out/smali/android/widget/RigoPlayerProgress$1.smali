.class Landroid/widget/RigoPlayerProgress$1;
.super Landroid/os/Handler;
.source "RigoPlayerProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RigoPlayerProgress;
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
    .line 54
    iput-object p1, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->start_position:J
    invoke-static {v3}, Landroid/widget/RigoPlayerProgress;->access$100(Landroid/widget/RigoPlayerProgress;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    # setter for: Landroid/widget/RigoPlayerProgress;->current_position:J
    invoke-static {v0, v1, v2}, Landroid/widget/RigoPlayerProgress;->access$002(Landroid/widget/RigoPlayerProgress;J)J

    .line 62
    iget-object v0, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->current_position:J
    invoke-static {v0}, Landroid/widget/RigoPlayerProgress;->access$000(Landroid/widget/RigoPlayerProgress;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->duration:J
    invoke-static {v2}, Landroid/widget/RigoPlayerProgress;->access$200(Landroid/widget/RigoPlayerProgress;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    invoke-virtual {v0}, Landroid/widget/RigoPlayerProgress;->invalidate()V

    .line 66
    iget-object v0, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/RigoPlayerProgress;->access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/RigoPlayerProgress;->access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    :cond_1
    iget-object v0, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/RigoPlayerProgress;->access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->handler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/RigoPlayerProgress;->access$300(Landroid/widget/RigoPlayerProgress;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    # getter for: Landroid/widget/RigoPlayerProgress;->delaytime:I
    invoke-static {v2}, Landroid/widget/RigoPlayerProgress;->access$400(Landroid/widget/RigoPlayerProgress;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Landroid/widget/RigoPlayerProgress$1;->this$0:Landroid/widget/RigoPlayerProgress;

    invoke-virtual {v0}, Landroid/widget/RigoPlayerProgress;->invalidate()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
