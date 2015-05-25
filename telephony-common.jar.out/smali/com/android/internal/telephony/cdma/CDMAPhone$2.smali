.class Lcom/android/internal/telephony/cdma/CDMAPhone$2;
.super Landroid/content/BroadcastReceiver;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CDMAPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    const-string v4, "PHONEID"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 174
    .local v2, "phoneid":I
    const-string v4, "TYPE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 175
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTIVE_OR_DEACTIVE_CARD phoneid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mphoneid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$000(Lcom/android/internal/telephony/cdma/CDMAPhone;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v4, "PHONEID"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$100(Lcom/android/internal/telephony/cdma/CDMAPhone;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 178
    const-string v4, "TYPE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 180
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 181
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x21

    iput v4, v1, Landroid/os/Message;->what:I

    .line 182
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendMessage(Landroid/os/Message;)Z

    .line 183
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iput v7, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->IsActive:I

    .line 211
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "phoneid":I
    .end local v3    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 187
    .restart local v2    # "phoneid":I
    .restart local v3    # "type":I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 188
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v4, 0x22

    iput v4, v1, Landroid/os/Message;->what:I

    .line 189
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendMessage(Landroid/os/Message;)Z

    .line 190
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->IsActive:I

    goto :goto_0

    .line 194
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "phoneid":I
    .end local v3    # "type":I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->LOG_TAG:Ljava/lang/String;

    const-string v5, "android.intent.action.MASTER_CLEAR received!!!!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDefaultNetworkSetting(I)I

    move-result v0

    .line 200
    .local v0, "defaultNetworkSetting":I
    if-eqz v0, :cond_3

    .line 201
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v6, 0x33

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->setDefaultNetworkType(ILandroid/os/Message;)V

    .line 207
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->removeAllInvalidSid(Landroid/os/Message;)V

    .line 208
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xa2

    const-string v6, "0"

    invoke-interface {v4, v5, v6, v8, v8}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->LOG_TAG:Ljava/lang/String;

    const-string v5, " defaultNetworkSetting == 0, Invalid value, do not recovery default network setting!!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
