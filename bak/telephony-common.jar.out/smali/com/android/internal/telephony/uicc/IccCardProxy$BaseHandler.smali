.class Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;
.super Landroid/os/Handler;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 180
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 181
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IccCardProxyHandler handleMessage what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$000(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    .line 187
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 222
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message with number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 190
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # getter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$100(Lcom/android/internal/telephony/uicc/IccCardProxy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 191
    :try_start_0
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: Error in get pin&puk valid count with exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    .line 194
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v5, 0x0

    iput-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 195
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinPukCount:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$302(Lcom/android/internal/telephony/uicc/IccCardProxy;I)I

    .line 203
    :goto_1
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 204
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # getter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$100(Lcom/android/internal/telephony/uicc/IccCardProxy;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 205
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 197
    :cond_0
    :try_start_1
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 198
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 199
    .local v2, "ints":[I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const/4 v5, 0x0

    aget v5, v2, v5

    # setter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinPukCount:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$302(Lcom/android/internal/telephony/uicc/IccCardProxy;I)I

    .line 200
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: EVENT_PINPUK_COUNT_GET_DONE without Exception mPinPukCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # getter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinPukCount:I
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$300(Lcom/android/internal/telephony/uicc/IccCardProxy;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 213
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "ints":[I
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 214
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$BaseHandler;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in SIM access with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    .line 217
    :cond_1
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 219
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
