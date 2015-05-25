.class Landroid/widget/RigoAnalogClock$1;
.super Ljava/lang/Object;
.source "RigoAnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RigoAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RigoAnalogClock;


# direct methods
.method constructor <init>(Landroid/widget/RigoAnalogClock;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Landroid/widget/RigoAnalogClock$1;->this$0:Landroid/widget/RigoAnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Landroid/widget/RigoAnalogClock$1;->this$0:Landroid/widget/RigoAnalogClock;

    # getter for: Landroid/widget/RigoAnalogClock;->mCount:I
    invoke-static {v0}, Landroid/widget/RigoAnalogClock;->access$000(Landroid/widget/RigoAnalogClock;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RigoAnalogClock$1;->this$0:Landroid/widget/RigoAnalogClock;

    # getter for: Landroid/widget/RigoAnalogClock;->maxCount:I
    invoke-static {v1}, Landroid/widget/RigoAnalogClock;->access$100(Landroid/widget/RigoAnalogClock;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Landroid/widget/RigoAnalogClock$1;->this$0:Landroid/widget/RigoAnalogClock;

    const/4 v1, 0x0

    # setter for: Landroid/widget/RigoAnalogClock;->mCount:I
    invoke-static {v0, v1}, Landroid/widget/RigoAnalogClock;->access$002(Landroid/widget/RigoAnalogClock;I)I

    .line 296
    :cond_0
    iget-object v0, p0, Landroid/widget/RigoAnalogClock$1;->this$0:Landroid/widget/RigoAnalogClock;

    invoke-virtual {v0}, Landroid/widget/RigoAnalogClock;->postInvalidate()V

    .line 298
    iget-object v0, p0, Landroid/widget/RigoAnalogClock$1;->this$0:Landroid/widget/RigoAnalogClock;

    # getter for: Landroid/widget/RigoAnalogClock;->loopHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/RigoAnalogClock;->access$300(Landroid/widget/RigoAnalogClock;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RigoAnalogClock$1;->this$0:Landroid/widget/RigoAnalogClock;

    # getter for: Landroid/widget/RigoAnalogClock;->tickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/widget/RigoAnalogClock;->access$200(Landroid/widget/RigoAnalogClock;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    return-void
.end method
