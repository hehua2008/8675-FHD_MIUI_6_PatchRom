.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 354
    .local v8, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 355
    const-string v1, "level"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 356
    .local v10, "iLevel":I
    const-string v1, "voltage"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 357
    .local v17, "volt":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move/from16 v0, v17

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->onBatteryInfoReceiver(II)V
    invoke-static {v1, v10, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;II)V

    .line 449
    .end local v10    # "iLevel":I
    .end local v17    # "volt":I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yulong.intent.action.lte.only.mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "[DualPhoneModeService] broadcast lte.only.mode"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 454
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 455
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 458
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yulong.intent.action.close.lte.only.mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "[DualPhoneModeService] broadcast close lte.only.mode"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 461
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 462
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 465
    :cond_2
    return-void

    .line 358
    :cond_3
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 360
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    goto :goto_0

    .line 361
    :cond_4
    const-string v1, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 363
    const/4 v11, 0x0

    .line 364
    .local v11, "iccCardState":Ljava/lang/String;
    const/4 v13, 0x0

    .line 365
    .local v13, "phoneId":I
    const/4 v7, -0x1

    .line 366
    .local v7, "slotId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "Received ACTION_DUAL_SIM_STATE_CHANGED"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 368
    const-string v1, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "iccCardState":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 370
    .restart local v11    # "iccCardState":Ljava/lang/String;
    const-string v1, "phoneIdKey"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v1, v13}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v7

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccCardState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 376
    const-string v1, "PRESENT"

    const-string v2, "gsm.sim.insert.state"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ABSENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-ne v13, v1, :cond_5

    .line 378
    const-string v1, "gsm.sim.insert.state"

    const-string v2, "ABSENT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v2, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 384
    :cond_5
    const-string v1, "PRESENT"

    const-string v2, "cdma.ruim.insert.state"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ABSENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    if-ne v13, v1, :cond_6

    .line 386
    const-string v1, "cdma.ruim.insert.state"

    const-string v2, "ABSENT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v2, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 391
    :cond_6
    const-string v1, "ABSENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "sim card absent!!!"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    invoke-static/range {v1 .. v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x0

    iput v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aget-object v1, v1, v7

    const-string v2, ""

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aget-object v1, v1, v7

    const-string v2, ""

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_7
    const-string v1, "LOCKED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v1, v13}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v7

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "CP_COMM: STATE_CHANGED = RUIM_LOCKED_OR_ABSENT, supply pin."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: mPhones[0].mCi.getRadioState()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPhones[0].mCi.getRadioState()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 413
    const/4 v1, 0x1

    if-ne v13, v1, :cond_8

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_8

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supply cdma pin,mPinValues[slotId]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 415
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 417
    :cond_8
    const/4 v1, 0x2

    if-ne v13, v1, :cond_0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supply gsm pin,mPinValues[slotId]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 419
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 427
    .end local v7    # "slotId":I
    .end local v11    # "iccCardState":Ljava/lang/String;
    .end local v13    # "phoneId":I
    :cond_9
    const-string v1, "yulong.intent.action.SIMCARD_SWITCH"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "HOTSWAP:Received ACTION_SIMCARD_SWITCH"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 429
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 430
    .local v14, "simName":Ljava/lang/String;
    const-string v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 432
    .local v15, "simState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HOTSWAP: simName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",simState =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 434
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->onIccSwap(Ljava/lang/String;I)V
    invoke-static {v1, v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 435
    :catch_0
    move-exception v9

    .line 437
    .local v9, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 439
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v14    # "simName":Ljava/lang/String;
    .end local v15    # "simState":I
    :cond_a
    const-string v1, "yulong.intent.action.reset_modem"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const-string v1, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 441
    .local v16, "state":Ljava/lang/String;
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 442
    .local v12, "modemType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive UEvent from driver state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " modemType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 443
    const-string v1, "NEED_RESET"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const-string v1, "QSC6085"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto/16 :goto_0
.end method
