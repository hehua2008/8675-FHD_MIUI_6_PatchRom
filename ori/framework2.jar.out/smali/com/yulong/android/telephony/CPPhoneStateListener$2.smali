.class Lcom/yulong/android/telephony/CPPhoneStateListener$2;
.super Landroid/os/Handler;
.source "CPPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/CPPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;


# direct methods
.method constructor <init>(Lcom/yulong/android/telephony/CPPhoneStateListener;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    const-string v2, "CP_COMM: CPPhoneStateListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "what=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 337
    :sswitch_0
    iget-object v1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0

    .line 340
    :sswitch_1
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualSignalStrengthChanged(II)V

    goto :goto_0

    .line 343
    :sswitch_2
    iget-object v2, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    :goto_1
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v0, v1}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualMessageWaitingIndicatorChanged(ZI)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 346
    :sswitch_3
    iget-object v2, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v0, v1}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualCallForwardingIndicatorChanged(ZI)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 349
    :sswitch_4
    iget-object v1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/CellLocation;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualCellLocationChanged(Landroid/telephony/CellLocation;I)V

    goto :goto_0

    .line 352
    :sswitch_5
    iget-object v1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V

    goto :goto_0

    .line 355
    :sswitch_6
    iget-object v1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualDataConnectionStateChanged(III)V

    .line 356
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualDataConnectionStateChanged(II)V

    goto :goto_0

    .line 359
    :sswitch_7
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualDataActivity(II)V

    goto :goto_0

    .line 362
    :sswitch_8
    iget-object v1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SignalStrength;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_0

    .line 365
    :sswitch_9
    iget-object v1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualCellInfoChanged(Ljava/util/List;I)V

    goto/16 :goto_0

    .line 368
    :sswitch_a
    iget-object v1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualNotifyFactoryNumberDone(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :sswitch_b
    iget-object v1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$2;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    check-cast v0, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {v1, v0}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualNotifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V

    goto/16 :goto_0

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x400 -> :sswitch_9
        0x800 -> :sswitch_a
        0x1000 -> :sswitch_b
    .end sparse-switch
.end method
