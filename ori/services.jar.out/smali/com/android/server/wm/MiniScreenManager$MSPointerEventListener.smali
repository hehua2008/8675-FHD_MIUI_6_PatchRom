.class final Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;
.super Ljava/lang/Object;
.source "MiniScreenManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiniScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MSPointerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiniScreenManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/MiniScreenManager;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/MiniScreenManager;Lcom/android/server/wm/MiniScreenManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p2, "x1"    # Lcom/android/server/wm/MiniScreenManager$1;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;-><init>(Lcom/android/server/wm/MiniScreenManager;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 164
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 165
    .local v1, "idx":I
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$100(Lcom/android/server/wm/MiniScreenManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v2

    .line 168
    .local v2, "isKeyguardShowing":Z
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isKeyguardShowing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; event.mask: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; event.getX(0): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; event.getX(1): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-nez v2, :cond_0

    .line 176
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 178
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    # setter for: Lcom/android/server/wm/MiniScreenManager;->mDownMotionX:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$302(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 179
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    # setter for: Lcom/android/server/wm/MiniScreenManager;->mDownMotionY:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$402(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 180
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mScreenWidth:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$500(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mDownMotionX:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$300(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    sub-int v4, v9, v10

    .line 183
    .local v4, "mRightDownMargin":I
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mDownMotionX:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$300(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mDownMargin:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    if-gt v9, v10, :cond_1

    .line 184
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$702(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 192
    :goto_1
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mDownMotionX: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mDownMotionX:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$300(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; startPointerMargin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mDownMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-gt v4, v9, :cond_2

    .line 186
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$702(Lcom/android/server/wm/MiniScreenManager;I)I

    goto :goto_1

    .line 188
    :cond_2
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, -0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$702(Lcom/android/server/wm/MiniScreenManager;I)I

    goto :goto_1

    .line 196
    .end local v4    # "mRightDownMargin":I
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 198
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    # setter for: Lcom/android/server/wm/MiniScreenManager;->mMultiDownX:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$802(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 199
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mScreenWidth:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$500(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMultiDownX:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$800(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    sub-int v5, v9, v10

    .line 202
    .local v5, "mRightMultiDownMargin":I
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMultiDownX:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$800(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mDownMargin:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    if-gt v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-nez v9, :cond_3

    .line 203
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->isMultiDown:Z
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$902(Lcom/android/server/wm/MiniScreenManager;Z)Z

    .line 204
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    long-to-int v10, v10

    # setter for: Lcom/android/server/wm/MiniScreenManager;->mPointerDownTime:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1002(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 205
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$702(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 216
    :goto_2
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mMultiDownX: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMultiDownX:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$800(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; startPointerMargin:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    :cond_3
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mDownMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-gt v5, v9, :cond_4

    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 207
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->isMultiDown:Z
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$902(Lcom/android/server/wm/MiniScreenManager;Z)Z

    .line 208
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    long-to-int v10, v10

    # setter for: Lcom/android/server/wm/MiniScreenManager;->mPointerDownTime:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1002(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 209
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$702(Lcom/android/server/wm/MiniScreenManager;I)I

    goto :goto_2

    .line 211
    :cond_4
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/wm/MiniScreenManager;->isMultiDown:Z
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$902(Lcom/android/server/wm/MiniScreenManager;Z)Z

    .line 212
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, -0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$702(Lcom/android/server/wm/MiniScreenManager;I)I

    goto :goto_2

    .line 220
    .end local v5    # "mRightMultiDownMargin":I
    :pswitch_3
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 222
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mDownMotionX:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$300(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 223
    .local v7, "scrollDownX":I
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMultiDownX:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$800(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 225
    .local v8, "scrollPointerDownX":I
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->isMultiDown:Z
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$900(Lcom/android/server/wm/MiniScreenManager;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMinDeltaValue:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1100(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-ge v7, v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMinDeltaValue:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1100(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-lt v8, v9, :cond_7

    .line 228
    :cond_5
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->ismovedToRegion:Z
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1202(Lcom/android/server/wm/MiniScreenManager;Z)Z

    .line 234
    :cond_6
    :goto_3
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scrollDownX: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; scrollPointerDownX: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; startPointerMargin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; mMinDeltaValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMinDeltaValue:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$1100(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; ismovedToRegion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->ismovedToRegion:Z
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$1200(Lcom/android/server/wm/MiniScreenManager;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    :cond_7
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mMinDeltaValue:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1100(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-lt v7, v9, :cond_6

    .line 230
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->ismovedToRegion:Z
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1202(Lcom/android/server/wm/MiniScreenManager;Z)Z

    goto :goto_3

    .line 243
    .end local v7    # "scrollDownX":I
    .end local v8    # "scrollPointerDownX":I
    :pswitch_4
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-ltz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->ismovedToRegion:Z
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1200(Lcom/android/server/wm/MiniScreenManager;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 245
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v3, v9

    .line 246
    .local v3, "mMultiUpX":I
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 248
    .local v6, "mUpMotionX":I
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mScreenWidth:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$500(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    sub-int/2addr v10, v6

    # setter for: Lcom/android/server/wm/MiniScreenManager;->mUpRightMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1302(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 251
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->isMultiDown:Z
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$900(Lcom/android/server/wm/MiniScreenManager;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 252
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mScreenWidth:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$500(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    sub-int/2addr v10, v3

    # setter for: Lcom/android/server/wm/MiniScreenManager;->mUpMultiRightMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1402(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 253
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mPointerDownTime:I
    invoke-static {v12}, Lcom/android/server/wm/MiniScreenManager;->access$1000(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v10, v12

    long-to-int v10, v10

    # setter for: Lcom/android/server/wm/MiniScreenManager;->getActionTimes:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1502(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 255
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpMultiRightMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1400(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpMargin:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$1600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    if-gt v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpRightMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1300(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpMargin:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$1600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    if-gt v9, v10, :cond_9

    .line 256
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1702(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 275
    :goto_4
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUpMargin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpMargin:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$1600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; isMultiDown: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->isMultiDown:Z
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$900(Lcom/android/server/wm/MiniScreenManager;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; mUpMultiRightMargin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpMultiRightMargin:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$1400(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; mUpRightMargin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpRightMargin:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$1300(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; endPointerMargin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$1700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; getActionTimes: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->getActionTimes:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$1500(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->getActionTimes:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1500(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mTimeOut:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$1800(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    if-gt v9, v10, :cond_10

    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->ismovedToRegion:Z
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1200(Lcom/android/server/wm/MiniScreenManager;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 286
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 287
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1900(Lcom/android/server/wm/MiniScreenManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1900(Lcom/android/server/wm/MiniScreenManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v10, "send message for show RightMiniScreen"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_8
    :goto_5
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/wm/MiniScreenManager;->isMultiDown:Z
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$902(Lcom/android/server/wm/MiniScreenManager;Z)Z

    .line 314
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/wm/MiniScreenManager;->ismovedToRegion:Z
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1202(Lcom/android/server/wm/MiniScreenManager;Z)Z

    .line 315
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/wm/MiniScreenManager;->getActionTimes:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1502(Lcom/android/server/wm/MiniScreenManager;I)I

    goto/16 :goto_0

    .line 257
    :cond_9
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-gt v3, v9, :cond_a

    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-gt v6, v9, :cond_a

    .line 258
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1702(Lcom/android/server/wm/MiniScreenManager;I)I

    goto/16 :goto_4

    .line 260
    :cond_a
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, -0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1702(Lcom/android/server/wm/MiniScreenManager;I)I

    goto/16 :goto_4

    .line 263
    :cond_b
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v10, v10

    # setter for: Lcom/android/server/wm/MiniScreenManager;->getActionTimes:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1502(Lcom/android/server/wm/MiniScreenManager;I)I

    .line 265
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpRightMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1300(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpMargin:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$1600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    if-gt v9, v10, :cond_c

    .line 266
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1702(Lcom/android/server/wm/MiniScreenManager;I)I

    goto/16 :goto_4

    .line 267
    :cond_c
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mUpMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1600(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-gt v6, v9, :cond_d

    .line 268
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1702(Lcom/android/server/wm/MiniScreenManager;I)I

    goto/16 :goto_4

    .line 270
    :cond_d
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    const/4 v10, -0x1

    # setter for: Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I
    invoke-static {v9, v10}, Lcom/android/server/wm/MiniScreenManager;->access$1702(Lcom/android/server/wm/MiniScreenManager;I)I

    goto/16 :goto_4

    .line 293
    :cond_e
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1700(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    if-nez v9, :cond_f

    .line 294
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1900(Lcom/android/server/wm/MiniScreenManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1900(Lcom/android/server/wm/MiniScreenManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 298
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v10, "send message for show LeftMiniScreen"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 301
    :cond_f
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Please check conditions of down and up points on the same side."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 304
    :cond_10
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->getActionTimes:I
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1500(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mTimeOut:I
    invoke-static {v10}, Lcom/android/server/wm/MiniScreenManager;->access$1800(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v10

    if-le v9, v10, :cond_11

    .line 305
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The action times is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->getActionTimes:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$1500(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " longer than "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->mTimeOut:I
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$1800(Lcom/android/server/wm/MiniScreenManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 307
    :cond_11
    iget-object v9, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->ismovedToRegion:Z
    invoke-static {v9}, Lcom/android/server/wm/MiniScreenManager;->access$1200(Lcom/android/server/wm/MiniScreenManager;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 308
    # getter for: Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/MiniScreenManager;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The move distance doesn\'t to region: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;->this$0:Lcom/android/server/wm/MiniScreenManager;

    # getter for: Lcom/android/server/wm/MiniScreenManager;->ismovedToRegion:Z
    invoke-static {v11}, Lcom/android/server/wm/MiniScreenManager;->access$1200(Lcom/android/server/wm/MiniScreenManager;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
