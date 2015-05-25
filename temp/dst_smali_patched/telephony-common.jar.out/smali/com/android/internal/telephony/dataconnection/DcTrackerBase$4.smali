.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;
.super Landroid/content/BroadcastReceiver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DoubleSystemReceiver onReceive: action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    const-string v7, "com.redbend.event.DMA_MSG_MNG_VM_SED_INTENT_FORWARD"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.redbend.event.DMA_MSG_MNG_VM_PPD_INTENT_FORWARD"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const/4 v1, 0x0

    .local v1, "data":[B
    const/4 v6, 0x0

    .local v6, "type":[B
    const-string v7, "TYPE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v7, "TYPE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    const-string v8, "COMM_PHONE_FRAMEWORK_DATA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .end local v1    # "data":[B
    .end local v6    # "type":[B
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "data":[B
    .restart local v6    # "type":[B
    :cond_3
    const-string v7, "DMA_VAR_INTENT_DATA"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v7, "DMA_VAR_INTENT_DATA"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .local v5, "str_data":Ljava/lang/String;
    const-string v4, "00"

    .local v4, "str":Ljava/lang/String;
    const-string v7, "com.redbend.event.DMA_MSG_MNG_VM_SED_INTENT_FORWARD"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The msg from PPD is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xc

    if-le v7, v8, :cond_2

    const-string v7, "data_status_"

    const/4 v8, 0x0

    const/16 v9, 0xc

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xc

    const/16 v8, 0xe

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "phoneId":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "msgId":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    if-ne v7, v3, :cond_4

    if-nez v2, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PhoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:set mCurrentSystemData:true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCurrentSystemData:Z

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDsUser(I)V

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v9, 0x42003

    const-string v10, "dataEnabled"

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_2
    const/4 v7, 0x2

    if-ne v7, v2, :cond_2

    const/4 v7, 0x1

    if-ne v7, v3, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v8, "PhoneId[1] :dataIsDisconnected"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisconnected_PhoneOne:Z

    sget-boolean v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisconnected_PhoneTwo:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDsUser(I)V

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v9, 0x42003

    const-string v10, "dataEnabled"

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    const/4 v7, 0x2

    if-ne v7, v3, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v8, "PhoneId[2]:dataIsDisconnected"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisconnected_PhoneTwo:Z

    sget-boolean v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataDisconnected_PhoneOne:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDsUser(I)V

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v9, 0x42003

    const-string v10, "dataEnabled"

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v2    # "msgId":I
    .end local v3    # "phoneId":I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The msg from SED is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v2    # "msgId":I
    .restart local v3    # "phoneId":I
    :cond_7
    const/4 v7, 0x1

    if-ne v7, v2, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PhoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:cleanUpAllConnections"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/16 v9, 0x6d

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCurrentSystemData:Z

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x3

    if-ne v7, v2, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDsUser: PhoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDsUser(I)V

    goto/16 :goto_2

    :cond_9
    const/4 v7, 0x4

    if-ne v7, v2, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PhoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:VOICE_CALL_STARTED"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCallStartFlag:Z

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v9, 0x42007

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_a
    const/4 v7, 0x5

    if-ne v7, v2, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PhoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:VOICE_CALL_ENDED"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCallEndFlag:Z

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v9, 0x42008

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
