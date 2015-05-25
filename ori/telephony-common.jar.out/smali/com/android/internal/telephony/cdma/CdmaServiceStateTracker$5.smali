.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;
.super Lcom/yulong/android/telephony/CPPhoneStateListener;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPPhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualCallStateChanged(ILjava/lang/String;I)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2557
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDualCallStateChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2558
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 2559
    .local v1, "slotId":I
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getCardTypeBySlotId(I)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 2560
    .local v0, "hasCard":Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v4

    if-eq p3, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCallStateOtherPhone:I

    if-eq p1, v4, :cond_1

    .line 2561
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeFromSys()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 2563
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCallStateOtherPhone:I

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2565
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->broadcastOfflineMode(ZI)V

    .line 2570
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput p1, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCallStateOtherPhone:I

    .line 2572
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 2573
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->recordPhoneStatus()V
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    .line 2574
    return-void

    .end local v0    # "hasCard":Z
    :cond_2
    move v0, v3

    .line 2559
    goto :goto_0

    .line 2566
    .restart local v0    # "hasCard":Z
    :cond_3
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCallStateOtherPhone:I

    if-eqz v2, :cond_0

    .line 2567
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->broadcastOfflineMode(ZI)V

    goto :goto_1
.end method

.method public onDualDataActivity(II)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualDataActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2598
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v0

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataActivityStateOtherPhone:I

    if-eq v0, p1, :cond_1

    .line 2599
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2600
    const-string v0, "yulong.data.inorout"

    const v1, 0xffff

    rem-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput p1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataActivityStateOtherPhone:I

    .line 2604
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 2606
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->recordPhoneStatus()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    .line 2607
    return-void
.end method

.method public onDualDataConnectionStateChanged(III)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "netinfo"    # I
    .param p3, "phoneId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 2578
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualDataState(I)I

    move-result v0

    .line 2580
    .local v0, "phoneOneState":I
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualDataState(I)I

    move-result v1

    .line 2582
    .local v1, "phoneTwoState":I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDualDataConnectionStateChanged: phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phoneOneState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phoneTwoState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2584
    if-eq v0, v5, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v6, :cond_1

    .line 2586
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2587
    const-string v2, "yulong.data.inorout"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget v3, v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataActivityStateOtherPhone:I

    const v4, 0xffff

    rem-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataActivityStateOtherPhone:I

    .line 2592
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->recordPhoneStatus()V
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    .line 2594
    return-void
.end method
