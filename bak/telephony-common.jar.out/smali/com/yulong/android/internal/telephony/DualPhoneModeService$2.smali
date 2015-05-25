.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;
.super Ljava/lang/Thread;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlotId()V
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
    .line 1696
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1698
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v1

    if-ne v1, v6, :cond_1

    :cond_0
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1702
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1704
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1705
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v3, "CP_COMM: wait untill deactive card1 success"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1711
    :cond_2
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 1712
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "G2C removeAllInvalidSid"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1713
    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->removeAllInvalidSid(Landroid/os/Message;)V

    .line 1719
    :cond_3
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v1, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 1720
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v1

    iput v5, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1721
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v1

    iput v5, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1722
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v1

    iput v5, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1723
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v1

    iput v5, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1724
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v2

    aget v2, v2, v5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v3

    aget v3, v3, v6

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v4

    aget v4, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlot(III)I

    .line 1726
    return-void

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v3, "CP_COMM: interrupted while deactive"

    # invokes: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_0

    .line 1709
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
