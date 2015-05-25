.class Lcom/android/internal/telephony/InboundSmsHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1251
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTimeoutReceiver action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1253
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT current time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1255
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1256
    .local v0, "timeoutMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(Landroid/os/Message;)V

    .line 1263
    .end local v0    # "timeoutMsg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1258
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT current time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1261
    .restart local v0    # "timeoutMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
