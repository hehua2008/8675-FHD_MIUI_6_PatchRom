.class Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
.super Landroid/os/Handler;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;


# direct methods
.method public constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    .line 498
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 499
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 505
    const/4 v11, 0x0

    .line 506
    .local v11, "cdmaRadioPower":Z
    const/16 v17, 0x0

    .line 507
    .local v17, "gsmRadioPower":Z
    const/16 v18, -0x1

    .line 508
    .local v18, "iResult":I
    const/16 v23, -0x1

    .line 509
    .local v23, "slotId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: sam enter PhoneModeService handleMessage: what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", regNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 513
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x16

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x21

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x47

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x51

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x53

    if-ne v2, v3, :cond_2

    .line 540
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1341
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 529
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    .line 532
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x34

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x35

    if-eq v2, v3, :cond_0

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: don\'t deal with this message."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 544
    .local v8, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_OPEN_CDMA_MODEM_POWER received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 547
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: Open cdma modem failed."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 556
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[Z

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x8

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x9

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unlockPinFor3GCard()V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 568
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 569
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CLOSE_CDMA_MODEM_POWER received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 572
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: Close cdma modem failed."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "RILError"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 577
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x9

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unlockPinFor3GCard()V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 585
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 586
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_OPEN_GSM_MODEM_POWER received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 588
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: Open gsm modem failed."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 597
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[Z

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x8

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x9

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unlockPinFor3GCard()V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 609
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 610
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CLOSE_GSM_MODEM_POWER received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 611
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: Close gsm modem failed."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "RILError"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 620
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x8

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unlockPinFor3GCard()V

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 628
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_FINISH_SWITCH_SLOT_MODE received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 635
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CDMA_RADIO_ON received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto/16 :goto_1

    .line 643
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CDMA_RADIO_OFF_OR_NOT_AVAILABLE received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 644
    if-nez v11, :cond_8

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 650
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x8

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto/16 :goto_1

    .line 656
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GSM_RADIO_ON received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto/16 :goto_1

    .line 662
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GSM_RADIO_OFF_OR_NOT_AVAILABLE received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 663
    if-nez v17, :cond_9

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 669
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/16 v3, 0x9

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    move/from16 v0, v17

    if-eq v2, v0, :cond_1

    goto/16 :goto_1

    .line 679
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_FINISH_SELECT_NET received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "Success"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 684
    const/4 v15, 0x2

    .line 685
    .local v15, "family":I
    const/16 v20, 0x0

    .line 686
    .local v20, "isPinRequired":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v23

    .line 687
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 688
    const/4 v15, 0x2

    .line 692
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v15, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getCardAppState(II)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->isPinRequired()Z

    move-result v20

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isPinRequired = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 695
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v23

    if-eqz v2, :cond_a

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "auto unlock cdma pin after radio on if need"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 697
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v4

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 701
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x2

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v23

    .line 702
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 703
    const/4 v15, 0x2

    .line 707
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v15, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getCardAppState(II)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->isPinRequired()Z

    move-result v20

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isPinRequired = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 710
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v23

    if-eqz v2, :cond_1

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "auto unlock gsm pin after radio on if need"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 712
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v4

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 690
    :cond_b
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 705
    :cond_c
    const/4 v15, 0x1

    goto :goto_3

    .line 720
    .end local v15    # "family":I
    .end local v20    # "isPinRequired":Z
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GET_PINPUK_LEFT_NUM received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 722
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 724
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_d

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GET_PIN_LEFT_NUM failed."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, -0x1

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 728
    :cond_d
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v19, v2

    check-cast v19, [I

    .line 729
    .local v19, "ints":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    aget v3, v19, v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 735
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v19    # "ints":[I
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 736
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GET_CARD_TYPE_BY_AT received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v23

    .line 740
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GET_GARD_TYPE failed."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "error"

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1902(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 743
    const/16 v18, -0x1

    .line 757
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v3

    move/from16 v0, v18

    move/from16 v1, v23

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v2, v3, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/PhoneModeService;III)V

    goto/16 :goto_1

    .line 745
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1902(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 746
    const/16 v18, 0x0

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 749
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aget-object v4, v4, v23

    invoke-virtual {v2, v3, v4}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseCdmaCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    .line 751
    const/16 v18, 0x1

    .line 754
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: GET_CARD_TYPE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_4

    .line 762
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 763
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_UNLOCK_PIN_BY_CDMA received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 764
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_10

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: UNLOCK_PIN_BY_CDMA exception."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v23

    .line 767
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v23

    if-eqz v2, :cond_1

    .line 768
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aget-object v2, v2, v23

    const/4 v3, 0x2

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_1

    .line 771
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: UNLOCK_PIN_BY_CDMA true."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 778
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 779
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_UNLOCK_PIN_BY_GSM received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 781
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_12

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: UNLOCK_PIN_BY_GSM failed."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x2

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v23

    .line 784
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v23

    if-eqz v2, :cond_11

    .line 785
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aget-object v2, v2, v23

    const/4 v3, 0x2

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 792
    :cond_11
    :goto_5
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard()Z

    move-result v2

    if-nez v2, :cond_1

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 788
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_UNLOCK_PIN_BY_GSM true."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_5

    .line 799
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v3, :cond_1

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2302(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 809
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x2

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v23

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GSM_RADIO_STATE_CHANGED received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v3, :cond_1

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 821
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 822
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v23

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GET_GSM_IMSI_BY_AT received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 825
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_13

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GET_IMSI_BY_AT failed."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "error"

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 828
    const/16 v18, -0x1

    .line 842
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v3

    move/from16 v0, v18

    move/from16 v1, v23

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v2, v3, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/PhoneModeService;III)V

    goto/16 :goto_1

    .line 830
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 831
    const/16 v18, 0x0

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 834
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aget-object v4, v4, v23

    invoke-virtual {v2, v3, v4}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseGsmCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    .line 836
    const/16 v18, 0x1

    .line 839
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_GET_IMSI_BY_AT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_6

    .line 847
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_SELECT_NET_TIME_OUT received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "TimeOut"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 850
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, -0x1

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 856
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 857
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_GET_CDMA_MODEM_STATUS received mPhones[0].mCi.getRadioState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 861
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 864
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 869
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 872
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_GET_GSM_MODEM_STATUS received mPhones[1].mCi.getRadioState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 875
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 878
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 882
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CDMA_SUPPLYPIN_MODEMRESET received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 883
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 885
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CDMA_SUPPLYPIN_MODEMRESET exception."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v23

    .line 889
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v23

    if-eqz v2, :cond_1

    .line 890
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aget-object v2, v2, v23

    const/4 v3, 0x2

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_1

    .line 895
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 896
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GSM_SUPPLYPIN_MODEMRESET received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 897
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GSM_SUPPLYPIN_MODEMRESET exception."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x2

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v23

    .line 901
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v23

    if-eqz v2, :cond_1

    .line 902
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aget-object v2, v2, v23

    const/4 v3, 0x2

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_1

    .line 907
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CHECK_CDMA_RIL_POWERON_RESULT received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_18

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CHECK_CDMA_RIL_POWERON_RESULT reset modem."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 916
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v3, :cond_1

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # operator++ for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2308(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_CHECK_CDMA_RIL_POWERON_RESULT mCdmaModemResetTimes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 923
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v3

    const/16 v4, 0x34

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 932
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CHECK_GSM_RIL_POWERON_RESULT received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_19

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CHECK_GSM_RIL_POWERON_RESULT reset modem."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 939
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDesiredPowerState()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v3, :cond_1

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # operator++ for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2408(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_CHECK_GSM_RIL_POWERON_RESULT mGsmModemResetTimes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 946
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v3

    const/16 v4, 0x35

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 954
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 956
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1c

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1b

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2700(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 959
    new-instance v21, Ljava/lang/Exception;

    const-string v2, "SUB_ACTIVATE"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 964
    .local v21, "mException":Ljava/lang/Exception;
    :goto_7
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :goto_8
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I
    invoke-static {v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v7

    const/16 v24, 0x1e

    move/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_1

    .line 961
    .end local v21    # "mException":Ljava/lang/Exception;
    :cond_1a
    new-instance v21, Ljava/lang/Exception;

    const-string v2, "SUB_DEACTIVATE"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v21    # "mException":Ljava/lang/Exception;
    goto :goto_7

    .line 965
    :catch_0
    move-exception v13

    .line 967
    .local v13, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 975
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v21    # "mException":Ljava/lang/Exception;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "there must be something wrong in native,open net fail"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    goto/16 :goto_1

    .line 980
    :cond_1c
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Exception;

    .line 981
    .restart local v21    # "mException":Ljava/lang/Exception;
    if-eqz v21, :cond_1d

    const-string v2, "SUB_ACTIVATE"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 984
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 989
    :goto_9
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I
    invoke-static {v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v7

    const/16 v24, 0x1e

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto/16 :goto_1

    .line 985
    :catch_1
    move-exception v13

    .line 987
    .restart local v13    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 995
    .end local v13    # "e":Ljava/lang/InterruptedException;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3102(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x2

    const/4 v4, 0x1

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v2, v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: phonemodeservice EVENT_OPEN_GSM_SELECT_DONE active notify all ok "

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1011
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x6

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x5

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1004
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3102(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x2

    const/4 v4, 0x0

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v2, v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: phonemodeservice EVENT_OPEN_GSM_SELECT_DONE dactive notify all ok "

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_a

    .line 1019
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "mException":Ljava/lang/Exception;
    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1021
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_21

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_20

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2700(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 1024
    new-instance v21, Ljava/lang/Exception;

    const-string v2, "SUB_ACTIVATE"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1029
    .restart local v21    # "mException":Ljava/lang/Exception;
    :goto_b
    const-wide/16 v2, 0x7d0

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1033
    :goto_c
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I
    invoke-static {v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v7

    const/16 v24, 0x1f

    move/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_1

    .line 1026
    .end local v21    # "mException":Ljava/lang/Exception;
    :cond_1f
    new-instance v21, Ljava/lang/Exception;

    const-string v2, "SUB_DEACTIVATE"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v21    # "mException":Ljava/lang/Exception;
    goto :goto_b

    .line 1030
    :catch_2
    move-exception v13

    .line 1031
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 1039
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v21    # "mException":Ljava/lang/Exception;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "there must be something wrong in native,open net fail"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    goto/16 :goto_1

    .line 1044
    :cond_21
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Exception;

    .line 1045
    .restart local v21    # "mException":Ljava/lang/Exception;
    if-eqz v21, :cond_22

    const-string v2, "SUB_ACTIVATE"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1048
    const-wide/16 v2, 0x7d0

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1052
    :goto_d
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I
    invoke-static {v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v7

    const/16 v24, 0x1f

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto/16 :goto_1

    .line 1049
    :catch_3
    move-exception v13

    .line 1050
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 1058
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneoneType()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1063
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2700(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v2, v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: phonemodeservice EVENT_OPEN_CDMA_SELECT_DONE active notify all ok "

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1077
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x6

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x5

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1070
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v2, v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: phonemodeservice EVENT_OPEN_CDMA_SELECT_DONE dactive notify all ok "

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_e

    .line 1085
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "mException":Ljava/lang/Exception;
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1086
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_25

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: Error phonemodeservice EVENT_CDMA_SUBSCRIPTION_DEACTIVE fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1093
    :goto_f
    const-wide/16 v2, 0x1388

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1098
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1090
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM:  phonemodeservice EVENT_CDMA_SUBSCRIPTION_DEACTIVE ok"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_f

    .line 1094
    :catch_4
    move-exception v13

    .line 1096
    .local v13, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10

    .line 1103
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "e":Ljava/lang/InterruptedException;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1104
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_26

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: Error phonemodeservice EVENT_GSM_SUBSCRIPTION_DEACTIVE fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1111
    :goto_11
    const-wide/16 v2, 0x1388

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1116
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3102(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1108
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM:  phonemodeservice EVENT_GSM_SUBSCRIPTION_DEACTIVE ok"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_11

    .line 1112
    :catch_5
    move-exception v13

    .line 1114
    .restart local v13    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_12

    .line 1121
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "e":Ljava/lang/InterruptedException;
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_SET_SUBSCRIPTION_MODE_DONE"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1123
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1124
    monitor-exit v3

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 1130
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1131
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1132
    monitor-exit v3

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 1135
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1136
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1137
    monitor-exit v3

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 1140
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CDMA_SUBSCRIPTION_READY"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3800(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_CDMA_SUBSCRIPTION_READY mLock2.notifyAll"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1144
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1145
    monitor-exit v3

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 1149
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GSM_SUBSCRIPTION_READY"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3800(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GSM_SUBSCRIPTION_READY mLock2.notifyAll"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1153
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1154
    monitor-exit v3

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v2

    .line 1158
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1162
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1167
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_C_LOST_CARD_REBOOT received"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService;)Landroid/os/PowerManager;

    move-result-object v2

    const-string v3, "lowmem"

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1187
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto/16 :goto_1

    .line 1191
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1192
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1193
    monitor-exit v3

    goto/16 :goto_1

    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v2

    .line 1196
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1197
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1198
    monitor-exit v3

    goto/16 :goto_1

    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v2

    .line 1201
    :pswitch_28
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1202
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_27

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GET_PREFERRED_NETWORK exception."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1209
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1210
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1211
    monitor-exit v3

    goto/16 :goto_1

    :catchall_7
    move-exception v2

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v2

    .line 1205
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I
    invoke-static {v3, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4502(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current network preferred type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_13

    .line 1215
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegisterClientNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$302(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, -0x1

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4600(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 1224
    :pswitch_2a
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1225
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    const-string v3, "PhoneModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card status change "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1227
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1228
    .local v9, "cardIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->judgeCardStatus(I)V
    invoke-static {v2, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4800(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 1232
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "cardIndex":I
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_CHANGE_PHONE_ONE_SESSION_DONE received, mSessionState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-ne v2, v3, :cond_28

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->handleChangeSessionResult()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1236
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-ne v2, v3, :cond_1

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    goto/16 :goto_1

    .line 1243
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_CHANGE_PHONE_TWO_SESSION_DONE received, mSessionState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-ne v2, v3, :cond_29

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->handleChangeSessionResult()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1247
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-ne v2, v3, :cond_1

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    goto/16 :goto_1

    .line 1254
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_GET_SESSION_STATE_COMPLETE received!"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1256
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2a

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: getSessionState failed."

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1267
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mInitCompleted:Z
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5302(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z

    goto/16 :goto_1

    .line 1259
    :cond_2a
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v22, v2

    check-cast v22, [Ljava/lang/String;

    .line 1260
    .local v22, "rst":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: getSessionState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v22, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1261
    if-eqz v22, :cond_2b

    const/4 v2, 0x0

    aget-object v2, v22, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5202(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z

    goto :goto_14

    .line 1264
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5202(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z

    goto :goto_14

    .line 1270
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "rst":[Ljava/lang/String;
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_DEACT_PHONE1_DONE received, mSessionState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-ne v2, v3, :cond_2c

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->changeSession()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5400(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1274
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-ne v2, v3, :cond_1

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    goto/16 :goto_1

    .line 1282
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_DEACT_PHONE2_DONE received, mSessionState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-ne v2, v3, :cond_2d

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->changeSession()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5400(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1286
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-ne v2, v3, :cond_1

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    goto/16 :goto_1

    .line 1293
    :pswitch_30
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2e

    const/4 v14, 0x0

    .line 1294
    .local v14, "enabled":Z
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->handleEnableLTESwitch(Z)Z
    invoke-static {v2, v14}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5500(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z

    goto/16 :goto_1

    .line 1293
    .end local v14    # "enabled":Z
    :cond_2e
    const/4 v14, 0x1

    goto :goto_15

    .line 1297
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastLTESwitchFinished()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5600(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1300
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_DEACTIVE_LOCK_SIM_DONE"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1304
    :pswitch_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM: EVENT_SELECT_MODE_DELAY"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSelectNetFinishIntent_EX(ZZII)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5800(Lcom/yulong/android/internal/telephony/PhoneModeService;ZZII)V

    goto/16 :goto_1

    .line 1309
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x3

    aget v2, v2, v3

    if-nez v2, :cond_1

    .line 1311
    const/4 v10, 0x0

    .line 1312
    .local v10, "cdma":Z
    const/16 v16, 0x0

    .line 1313
    .local v16, "gsm":Z
    const/4 v12, 0x0

    .line 1314
    .local v12, "dataState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    if-lez v2, :cond_30

    .line 1316
    const/4 v10, 0x1

    .line 1318
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_31

    .line 1320
    const/16 v16, 0x1

    .line 1322
    :cond_31
    if-eqz v10, :cond_32

    if-eqz v16, :cond_32

    .line 1323
    const/4 v12, 0x3

    .line 1331
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    move/from16 v0, v16

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSelectNetFinishIntent_EX(ZZII)V
    invoke-static {v2, v10, v0, v12, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$5800(Lcom/yulong/android/internal/telephony/PhoneModeService;ZZII)V

    goto/16 :goto_1

    .line 1324
    :cond_32
    if-nez v10, :cond_33

    if-eqz v16, :cond_33

    .line 1325
    const/4 v12, 0x2

    goto :goto_16

    .line 1326
    :cond_33
    if-eqz v10, :cond_34

    if-nez v16, :cond_34

    .line 1327
    const/4 v12, 0x1

    goto :goto_16

    .line 1329
    :cond_34
    const/4 v12, 0x0

    goto :goto_16

    .line 1336
    .end local v10    # "cdma":Z
    .end local v12    # "dataState":I
    .end local v16    # "gsm":Z
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v3, "CP_COMM:xinghainan EVENT_AIR_MODE_CHANGE"

    # invokes: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_12
        :pswitch_17
        :pswitch_18
        :pswitch_1d
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_26
        :pswitch_25
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_28
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch
.end method
