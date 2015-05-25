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
    .line 148
    iput-object p1, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    .line 149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 150
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "isRtnResponse":Z
    const/4 v3, 0x0

    .line 157
    .local v3, "isScrtnResponse":Z
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 158
    .local v4, "tag":I
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    if-ne v4, v5, :cond_3

    .line 159
    const/4 v2, 0x1

    .line 163
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

    .line 165
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v5, :sswitch_data_0

    .line 920
    :cond_1
    :goto_1
    if-eqz v2, :cond_51

    .line 921
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    :goto_2
    # invokes: Lcom/yulong/android/telephony/CPSprintPriManager;->onRtnReseted()V
    invoke-static {v5}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$200(Lcom/yulong/android/telephony/CPSprintPriManager;)V

    .line 926
    :cond_2
    :goto_3
    return-void

    .line 160
    :cond_3
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    if-ne v4, v5, :cond_0

    .line 161
    const/4 v3, 0x1

    goto :goto_0

    .line 167
    :sswitch_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 168
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 169
    if-eqz v2, :cond_4

    .line 170
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

    .line 917
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v1

    .line 918
    .local v1, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 920
    if-eqz v2, :cond_50

    .line 921
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    goto :goto_2

    .line 171
    .end local v1    # "exc":Ljava/lang/RuntimeException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    if-eqz v3, :cond_1

    .line 172
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

    .line 920
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_4f

    .line 921
    iget-object v6, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    # invokes: Lcom/yulong/android/telephony/CPSprintPriManager;->onRtnReseted()V
    invoke-static {v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$200(Lcom/yulong/android/telephony/CPSprintPriManager;)V

    .line 920
    :cond_5
    :goto_4
    throw v5

    .line 177
    :sswitch_1
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 178
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 179
    if-eqz v2, :cond_6

    .line 180
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

    .line 181
    :cond_6
    if-eqz v3, :cond_1

    .line 182
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

    .line 187
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 188
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 189
    if-eqz v2, :cond_7

    .line 190
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

    .line 191
    :cond_7
    if-eqz v3, :cond_1

    .line 192
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

    .line 197
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 198
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 199
    if-eqz v2, :cond_8

    .line 200
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

    .line 201
    :cond_8
    if-eqz v3, :cond_1

    .line 202
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

    .line 207
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 208
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 209
    if-eqz v2, :cond_9

    .line 210
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

    .line 211
    :cond_9
    if-eqz v3, :cond_1

    .line 212
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

    .line 217
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 218
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 219
    if-eqz v2, :cond_a

    .line 220
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

    .line 221
    :cond_a
    if-eqz v3, :cond_1

    .line 222
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

    .line 227
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 228
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 229
    if-eqz v2, :cond_b

    .line 230
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

    .line 231
    :cond_b
    if-eqz v3, :cond_1

    .line 232
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

    .line 237
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 238
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 239
    if-eqz v2, :cond_c

    .line 240
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

    .line 241
    :cond_c
    if-eqz v3, :cond_1

    .line 242
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

    .line 247
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 248
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 249
    if-eqz v2, :cond_d

    .line 250
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

    .line 251
    :cond_d
    if-eqz v3, :cond_1

    .line 252
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

    .line 257
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 258
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 259
    if-eqz v2, :cond_e

    .line 260
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

    .line 261
    :cond_e
    if-eqz v3, :cond_1

    .line 262
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

    .line 267
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 268
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 269
    if-eqz v2, :cond_f

    .line 270
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

    .line 271
    :cond_f
    if-eqz v3, :cond_1

    .line 272
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

    .line 277
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 278
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 279
    if-eqz v2, :cond_10

    .line 280
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

    .line 281
    :cond_10
    if-eqz v3, :cond_1

    .line 282
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

    .line 287
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 288
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 289
    if-eqz v2, :cond_11

    .line 290
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

    .line 291
    :cond_11
    if-eqz v3, :cond_1

    .line 292
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

    .line 297
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 298
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 299
    if-eqz v2, :cond_12

    .line 300
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

    .line 301
    :cond_12
    if-eqz v3, :cond_1

    .line 302
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

    .line 307
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 308
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 309
    if-eqz v2, :cond_13

    .line 310
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

    .line 311
    :cond_13
    if-eqz v3, :cond_1

    .line 312
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

    .line 317
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 318
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 319
    if-eqz v2, :cond_14

    .line 320
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

    .line 321
    :cond_14
    if-eqz v3, :cond_1

    .line 322
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

    .line 327
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 328
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 329
    if-eqz v2, :cond_15

    .line 330
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

    .line 331
    :cond_15
    if-eqz v3, :cond_1

    .line 332
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

    .line 337
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 338
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 339
    if-eqz v2, :cond_16

    .line 340
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

    .line 341
    :cond_16
    if-eqz v3, :cond_1

    .line 342
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

    .line 347
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 348
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 349
    if-eqz v2, :cond_17

    .line 350
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

    .line 351
    :cond_17
    if-eqz v3, :cond_1

    .line 352
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

    .line 357
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 358
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 359
    if-eqz v2, :cond_18

    .line 360
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

    .line 361
    :cond_18
    if-eqz v3, :cond_1

    .line 362
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

    .line 367
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 368
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 369
    if-eqz v2, :cond_19

    .line 370
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

    .line 371
    :cond_19
    if-eqz v3, :cond_1

    .line 372
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

    .line 377
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 378
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 379
    if-eqz v2, :cond_1a

    .line 380
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

    .line 381
    :cond_1a
    if-eqz v3, :cond_1

    .line 382
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

    .line 387
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 388
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 389
    if-eqz v2, :cond_1b

    .line 390
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

    .line 391
    :cond_1b
    if-eqz v3, :cond_1

    .line 392
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

    .line 397
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 398
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 399
    if-eqz v2, :cond_1c

    .line 400
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

    .line 401
    :cond_1c
    if-eqz v3, :cond_1

    .line 402
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

    .line 407
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 408
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 409
    if-eqz v2, :cond_1d

    .line 410
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

    .line 411
    :cond_1d
    if-eqz v3, :cond_1

    .line 412
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

    .line 417
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 418
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 419
    if-eqz v2, :cond_1e

    .line 420
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

    .line 421
    :cond_1e
    if-eqz v3, :cond_1

    .line 422
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

    .line 427
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 428
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 429
    if-eqz v2, :cond_1f

    .line 430
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

    .line 431
    :cond_1f
    if-eqz v3, :cond_1

    .line 432
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

    .line 437
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 438
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 439
    if-eqz v2, :cond_20

    .line 440
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

    .line 441
    :cond_20
    if-eqz v3, :cond_1

    .line 442
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

    .line 447
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 448
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 449
    if-eqz v2, :cond_21

    .line 450
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

    .line 451
    :cond_21
    if-eqz v3, :cond_1

    .line 452
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

    .line 457
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 458
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 459
    if-eqz v2, :cond_22

    .line 460
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

    .line 461
    :cond_22
    if-eqz v3, :cond_1

    .line 462
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

    .line 467
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 468
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 469
    if-eqz v2, :cond_23

    .line 470
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

    .line 471
    :cond_23
    if-eqz v3, :cond_1

    .line 472
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

    .line 477
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 478
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 479
    if-eqz v2, :cond_24

    .line 480
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

    .line 481
    :cond_24
    if-eqz v3, :cond_1

    .line 482
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

    .line 487
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 488
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 489
    if-eqz v2, :cond_25

    .line 490
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

    .line 491
    :cond_25
    if-eqz v3, :cond_1

    .line 492
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

    .line 497
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 498
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 499
    if-eqz v2, :cond_26

    .line 500
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

    .line 501
    :cond_26
    if-eqz v3, :cond_1

    .line 502
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

    .line 507
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 508
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 509
    if-eqz v2, :cond_27

    .line 510
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

    .line 511
    :cond_27
    if-eqz v3, :cond_1

    .line 512
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

    .line 517
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 518
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 519
    if-eqz v2, :cond_28

    .line 520
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

    .line 521
    :cond_28
    if-eqz v3, :cond_1

    .line 522
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

    .line 527
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 528
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 529
    if-eqz v2, :cond_29

    .line 530
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

    .line 531
    :cond_29
    if-eqz v3, :cond_1

    .line 532
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

    .line 537
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 538
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 539
    if-eqz v2, :cond_2a

    .line 540
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

    .line 541
    :cond_2a
    if-eqz v3, :cond_1

    .line 542
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

    .line 547
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 548
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 549
    if-eqz v2, :cond_2b

    .line 550
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

    .line 551
    :cond_2b
    if-eqz v3, :cond_1

    .line 552
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

    .line 557
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 558
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 559
    if-eqz v2, :cond_2c

    .line 560
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

    .line 561
    :cond_2c
    if-eqz v3, :cond_1

    .line 562
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

    .line 567
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 568
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 569
    if-eqz v2, :cond_2d

    .line 570
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

    .line 571
    :cond_2d
    if-eqz v3, :cond_1

    .line 572
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

    .line 577
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 578
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 579
    if-eqz v2, :cond_2e

    .line 580
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

    .line 581
    :cond_2e
    if-eqz v3, :cond_1

    .line 582
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

    .line 587
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 588
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 589
    if-eqz v2, :cond_2f

    .line 590
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

    .line 591
    :cond_2f
    if-eqz v3, :cond_1

    .line 592
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

    .line 597
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 598
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 599
    if-eqz v2, :cond_30

    .line 600
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

    .line 601
    :cond_30
    if-eqz v3, :cond_1

    .line 602
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

    .line 607
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 608
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 609
    if-eqz v2, :cond_31

    .line 610
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

    .line 611
    :cond_31
    if-eqz v3, :cond_1

    .line 612
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

    .line 617
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 618
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 619
    if-eqz v2, :cond_32

    .line 620
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

    .line 621
    :cond_32
    if-eqz v3, :cond_1

    .line 622
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

    .line 627
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 628
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 629
    if-eqz v2, :cond_33

    .line 630
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

    .line 631
    :cond_33
    if-eqz v3, :cond_1

    .line 632
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

    .line 637
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 638
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 639
    if-eqz v2, :cond_34

    .line 640
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

    .line 641
    :cond_34
    if-eqz v3, :cond_1

    .line 642
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

    .line 647
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 648
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 649
    if-eqz v2, :cond_35

    .line 650
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

    .line 651
    :cond_35
    if-eqz v3, :cond_1

    .line 652
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

    .line 657
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 658
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 659
    if-eqz v2, :cond_36

    .line 660
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

    .line 661
    :cond_36
    if-eqz v3, :cond_1

    .line 662
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

    .line 667
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 668
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 669
    if-eqz v2, :cond_37

    .line 670
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

    .line 671
    :cond_37
    if-eqz v3, :cond_1

    .line 672
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

    .line 677
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 678
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 679
    if-eqz v2, :cond_38

    .line 680
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

    .line 681
    :cond_38
    if-eqz v3, :cond_1

    .line 682
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

    .line 687
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_34
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 688
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 689
    if-eqz v2, :cond_39

    .line 690
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

    .line 691
    :cond_39
    if-eqz v3, :cond_1

    .line 692
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

    .line 697
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 698
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 699
    if-eqz v2, :cond_3a

    .line 700
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

    .line 701
    :cond_3a
    if-eqz v3, :cond_1

    .line 702
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

    .line 707
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 708
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 709
    if-eqz v2, :cond_3b

    .line 710
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

    .line 711
    :cond_3b
    if-eqz v3, :cond_1

    .line 712
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

    .line 717
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 718
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 719
    if-eqz v2, :cond_3c

    .line 720
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

    .line 721
    :cond_3c
    if-eqz v3, :cond_1

    .line 722
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

    .line 727
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 728
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 729
    if-eqz v2, :cond_3d

    .line 730
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

    .line 731
    :cond_3d
    if-eqz v3, :cond_1

    .line 732
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

    .line 737
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 738
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 739
    if-eqz v2, :cond_3e

    .line 740
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

    .line 741
    :cond_3e
    if-eqz v3, :cond_1

    .line 742
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

    .line 747
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 748
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 749
    if-eqz v2, :cond_3f

    .line 750
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

    .line 751
    :cond_3f
    if-eqz v3, :cond_1

    .line 752
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

    .line 757
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 758
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 759
    if-eqz v2, :cond_40

    .line 760
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

    .line 761
    :cond_40
    if-eqz v3, :cond_1

    .line 762
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

    .line 767
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 768
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 769
    if-eqz v2, :cond_41

    .line 770
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

    .line 771
    :cond_41
    if-eqz v3, :cond_1

    .line 772
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

    .line 777
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 778
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 779
    if-eqz v2, :cond_42

    .line 780
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

    .line 781
    :cond_42
    if-eqz v3, :cond_1

    .line 782
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

    .line 787
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 788
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 789
    if-eqz v2, :cond_43

    .line 790
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

    .line 791
    :cond_43
    if-eqz v3, :cond_1

    .line 792
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

    .line 797
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 798
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 799
    if-eqz v2, :cond_44

    .line 800
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

    .line 801
    :cond_44
    if-eqz v3, :cond_1

    .line 802
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

    .line 807
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 808
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 809
    if-eqz v2, :cond_45

    .line 810
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

    .line 811
    :cond_45
    if-eqz v3, :cond_1

    .line 812
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

    .line 817
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 818
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 819
    if-eqz v2, :cond_46

    .line 820
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

    .line 821
    :cond_46
    if-eqz v3, :cond_1

    .line 822
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

    .line 827
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 828
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 829
    if-eqz v2, :cond_47

    .line 830
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

    .line 831
    :cond_47
    if-eqz v3, :cond_1

    .line 832
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

    .line 837
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 838
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 839
    if-eqz v2, :cond_48

    .line 840
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

    .line 841
    :cond_48
    if-eqz v3, :cond_1

    .line 842
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

    .line 847
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 848
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 849
    if-eqz v2, :cond_49

    .line 850
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

    .line 851
    :cond_49
    if-eqz v3, :cond_1

    .line 852
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

    .line 857
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 858
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 859
    if-eqz v2, :cond_4a

    .line 860
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

    .line 861
    :cond_4a
    if-eqz v3, :cond_1

    .line 862
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

    .line 867
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 868
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 869
    if-eqz v2, :cond_4b

    .line 870
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

    .line 871
    :cond_4b
    if-eqz v3, :cond_1

    .line 872
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

    .line 877
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 878
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 879
    if-eqz v2, :cond_4c

    .line 880
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

    .line 881
    :cond_4c
    if-eqz v3, :cond_1

    .line 882
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

    .line 887
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_48
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 888
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 889
    if-eqz v2, :cond_4d

    .line 890
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

    .line 891
    :cond_4d
    if-eqz v3, :cond_1

    .line 892
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

    .line 897
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 898
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

    .line 900
    if-eqz v2, :cond_4e

    .line 901
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 902
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 903
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 904
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    goto/16 :goto_1

    .line 906
    :cond_4e
    if-eqz v3, :cond_1

    .line 907
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 908
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 909
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    iget-object v5, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 910
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 922
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4f
    if-eqz v3, :cond_5

    .line 923
    iget-object v6, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    # invokes: Lcom/yulong/android/telephony/CPSprintPriManager;->onScrtnReseted()V
    invoke-static {v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$300(Lcom/yulong/android/telephony/CPSprintPriManager;)V

    goto/16 :goto_4

    .line 922
    .restart local v1    # "exc":Ljava/lang/RuntimeException;
    :cond_50
    if-eqz v3, :cond_2

    .line 923
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    .end local v1    # "exc":Ljava/lang/RuntimeException;
    :goto_5
    # invokes: Lcom/yulong/android/telephony/CPSprintPriManager;->onScrtnReseted()V
    invoke-static {v5}, Lcom/yulong/android/telephony/CPSprintPriManager;->access$300(Lcom/yulong/android/telephony/CPSprintPriManager;)V

    goto/16 :goto_3

    .line 922
    :cond_51
    if-eqz v3, :cond_2

    .line 923
    iget-object v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;->this$0:Lcom/yulong/android/telephony/CPSprintPriManager;

    goto :goto_5

    .line 165
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
