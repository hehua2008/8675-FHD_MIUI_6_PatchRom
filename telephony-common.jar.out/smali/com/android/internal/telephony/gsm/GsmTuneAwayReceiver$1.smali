.class Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;
.super Landroid/os/Handler;
.source "GsmTuneAwayReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 158
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    const-string v5, "EVENT_GET_PREFERRED_NETWORK_TYPE SELF"

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V

    .line 161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 162
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 163
    .local v3, "toSyncSub":I
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 164
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v4, v4, v7

    # setter for: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreviousType:I
    invoke-static {v5, v4}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$102(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;I)I

    .line 165
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current dds network preferred mode: type= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreviousType:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$100(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V

    .line 168
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->getNetworkTypeFromSP(I)I
    invoke-static {v4, v3}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$200(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;I)I

    move-result v1

    .line 169
    .local v1, "networktypeSP":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toSyncSub is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networktypeSP is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreviousType:I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$100(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;)I

    move-result v4

    if-eq v1, v4, :cond_0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 172
    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->getPhone(I)Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$300(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 174
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    const-string v5, "send request is sync to SP"

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "networktypeSP":I
    .end local v3    # "toSyncSub":I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 181
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 182
    .local v2, "sub":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_PREFERRED_NETWORK_TYPE checkSub is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V

    .line 183
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 184
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v4, v4, v7

    # setter for: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreviousType:I
    invoke-static {v5, v4}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$102(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;I)I

    .line 185
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current other sub network preferred mode: type= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreviousType:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$100(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreviousType:I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$100(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;)I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 187
    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->getPhone(I)Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$300(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 190
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    const-string v5, "send request to set to GSM only"

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V

    .line 192
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->mPreviousType:I
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$100(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;)I

    move-result v5

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->setPreNetworkType(II)V
    invoke-static {v4, v5, v2}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$400(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;II)V

    goto/16 :goto_0

    .line 195
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get preferred network type, exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "sub":I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 201
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 202
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SET_PREFERRED_NETWORK_TYPE failed:ar.exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver$1;->this$0:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    const-string v5, "EVENT_SET_PREFERRED_NETWORK_TYPE success"

    # invokes: Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;->access$000(Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
