.class Lcom/yulong/android/telephony/CPPhoneStateListener$1;
.super Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;
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
    .line 273
    iput-object p1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualCallForwardingIndicatorChanged(ZI)V
    .locals 4
    .param p1, "cfi"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v1, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, v2, v0, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 291
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDualCallStateChanged(ILjava/lang/String;I)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-static {v0, v1, p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    return-void
.end method

.method public onDualCellInfoChanged(Ljava/util/List;I)V
    .locals 3
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 317
    return-void
.end method

.method public onDualCellLocationChanged(Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "phoneId"    # I

    .prologue
    .line 294
    invoke-static {p1, p2}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 295
    .local v0, "location":Landroid/telephony/CellLocation;
    iget-object v1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v1, v1, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 296
    return-void
.end method

.method public onDualDataActivity(II)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 309
    return-void
.end method

.method public onDualDataConnectionStateChanged(III)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 305
    return-void
.end method

.method public onDualMessageWaitingIndicatorChanged(ZI)V
    .locals 4
    .param p1, "mwi"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v1, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, v2, v0, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDualNotifyFactoryNumberDone(IILjava/lang/String;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "operate"    # I
    .param p3, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x800

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 323
    return-void
.end method

.method public onDualNotifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    .locals 2
    .param p1, "mSlotCardInfos"    # [Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 329
    return-void
.end method

.method public onDualServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .param p2, "phoneId"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    return-void
.end method

.method public onDualSignalStrengthChanged(II)V
    .locals 3
    .param p1, "asu"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 281
    return-void
.end method

.method public onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneId"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 312
    return-void
.end method
