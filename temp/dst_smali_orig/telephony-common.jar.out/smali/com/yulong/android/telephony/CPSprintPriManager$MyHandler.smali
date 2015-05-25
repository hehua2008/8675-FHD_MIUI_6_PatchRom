.class Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;
.super Landroid/os/Handler;
.source "CPSprintPriManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/CPSprintPriManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/CPSprintPriManager;


# direct methods
.method constructor <init>(Lcom/yulong/android/telephony/CPSprintPriManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .local v2, "isRtnResponse":Z
    const/4 v3, 0x0

    .local v3, "isScrtnResponse":Z
    iget v4, p1, Landroid/os/Message;->arg1:I

    .local v4, "tag":I
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    :cond_0
    :goto_0
    const-string v5, "CPSprintPriManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CPSprintPriManager handleMessage what:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_51

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    :goto_2
    # invokes: Lcom/yulong/android/telephony/CPSprintPriManager;->onRtnReseted()V
    invoke-static {v5}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$200(Lcom/yulong/android/telephony/CPSprintPriManager;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v1

    .local v1, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_50

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    goto :goto_2

    .end local v1    # "exc":Ljava/lang/RuntimeException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    if-eqz v3, :cond_1

    :try_start_3
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_4f

    iget-object v6, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    # invokes: Lcom/yulong/android/telephony/CPSprintPriManager;->onRtnReseted()V
    invoke-static {v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$200(Lcom/yulong/android/telephony/CPSprintPriManager;)V

    :cond_5
    :goto_4
    throw v5

    :sswitch_1
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_8

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_9

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_a

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_b

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_c

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_d

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_e

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_f

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_10

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_11

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_12

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_13

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_13
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_14

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_14
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_15

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_15
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_16

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_16
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_17

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_17
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_18

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_18
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_19

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_19
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1a

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_1a
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1b

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_1b
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1c

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_1c
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1d

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_1d
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1e

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_1e
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1f

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_1f
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_20

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_20
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_21

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_21
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_22

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_22
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_23

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_23
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_24

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_24
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_25

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_25
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_26

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_26
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_27

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_27
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_28

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_28
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_29

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_29
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_2a

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_2a
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_2b

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_2b
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_2c

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_2c
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_2d

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_2d
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_2e

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_2e
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_2f

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_2f
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_30

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_30
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_31

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_31
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_32

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_32
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_33

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_33
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_34

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_34
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_35

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_35
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_36

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_36
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_37

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_37
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_38

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_38
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_34
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_39

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_39
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_3a

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_3a
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_3b

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_3b
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_3c

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_3c
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_3d

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_3d
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_3e

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_3e
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_3f

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_3f
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_40

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_40
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_41

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_41
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_42

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_42
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_43

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_43
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_44

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_44
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_45

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_45
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_46

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_46
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_47

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_47
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_48

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_48
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_49

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_49
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_4a

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_4a
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_4b

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_4b
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_4c

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_4c
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_48
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_4d

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_4d
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v5, "CPSprintPriManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NV_MEID_RELATED_PARAM ar.exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4e

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    goto/16 :goto_1

    :cond_4e
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4f
    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    # invokes: Lcom/yulong/android/telephony/CPSprintPriManager;->onScrtnReseted()V
    invoke-static {v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$300(Lcom/yulong/android/telephony/CPSprintPriManager;)V

    goto/16 :goto_4

    .restart local v1    # "exc":Ljava/lang/RuntimeException;
    :cond_50
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    .end local v1    # "exc":Ljava/lang/RuntimeException;
    :goto_5
    # invokes: Lcom/yulong/android/telephony/CPSprintPriManager;->onScrtnReseted()V
    invoke-static {v5}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$300(Lcom/yulong/android/telephony/CPSprintPriManager;)V

    goto/16 :goto_3

    :cond_51
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_42
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_4
        0x24 -> :sswitch_5
        0x25 -> :sswitch_c
        0x28 -> :sswitch_6
        0x2a -> :sswitch_7
        0x43 -> :sswitch_19
        0x55 -> :sswitch_8
        0xb0 -> :sswitch_d
        0xb1 -> :sswitch_e
        0xb2 -> :sswitch_9
        0xb3 -> :sswitch_16
        0xdb -> :sswitch_a
        0xf0 -> :sswitch_1c
        0xf1 -> :sswitch_1d
        0x103 -> :sswitch_13
        0x11d -> :sswitch_11
        0x129 -> :sswitch_1a
        0x12a -> :sswitch_1f
        0x12c -> :sswitch_28
        0x130 -> :sswitch_b
        0x190 -> :sswitch_40
        0x195 -> :sswitch_17
        0x199 -> :sswitch_41
        0x1a7 -> :sswitch_2e
        0x1a8 -> :sswitch_2f
        0x1ad -> :sswitch_1e
        0x1b9 -> :sswitch_14
        0x1ba -> :sswitch_15
        0x1c4 -> :sswitch_3f
        0x1cb -> :sswitch_33
        0x1cc -> :sswitch_38
        0x1cd -> :sswitch_34
        0x1ce -> :sswitch_3a
        0x1d0 -> :sswitch_32
        0x1d1 -> :sswitch_3c
        0x1ef -> :sswitch_2c
        0x21e -> :sswitch_35
        0x222 -> :sswitch_36
        0x2c3 -> :sswitch_37
        0x2ca -> :sswitch_3b
        0x38a -> :sswitch_2a
        0x38e -> :sswitch_29
        0x3a2 -> :sswitch_20
        0x3fb -> :sswitch_27
        0x4a8 -> :sswitch_31
        0x4a9 -> :sswitch_2d
        0x4aa -> :sswitch_30
        0x4b6 -> :sswitch_24
        0x4b7 -> :sswitch_25
        0x4b8 -> :sswitch_26
        0x768 -> :sswitch_43
        0x797 -> :sswitch_49
        0xb04 -> :sswitch_21
        0xb05 -> :sswitch_22
        0xb89 -> :sswitch_2b
        0xe32 -> :sswitch_1b
        0xe33 -> :sswitch_18
        0x1006 -> :sswitch_12
        0x112c -> :sswitch_39
        0x1213 -> :sswitch_48
        0x1257 -> :sswitch_3d
        0x1260 -> :sswitch_3e
        0x1364 -> :sswitch_44
        0x168d -> :sswitch_23
        0x10092 -> :sswitch_45
        0x1011b -> :sswitch_46
        0x101a1 -> :sswitch_47
    .end sparse-switch
.end method
