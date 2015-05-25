.class abstract Landroid/view/ViewRootImpl$AsyncInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AsyncInputStage"
.end annotation


# static fields
.field protected static final DEFER:I = 0x3


# instance fields
.field private mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueueLength:I

.field private mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mTraceCounter:Ljava/lang/String;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    .prologue
    .line 3500
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 3501
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 3502
    iput-object p3, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    .line 3503
    return-void
.end method

.method private dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "prev"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3598
    if-nez p2, :cond_1

    .line 3599
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3603
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-ne v0, p1, :cond_0

    .line 3604
    iput-object p2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3606
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3608
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 3609
    const-wide/16 v0, 0x4

    iget-object v2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    iget v3, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3610
    return-void

    .line 3601
    :cond_1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0
.end method

.method private enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3585
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v0, :cond_0

    .line 3586
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3587
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3593
    :goto_0
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 3594
    const-wide/16 v0, 0x4

    iget-object v2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    iget v3, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3595
    return-void

    .line 3589
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3590
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0
.end method


# virtual methods
.method protected apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "result"    # I

    .prologue
    .line 3577
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 3578
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3582
    :goto_0
    return-void

    .line 3580
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    goto :goto_0
.end method

.method protected defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3511
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 3512
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3513
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 3614
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3615
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3616
    const-string v0, ": mQueueLength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3617
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3619
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3620
    return-void
.end method

.method protected forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3518
    iget v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 3521
    iget-object v1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3522
    .local v1, "curr":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v1, :cond_1

    .line 3523
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3573
    :cond_0
    :goto_0
    return-void

    .line 3530
    :cond_1
    iget-object v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v2

    .line 3531
    .local v2, "deviceId":I
    const/4 v4, 0x0

    .line 3532
    .local v4, "prev":Landroid/view/ViewRootImpl$QueuedInputEvent;
    const/4 v0, 0x0

    .line 3533
    .local v0, "blocked":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 3534
    if-nez v0, :cond_2

    iget-object v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 3535
    const/4 v0, 0x1

    .line 3537
    :cond_2
    move-object v4, v1

    .line 3538
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_1

    .line 3544
    :cond_3
    if-eqz v0, :cond_4

    .line 3545
    if-nez v1, :cond_0

    .line 3546
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 3552
    :cond_4
    if-eqz v1, :cond_5

    .line 3553
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3554
    invoke-direct {p0, p1, v4}, Landroid/view/ViewRootImpl$AsyncInputStage;->dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3556
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3559
    :goto_2
    if-eqz v1, :cond_0

    .line 3560
    iget-object v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v5

    if-ne v2, v5, :cond_6

    .line 3561
    iget v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 3564
    iget-object v3, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3565
    .local v3, "next":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {p0, v1, v4}, Landroid/view/ViewRootImpl$AsyncInputStage;->dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3566
    invoke-super {p0, v1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3567
    move-object v1, v3

    .line 3568
    goto :goto_2

    .line 3569
    .end local v3    # "next":Landroid/view/ViewRootImpl$QueuedInputEvent;
    :cond_6
    move-object v4, v1

    .line 3570
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_2
.end method
