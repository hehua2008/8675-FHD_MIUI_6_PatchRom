.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
.super Landroid/os/Handler;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method public constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .local v7, "cdmaRadioPower":Z
    const/4 v11, 0x0

    .local v11, "gsmRadioPower":Z
    const/4 v8, 0x0

    .local v8, "cdmaSelectModemValue":I
    const/4 v12, 0x0

    .local v12, "gsmSelectModemValue":I
    const/4 v13, -0x1

    .local v13, "iResult":I
    const/16 v22, -0x1

    .local v22, "slotId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CP_COMM: enter DualPhoneModeService handleMessage: what = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", regNo = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x16

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x3d

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x3e

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x3f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x17

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x18

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x40

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x47

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x50

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0xf

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: don\'t deal with this message."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v23

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->notifySocketConnectedInternal()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: liuyong add 2012-06-28 w8260 reset do"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->notifySocketConnectedInternal()V

    goto/16 :goto_0

    :sswitch_1
    const/16 v19, 0x0

    .local v19, "net_type":I
    const/4 v14, -0x1

    .local v14, "insert_state":I
    const/4 v6, 0x0

    .local v6, "cardState":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v14, v0, :cond_6

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyCradStateChangedIntent()V

    goto/16 :goto_0

    :cond_6
    if-nez v14, :cond_5

    const-string v23, "cdma.ruim.insert.state"

    const-string v24, ""

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v23, "PRESENT"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_7
    const-string v23, "cdma.ruim.insert.state"

    const-string v24, "ABSENT"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    goto :goto_1

    :cond_8
    const/16 v23, 0x2

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v14, v0, :cond_5

    if-nez v14, :cond_5

    const-string v23, "gsm.sim.insert.state"

    const-string v24, ""

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v23, "PRESENT"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    :cond_9
    const-string v23, "gsm.sim.insert.state"

    const-string v24, "ABSENT"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    goto :goto_1

    .end local v6    # "cardState":Ljava/lang/String;
    .end local v14    # "insert_state":I
    .end local v19    # "net_type":I
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: Open cdma modem failed."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-eqz v23, :cond_1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x2

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x5

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x3

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x4

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x5

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x5

    aget v23, v23, v24

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x3

    aget v23, v23, v24

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x3

    const/16 v25, 0x1

    aput v25, v23, v24

    const-wide/16 v23, 0x2710

    :try_start_0
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: Close cdma modem failed."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x6

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x8

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x9

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v24

    const/16 v25, 0x32

    invoke-virtual/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-eqz v23, :cond_1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x6

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x8

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x9

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v24

    const/16 v25, 0x32

    invoke-virtual/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: Open gsm modem failed."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-eqz v23, :cond_f

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryOpenModemTimes:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    const-wide/16 v23, 0xfa0

    :try_start_1
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v25

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # operator++ for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryOpenModemTimes:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2308(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    goto/16 :goto_0

    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryOpenModemTimes:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x2

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x4

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x3

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x5

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x5

    aget v23, v23, v24

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x4

    aget v23, v23, v24

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x4

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterOpenGsmModem()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    const-string v23, "DualPhoneModeService"

    const-string v24, "CP_COMM: Close gsm modem failed.try it again after 4 secs"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-eqz v23, :cond_12

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryCloseModemTimes:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    const-wide/16 v23, 0xfa0

    :try_start_2
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # operator++ for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryCloseModemTimes:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2608(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    goto/16 :goto_0

    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryCloseModemTimes:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x1

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x0

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x7

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x5

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x9

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x8

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v24

    const/16 v25, 0x32

    invoke-virtual/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    const-string v20, ""

    .local v20, "newPhoneType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    const/4 v3, -0x1

    .local v3, "Mode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v18

    .local v18, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    const/4 v3, 0x1

    const-string v20, "gsm"

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    if-eqz v18, :cond_15

    :try_start_3
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->switchDsDsService(I)I

    move-result v21

    .local v21, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ret = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v21    # "ret":I
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->dispose()V

    .end local v3    # "Mode":I
    .end local v18    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2802(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchPhoneoneType()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .restart local v3    # "Mode":I
    .restart local v18    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_17
    const/4 v3, 0x2

    const-string v20, "cdma"

    goto :goto_5

    :catch_2
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .end local v3    # "Mode":I
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v18    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchTwoPhone:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    const-string v23, "yulong.lcdsds.mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "yulong.socket.connect.mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "DualPhoneModeService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mode:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "yulong.lcdsds.mode"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchPhoneoneType()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .end local v20    # "newPhoneType":Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-nez v23, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    :cond_1a
    const/4 v7, 0x1

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "radio state = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    if-nez v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-nez v23, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v23

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x6

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v8, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v7, :cond_20

    if-eqz v7, :cond_1d

    if-nez v8, :cond_1e

    :cond_1d
    if-nez v7, :cond_1

    if-nez v8, :cond_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x6

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x7

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v8, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    goto :goto_7

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x5

    aget v23, v23, v24

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: GET_PIN_OR_PUK_NUM_STEP---------error."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-nez v23, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    :cond_21
    const/4 v11, 0x1

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "radio state = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    if-nez v11, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-nez v23, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x7

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v12, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    :goto_8
    if-eqz v11, :cond_23

    if-nez v12, :cond_24

    :cond_23
    if-nez v11, :cond_1

    if-nez v12, :cond_1

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x7

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x6

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v12, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    goto :goto_8

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "Success"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    const/4 v10, 0x2

    .local v10, "family":I
    const/16 v17, 0x0

    .local v17, "isPinRequired":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v22

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_27

    const/4 v10, 0x2

    :goto_9
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getCardAppState(II)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->isPinRequired()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mSlotId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",isPinRequired = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v23

    aget-object v23, v23, v22

    if-eqz v23, :cond_26

    if-eqz v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "auto unlock cdma pin after radio on if need"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v25

    const/16 v26, 0x15

    invoke-virtual/range {v25 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v22

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    const/4 v10, 0x2

    :goto_a
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v23

    const/16 v24, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getCardAppState(II)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->isPinRequired()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mSlotId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",isPinRequired = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v23

    aget-object v23, v23, v22

    if-eqz v23, :cond_1

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "auto unlock gsm pin after radio on if need"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v25

    const/16 v26, 0x15

    invoke-virtual/range {v25 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_27
    const/4 v10, 0x1

    goto/16 :goto_9

    :cond_28
    const/4 v10, 0x1

    goto/16 :goto_a

    .end local v10    # "family":I
    .end local v17    # "isPinRequired":Z
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x5

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: EVENT_GET_PIN_LEFT_NUM failed."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    :cond_29
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    move-object/from16 v16, v23

    check-cast v16, [I

    .local v16, "ints":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v24, v16, v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "ints":[I
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    move/from16 v24, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v22

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: EVENT_GET_GARD_TYPE failed."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "error"

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    const/4 v13, -0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v0, v1, v13, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;III)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2b

    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v25

    aget-object v25, v25, v22

    invoke-virtual/range {v23 .. v25}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseCdmaCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    const/4 v13, 0x1

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CP_COMM: GET_CARD_TYPE: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_b

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: UNLOCK_PIN_BY_CDMA exception."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v23

    aget-object v23, v23, v22

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v23

    aget-object v23, v23, v22

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: UNLOCK_PIN_BY_CDMA true."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterUnlockPin(I)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: UNLOCK_PIN_BY_GSM failed."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v23

    aget-object v23, v23, v22

    if-eqz v23, :cond_1

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: EVENT_UNLOCK_PIN_BY_GSM true."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterUnlockPin(I)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSyncMessageToRenew(I)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v12, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    :goto_c
    if-eqz v11, :cond_2e

    if-nez v12, :cond_2f

    :cond_2e
    if-nez v11, :cond_1

    if-nez v12, :cond_1

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x7

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x6

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v12, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    goto :goto_c

    :sswitch_12
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    move/from16 v24, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v22

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: EVENT_GET_IMSI_BY_AT failed."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "error"

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    const/4 v13, -0x1

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v0, v1, v13, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;III)V

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_32

    const/4 v13, 0x1

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CP_COMM: EVENT_GET_IMSI_BY_AT: mGsmImsiResponse"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "mSlotCardInfoArray["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "].mGsmImsi"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v25

    aget-object v25, v25, v22

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_d

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-eqz v23, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # operator++ for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3608(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v25

    const/16 v26, 0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v26

    const/16 v27, 0x2

    aget v26, v26, v27

    invoke-virtual/range {v23 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlot(III)I

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "TimeOut"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: EVENT_GET_CDMA_MODEM_STATUS failed."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    move-object/from16 v4, v23

    check-cast v4, [I

    .local v4, "ModomStatus":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CP_COMM: EVENT_GET_CDMA_MODEM_STATUS: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, v4, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    const/16 v23, 0x0

    aget v23, v4, v23

    if-nez v23, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v23

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    goto :goto_e

    .end local v4    # "ModomStatus":[I
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: EVENT_GET_GSM_MODEM_STATUS failed."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_37
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    move-object/from16 v4, v23

    check-cast v4, [I

    .restart local v4    # "ModomStatus":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CP_COMM: EVENT_GET_GSM_MODEM_STATUS: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, v4, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    const/16 v23, 0x0

    aget v23, v4, v23

    if-nez v23, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_2
    move-exception v23

    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v23

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    goto :goto_f

    .end local v4    # "ModomStatus":[I
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: EVENT_CDMA_SUPPLYPIN_MODEMRESET exception."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v23

    aget-object v23, v23, v22

    if-eqz v23, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v23

    aget-object v23, v23, v22

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: EVENT_GSM_SUPPLYPIN_MODEMRESET exception."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v23

    aget-object v23, v23, v22

    if-eqz v23, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v23

    aget-object v23, v23, v22

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "HOTSWAP: enter into EVENT_HOTSWAP_CHECK_CARD_FINISH,reCheckCard = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v23

    if-eqz v23, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "HOTSWAP: isCheckingCard = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", ignore"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "HOTSWAP: mCdmaModemStatus = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", mGsmModemStatus = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3002(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "HOTSWAP: getSlotConnectMode()= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    if-nez v23, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    if-eqz v23, :cond_3d

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "HOTSWAP: broadcast intent ACTION_HOTSWAP_SELECT_NET"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    new-instance v15, Landroid/content/Intent;

    const-string v23, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v15, "intent":Landroid/content/Intent;
    const-string v23, "msgFlag"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4900()Landroid/content/Context;

    move-result-object v23

    sget-object v24, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .end local v15    # "intent":Landroid/content/Intent;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mPhones[0].RadioState() = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3e

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_3
    move-exception v23

    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v23

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mPhones[1].RadioState() = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3f

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v23

    if-nez v23, :cond_1

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_4
    move-exception v23

    monitor-exit v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v23

    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: Close card1 failed."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x6

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x8

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x9

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v24

    const/16 v25, 0x32

    invoke-virtual/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeetPowerOffCard:Z
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5102(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    goto/16 :goto_0

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x6

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x8

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v23

    const/16 v24, 0x9

    aget v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v24

    const/16 v25, 0x32

    invoke-virtual/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "G2C removeAllInvalidSid failed"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "G2C removeAllInvalidSid success"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_5
    move-exception v23

    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v23

    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "CP_COMM: EVENT_GET_PREFERRED_NETWORK exception."

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_6
    move-exception v23

    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v23

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    check-cast v23, [I

    const/16 v25, 0x0

    aget v23, v23, v25

    move-object/from16 v0, v24

    move/from16 v1, v23

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I
    invoke-static {v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "current network preferred type = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_10

    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v23, v0

    const-string v24, "EVENT_RESET_SWITCH_PROGRESS_VALUE,Set value 0"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    const-string v23, "yulong.dispose.progress"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v5    # "ar":Landroid/os/AsyncResult;
    :catch_3
    move-exception v23

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_14
        0x7 -> :sswitch_15
        0xa -> :sswitch_8
        0xb -> :sswitch_7
        0xc -> :sswitch_a
        0xd -> :sswitch_9
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x10 -> :sswitch_12
        0x11 -> :sswitch_d
        0x12 -> :sswitch_c
        0x13 -> :sswitch_e
        0x14 -> :sswitch_f
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x17 -> :sswitch_19
        0x18 -> :sswitch_1a
        0x32 -> :sswitch_b
        0x33 -> :sswitch_13
        0x3d -> :sswitch_1
        0x3e -> :sswitch_0
        0x3f -> :sswitch_18
        0x40 -> :sswitch_1b
        0x42 -> :sswitch_1c
        0x47 -> :sswitch_1d
        0x48 -> :sswitch_1e
        0x50 -> :sswitch_1f
    .end sparse-switch
.end method
