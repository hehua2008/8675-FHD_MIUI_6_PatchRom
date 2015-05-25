.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final EVENT_SWITCH_PHONE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x1e

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field protected static mBaseHandler:Landroid/os/Handler;

.field static mPhoneResetCount:I

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field static final preferredCdmaSubscription:I

.field static final preferredNetworkMode:I

.field private static sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

.field private static sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

.field private static sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

.field private static sGsmTuneAwayReceiver:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:[Lcom/android/internal/telephony/Phone;

.field private static sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 70
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 71
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 72
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 73
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 76
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 77
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 78
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 79
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 86
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmTuneAwayReceiver:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    .line 804
    new-instance v0, Lcom/android/internal/telephony/PhoneFactory$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneFactory$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->mBaseHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcastSwithPhoneDone()V
    .locals 5

    .prologue
    .line 823
    const-string v2, "yulong.lcdsds.mode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 824
    .local v1, "lcDsdsMode":I
    const-string v2, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastSwithPhoneDone\ufffd\ufffdproperty_lcdsds_mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.FINISH_SWITCH_PHONE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "lcDsdsMode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 828
    return-void
.end method

.method private static delateAndCreatePhone(I)V
    .locals 1
    .param p0, "newPhoneType"    # I

    .prologue
    .line 671
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/PhoneFactory;->delateAndCreatePhone(IZ)V

    .line 672
    return-void
.end method

.method private static delateAndCreatePhone(IZ)V
    .locals 10
    .param p0, "newPhoneType"    # I
    .param p1, "isCardCheckOk"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 674
    const/4 v1, 0x0

    .line 675
    .local v1, "isDsdsType":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    .line 676
    .local v3, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    const-string v2, "Unknown"

    .line 677
    .local v2, "outgoingPhoneName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 678
    .local v0, "commType":I
    if-ne p0, v9, :cond_5

    .line 679
    const/4 v0, 0x2

    .line 680
    const/4 v1, 0x1

    .line 681
    const-string v4, "yulong.lcdsds.mode"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v4, :cond_1

    .line 689
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    .line 692
    :cond_1
    const-string v5, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switching Voice Phone : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " >>> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v9, p0, :cond_6

    const-string v4, "GSM"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-eqz v3, :cond_2

    .line 695
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccController;->dispose()V

    .line 698
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_3

    .line 699
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RIL;->closeSocket()V

    .line 701
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v4, :cond_4

    .line 702
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 703
    const-string v4, "PhoneFactory"

    const-string v5, "Disposing old phone.."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 709
    :cond_4
    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem(Z)V

    .line 710
    const-string v4, "PhoneFactory"

    const-string v5, "makeRil----begin"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v4, v8, v0, v8}, Lcom/android/internal/telephony/PhoneFactory;->makeRil(Landroid/content/Context;III)V

    .line 712
    const-string v4, "PhoneFactory"

    const-string v5, "makeRil----end"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v5, v4, v7

    .line 715
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->attach(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 716
    const-string v4, "PhoneFactory"

    const-string v5, "makePhone----begin"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v4, v8, v0, v8}, Lcom/android/internal/telephony/PhoneFactory;->makePhone(Landroid/content/Context;III)V

    .line 718
    const-string v4, "PhoneFactory"

    const-string v5, "makePhone----end"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneProxy;->creatNewPhone(Lcom/android/internal/telephony/Phone;)V

    .line 721
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    aput-object v5, v4, v7

    .line 725
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    .line 726
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 727
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    .line 728
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4, v5, v6, v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->attach(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 729
    if-ne v8, p1, :cond_7

    .line 730
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlotId()V

    .line 740
    :goto_2
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    sput-object v4, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 741
    const-string v4, "PhoneFactory"

    const-string v5, "CP_COMM: CDMAPhone is the preferred phone."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    sput-boolean v8, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 744
    return-void

    .line 682
    :cond_5
    if-ne p0, v8, :cond_0

    .line 683
    const/4 v0, 0x1

    .line 684
    const/4 v1, 0x0

    .line 685
    const-string v4, "yulong.lcdsds.mode"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 692
    :cond_6
    const-string v4, "CDMA"

    goto/16 :goto_1

    .line 732
    :cond_7
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSwitchPhoneFalse()V

    goto :goto_2

    .line 735
    :cond_8
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    .line 736
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlotId()V

    goto :goto_2
.end method

.method private static delateBothPhone()V
    .locals 3

    .prologue
    .line 746
    const-string v1, "PhoneFactory"

    const-string v2, " dipose both phone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 749
    .local v0, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->disposeAll()V

    .line 753
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_2

    .line 754
    const-string v1, "PhoneFactory"

    const-string v2, "Disposing sCdmaPhone phone..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    .line 756
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RIL;->closeSocket()V

    .line 758
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 759
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 762
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_4

    .line 763
    const-string v1, "PhoneFactory"

    const-string v2, "Disposing sGsmPhone phone..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_3

    .line 765
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RIL;->closeSocket()V

    .line 767
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 768
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 770
    :cond_4
    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 480
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 481
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 482
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 483
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getCdmaPhoneProxy()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 519
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 520
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 845
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 467
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 468
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 487
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 488
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 489
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getGsmPhoneProxy()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getPhoneIdBySlotId(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 832
    const/4 v0, -0x1

    .line 833
    .local v0, "phoneId":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v1

    invoke-virtual {v1, v3, v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateUniversalInterface(III)I

    move-result v0

    .line 840
    :goto_0
    return v0

    .line 837
    :cond_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-result-object v1

    invoke-virtual {v1, v3, v2, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateUniversalInterface(III)I

    move-result v0

    goto :goto_0
.end method

.method public static getPhoneType(I)I
    .locals 5
    .param p0, "networkMode"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 434
    const-string v2, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneType,networkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 462
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 446
    goto :goto_0

    .line 455
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 458
    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isNotShowPIM()Z
    .locals 6

    .prologue
    .line 533
    const-string v4, "ro.yulong.boot.reason"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "bootReason":Ljava/lang/String;
    const/4 v0, 0x0

    .line 535
    .local v0, "bExceptPowerOn":Z
    if-eqz v2, :cond_0

    .line 536
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "excep_press_poweron"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 539
    :cond_0
    const-string v4, "persist.sys.yllastshut.reason"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "shutReason":Ljava/lang/String;
    const/4 v1, 0x0

    .line 542
    .local v1, "bShutLowmem":Z
    if-eqz v3, :cond_1

    .line 543
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lowmem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 547
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 548
    const/4 v4, 0x1

    .line 550
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static makeBothPhone()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 773
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem()V

    .line 774
    invoke-static {v6}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    .line 775
    .local v0, "phoneOneType":I
    invoke-static {v5}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    .line 777
    .local v1, "phoneTwoType":I
    const-string v3, "PhoneFactory"

    const-string v4, "makeRil----begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v6, v0, v6}, Lcom/android/internal/telephony/PhoneFactory;->makeRil(Landroid/content/Context;III)V

    .line 779
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v6, v1, v5}, Lcom/android/internal/telephony/PhoneFactory;->makeRil(Landroid/content/Context;III)V

    .line 780
    const-string v3, "PhoneFactory"

    const-string v4, "makeRil----end"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v4, v3, v7

    .line 782
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v4, v3, v6

    .line 783
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 784
    .local v2, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v2, :cond_0

    .line 785
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->attachAll(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 788
    :cond_0
    const-string v3, "PhoneFactory"

    const-string v4, "makePhone----begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v6, v0, v6}, Lcom/android/internal/telephony/PhoneFactory;->makePhone(Landroid/content/Context;III)V

    .line 790
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v6, v1, v5}, Lcom/android/internal/telephony/PhoneFactory;->makePhone(Landroid/content/Context;III)V

    .line 791
    const-string v3, "PhoneFactory"

    const-string v4, "makePhone----end"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneProxy;->creatNewPhone(Lcom/android/internal/telephony/Phone;)V

    .line 793
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneProxy;->creatNewPhone(Lcom/android/internal/telephony/Phone;)V

    .line 794
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    aput-object v4, v3, v7

    .line 795
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    aput-object v4, v3, v6

    .line 797
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    .line 798
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    .line 799
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 801
    sput-boolean v6, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 802
    return-void
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 33
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-class v29, Lcom/android/internal/telephony/Phone;

    monitor-enter v29

    .line 111
    :try_start_0
    sget-boolean v28, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v28, :cond_10

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v28

    sput-object v28, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 113
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 115
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v28, :cond_0

    .line 116
    new-instance v28, Ljava/lang/RuntimeException;

    const-string v30, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 403
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 120
    :cond_0
    const/16 v26, 0x0

    .line 121
    .local v26, "retryCount":I
    const/4 v6, -0x3

    .line 122
    .local v6, "cardOneType":I
    :try_start_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->init()V

    .line 123
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeByXMLFile()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v20

    .line 124
    .local v20, "operatorType":I
    const/4 v5, 0x0

    .line 127
    .local v5, "cardOneInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :goto_0
    const/4 v13, 0x0

    .line 128
    .local v13, "hasException":Z
    add-int/lit8 v26, v26, 0x1

    .line 133
    :try_start_2
    new-instance v28, Landroid/net/LocalServerSocket;

    const-string v30, "com.android.internal.telephony"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :goto_1
    if-nez v13, :cond_3

    .line 150
    if-eqz v20, :cond_1

    .line 151
    const/4 v6, 0x0

    .line 154
    :cond_1
    const/16 v26, 0x0

    .line 156
    :goto_2
    add-int/lit8 v26, v26, 0x1

    .line 157
    if-eqz v6, :cond_2

    .line 158
    const/16 v28, 0x0

    :try_start_3
    invoke-static/range {v28 .. v28}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCardInfo(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    .line 159
    if-eqz v5, :cond_2

    .line 160
    iget v6, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 163
    :cond_2
    const-string v28, "phonefactor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " cardOneType = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v28, -0x3

    move/from16 v0, v28

    if-ne v0, v6, :cond_6

    .line 165
    const/16 v28, 0x64

    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_5

    .line 166
    new-instance v28, Ljava/lang/RuntimeException;

    const-string v30, "PhoneFactory: Get cardOneType error"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 134
    :catch_0
    move-exception v9

    .line 135
    .local v9, "ex":Ljava/io/IOException;
    const/4 v13, 0x1

    goto :goto_1

    .line 140
    .end local v9    # "ex":Ljava/io/IOException;
    :cond_3
    const/16 v28, 0x1e

    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    .line 141
    new-instance v28, Ljava/lang/RuntimeException;

    const-string v30, "PhoneFactory probably already running"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :cond_4
    const-wide/16 v30, 0x7d0

    :try_start_4
    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 145
    :catch_1
    move-exception v28

    goto :goto_0

    .line 170
    :cond_5
    const-wide/16 v30, 0x1f4

    :try_start_5
    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 171
    :catch_2
    move-exception v28

    goto :goto_2

    .line 179
    :cond_6
    :try_start_6
    const-string v28, "phonefactor"

    const-string v30, "phonefactor enter"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lcom/yulong/android/internal/telephony/InternationalAddressUtil;->init()V

    .line 183
    new-instance v28, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct/range {v28 .. v28}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v28, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 184
    const/16 v24, 0x0

    .line 185
    .local v24, "preferredNetworkMode":I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v28

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 186
    const/16 v24, 0x7

    .line 189
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v30, "preferred_network_mode"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 194
    .local v19, "networkMode":I
    const-string v28, "PhoneFactory"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CP_COMM: Network Mode set to "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v21

    .line 199
    .local v21, "phoneOneType":I
    const/16 v28, 0x2

    invoke-static/range {v28 .. v28}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v22

    .line 202
    .local v22, "phoneTwoType":I
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    const/16 v28, 0x3

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    const/16 v28, 0x4

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 205
    :cond_8
    const-string v28, "gsm.current.phone-type"

    new-instance v30, Ljava/lang/Integer;

    const/16 v31, 0x1

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_3
    const/4 v7, 0x0

    .line 216
    .local v7, "cdmaSubscription":I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v18

    .line 217
    .local v18, "lteOnCdma":I
    packed-switch v18, :pswitch_data_0

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v30, "subscription_mode"

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 229
    const-string v28, "PhoneFactory"

    const-string v30, "lteOnCdma not set, using PREFERRED_CDMA_SUBSCRIPTION"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_4
    const-string v28, "PhoneFactory"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Cdma Subscription set to "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v28, v0

    sput-object v28, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 235
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/internal/telephony/RIL;

    move-object/from16 v28, v0

    sput-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 237
    const-string v28, "PhoneFactory"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CP_COMM: phoneOneType:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";phoneTwoType"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-static {v0, v7, v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->makeRil(Landroid/content/Context;III)V

    .line 241
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-static {v0, v7, v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->makeRil(Landroid/content/Context;III)V

    .line 242
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v30, 0x0

    sget-object v31, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v31, v28, v30

    .line 243
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v30, 0x1

    sget-object v31, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v31, v28, v30

    .line 246
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v30, 0x0

    aget-object v28, v28, v30

    if-eqz v28, :cond_9

    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v30, 0x1

    aget-object v28, v28, v30

    if-nez v28, :cond_a

    .line 247
    :cond_9
    const-string v28, "PhoneFactory"

    const-string v30, " makeRil fail"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_a
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v28

    sput-object v28, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 250
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-static {v0, v7, v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->makePhone(Landroid/content/Context;III)V

    .line 251
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-static {v0, v7, v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->makePhone(Landroid/content/Context;III)V

    .line 253
    new-instance v28, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v30, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 254
    new-instance v28, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v30, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v28, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 255
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    const/16 v30, 0x0

    sget-object v31, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    aput-object v31, v28, v30

    .line 256
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    const/16 v30, 0x1

    sget-object v31, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    aput-object v31, v28, v30

    .line 259
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v30, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    .line 262
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v28

    const/16 v30, 0xb

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 263
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isGsmTuneAwayEnabled()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 264
    const-string v28, "persist.radio.multisim.gta"

    const-string v30, "true"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_b
    const-string v28, "persist.radio.multisim.gta"

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 268
    .local v12, "gtaEnabled":Z
    if-eqz v12, :cond_c

    .line 269
    new-instance v28, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;-><init>(Landroid/content/Context;)V

    sput-object v28, Lcom/android/internal/telephony/PhoneFactory;->sGsmTuneAwayReceiver:Lcom/android/internal/telephony/gsm/GsmTuneAwayReceiver;

    .line 274
    .end local v12    # "gtaEnabled":Z
    :cond_c
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 275
    const-string v28, "PhoneFactory"

    const-string v30, "CP_COMM: PhoneModeService getCheckCardType = COMM_CHECK_CARD_FRAMEWORK"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v30, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v31, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/yulong/android/internal/telephony/SubscriptionManager;

    .line 277
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v30, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    .line 278
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    .line 279
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v28

    sget-object v30, Lcom/android/internal/telephony/PhoneFactory;->mBaseHandler:Landroid/os/Handler;

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->registerForSwitchPhone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 284
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 285
    const-string v28, "persist.sys.fastbootup.mode"

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v28

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 287
    :try_start_7
    const-string v28, "com.yulong.android.poweroff.PowerOffManager"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    .line 288
    .local v23, "powerOffManager":Ljava/lang/Class;
    const-string v28, "getInstance"

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 289
    .local v14, "instance":Ljava/lang/reflect/Method;
    const/16 v28, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 290
    .local v25, "retObj":Ljava/lang/Object;
    const-string v28, "PhoneFactory"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "powerOffManager:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " instance:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v28, "isSilenceRebootMode"

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 293
    .local v17, "isSilenceRebootMode":Ljava/lang/reflect/Method;
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 295
    .local v15, "isInSRM":Z
    const-string v28, "getSystemState"

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 296
    .local v11, "getSystemState":Ljava/lang/reflect/Method;
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 298
    .local v27, "systemState":I
    const-string v28, "SYSTEM_STATE_SHUTDOWN"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 299
    .local v10, "fld":Ljava/lang/reflect/Field;
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 301
    .local v4, "SYSTEM_STATE_SHUTDOWN":I
    move/from16 v0, v27

    if-ne v0, v4, :cond_12

    const/16 v16, 0x1

    .line 302
    .local v16, "isOnSRM":Z
    :goto_5
    const-string v28, "PhoneFactory"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "isSilenceRebootMode isInSRM:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " isOnSRM :"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-eqz v15, :cond_d

    .line 304
    if-eqz v16, :cond_d

    .line 305
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSilenceRebootFlag()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 317
    .end local v4    # "SYSTEM_STATE_SHUTDOWN":I
    .end local v10    # "fld":Ljava/lang/reflect/Field;
    .end local v11    # "getSystemState":Ljava/lang/reflect/Method;
    .end local v14    # "instance":Ljava/lang/reflect/Method;
    .end local v15    # "isInSRM":Z
    .end local v16    # "isOnSRM":Z
    .end local v17    # "isSilenceRebootMode":Ljava/lang/reflect/Method;
    .end local v23    # "powerOffManager":Ljava/lang/Class;
    .end local v25    # "retObj":Ljava/lang/Object;
    .end local v27    # "systemState":I
    :cond_d
    :goto_6
    :try_start_8
    const-string v28, "yulong.radio.reset.count"

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v28

    sput v28, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    .line 319
    const-string v28, "PhoneFactory"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mPhoneResetCount = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget v31, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget v28, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-le v0, v1, :cond_13

    .line 329
    const-wide/16 v30, 0x1388

    :try_start_9
    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 368
    :cond_e
    :goto_7
    :try_start_a
    sget v28, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    add-int/lit8 v28, v28, 0x1

    sput v28, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    .line 369
    const-string v28, "PhoneFactory"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mPhoneResetCount = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget v31, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v28, "yulong.radio.reset.count"

    sget v30, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    const v31, 0xffff

    rem-int v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_8
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v30, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v31, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/yulong/android/telephony/CPTelephonyUtils;->getInstance(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)Lcom/yulong/android/telephony/CPTelephonyUtils;

    .line 382
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isOverseaProduct()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 383
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v30, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v31, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/yulong/android/telephony/CPSprintPriManager;->getInstance(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)Lcom/yulong/android/telephony/CPSprintPriManager;

    .line 387
    :cond_f
    if-nez v21, :cond_16

    .line 388
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    sput-object v28, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 389
    const-string v28, "PhoneFactory"

    const-string v30, "CP_COMM: GSMPhone is the preferred phone."

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_9
    const/16 v28, 0x1

    sput-boolean v28, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 399
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v28

    const/16 v30, 0x64

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 400
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->registerEventForCdmaAndLte()V

    .line 403
    .end local v5    # "cardOneInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .end local v6    # "cardOneType":I
    .end local v7    # "cdmaSubscription":I
    .end local v13    # "hasException":Z
    .end local v18    # "lteOnCdma":I
    .end local v19    # "networkMode":I
    .end local v20    # "operatorType":I
    .end local v21    # "phoneOneType":I
    .end local v22    # "phoneTwoType":I
    .end local v24    # "preferredNetworkMode":I
    .end local v26    # "retryCount":I
    :cond_10
    monitor-exit v29

    .line 404
    return-void

    .line 210
    .restart local v5    # "cardOneInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .restart local v6    # "cardOneType":I
    .restart local v13    # "hasException":Z
    .restart local v19    # "networkMode":I
    .restart local v20    # "operatorType":I
    .restart local v21    # "phoneOneType":I
    .restart local v22    # "phoneTwoType":I
    .restart local v24    # "preferredNetworkMode":I
    .restart local v26    # "retryCount":I
    :cond_11
    const-string v28, "gsm.current.phone-type"

    new-instance v30, Ljava/lang/Integer;

    const/16 v31, 0x2

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 219
    .restart local v7    # "cdmaSubscription":I
    .restart local v18    # "lteOnCdma":I
    :pswitch_0
    const/4 v7, 0x1

    .line 220
    const-string v28, "PhoneFactory"

    const-string v30, "lteOnCdma is 0 use SUBSCRIPTION_FROM_NV"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 223
    :pswitch_1
    const/4 v7, 0x0

    const-string v28, "PhoneFactory"

    const-string v30, "lteOnCdma is 1 use SUBSCRIPTION_FROM_RUIM"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 301
    .restart local v4    # "SYSTEM_STATE_SHUTDOWN":I
    .restart local v10    # "fld":Ljava/lang/reflect/Field;
    .restart local v11    # "getSystemState":Ljava/lang/reflect/Method;
    .restart local v14    # "instance":Ljava/lang/reflect/Method;
    .restart local v15    # "isInSRM":Z
    .restart local v17    # "isSilenceRebootMode":Ljava/lang/reflect/Method;
    .restart local v23    # "powerOffManager":Ljava/lang/Class;
    .restart local v25    # "retObj":Ljava/lang/Object;
    .restart local v27    # "systemState":I
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 309
    .end local v4    # "SYSTEM_STATE_SHUTDOWN":I
    .end local v10    # "fld":Ljava/lang/reflect/Field;
    .end local v11    # "getSystemState":Ljava/lang/reflect/Method;
    .end local v14    # "instance":Ljava/lang/reflect/Method;
    .end local v15    # "isInSRM":Z
    .end local v17    # "isSilenceRebootMode":Ljava/lang/reflect/Method;
    .end local v23    # "powerOffManager":Ljava/lang/Class;
    .end local v25    # "retObj":Ljava/lang/Object;
    .end local v27    # "systemState":I
    :catch_3
    move-exception v8

    .line 310
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 330
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .line 332
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 353
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_13
    const/16 v28, 0x64

    const-string v30, "persist.yulong.network2"

    const/16 v31, 0x64

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 356
    const-string v28, "persist.yulong.network2"

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_14
    const/16 v28, 0x64

    const-string v30, "persist.yulong.network1"

    const/16 v31, 0x64

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 363
    const-string v28, "persist.yulong.network1"

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 374
    :cond_15
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v30, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    .line 375
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .line 376
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-result-object v28

    sget-object v30, Lcom/android/internal/telephony/PhoneFactory;->mBaseHandler:Landroid/os/Handler;

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerForSwitchPhone(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 391
    :cond_16
    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    sput-object v28, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 392
    const-string v28, "PhoneFactory"

    const-string v30, "CP_COMM: CDMAPhone is the preferred phone."

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_9

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "current_data_network"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    return-void
.end method

.method private static makePhone(Landroid/content/Context;III)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cdmaSubscription"    # I
    .param p2, "commType"    # I
    .param p3, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    .line 555
    const/4 v1, 0x0

    .line 556
    .local v1, "tempRil":Lcom/android/internal/telephony/CommandsInterface;
    const/4 v0, 0x0

    .line 558
    .local v0, "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    if-ne v4, p3, :cond_0

    .line 559
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 563
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 603
    :goto_1
    if-ne v4, p3, :cond_2

    .line 604
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 608
    :goto_2
    return-void

    .line 561
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    goto :goto_0

    .line 565
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 573
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 574
    .restart local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 567
    :pswitch_1
    const-string v2, "PhoneFactory"

    const-string v3, "Creating CDMALTEPhone"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .end local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 569
    .restart local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 581
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 582
    .restart local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 585
    :pswitch_3
    if-ne v4, p3, :cond_1

    .line 586
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 594
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 595
    .restart local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 588
    :pswitch_4
    const-string v2, "PhoneFactory"

    const-string v3, "Creating CDMALTEPhone"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .end local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 590
    .restart local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 598
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .restart local v0    # "tempPhone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 606
    :cond_2
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_2

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 565
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 586
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method private static makeRil(Landroid/content/Context;III)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cdmaSubscription"    # I
    .param p2, "commType"    # I
    .param p3, "phoneId"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, "tempRil":Lcom/android/internal/telephony/CommandsInterface;
    packed-switch p2, :pswitch_data_0

    .line 638
    :goto_0
    if-ne v1, p3, :cond_1

    .line 639
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 643
    :goto_1
    return-void

    .line 615
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/RIL;

    .end local v0    # "tempRil":Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v0, p0, v2, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .line 617
    .restart local v0    # "tempRil":Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_0

    .line 621
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/RIL;

    .end local v0    # "tempRil":Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v0, p0, v1, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .line 623
    .restart local v0    # "tempRil":Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_0

    .line 626
    :pswitch_2
    if-ne v1, p3, :cond_0

    .line 627
    new-instance v0, Lcom/android/internal/telephony/RIL;

    .end local v0    # "tempRil":Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v0, p0, v2, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .restart local v0    # "tempRil":Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_0

    .line 630
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RIL;

    .end local v0    # "tempRil":Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v0, p0, v1, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .restart local v0    # "tempRil":Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_0

    .line 641
    :cond_1
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    goto :goto_1

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 502
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method private static registerEventForCdmaAndLte()V
    .locals 6

    .prologue
    const v5, 0x42074

    const v4, 0x42070

    const/4 v3, 0x0

    .line 409
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v2, 0x4206e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForSetupDataCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 411
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForCdmaNotifyMeid(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 412
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v2, 0x4206f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForDataCallRst(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 414
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForDSDisconnectDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 416
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForDSDisconnectDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v2, 0x42073

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForCdmaDSDormant(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 420
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 421
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 422
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVIAStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 423
    return-void
.end method

.method public static switchPhone(Ljava/lang/String;)V
    .locals 5
    .param p0, "phoneType"    # Ljava/lang/String;

    .prologue
    .line 647
    const-string v2, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchPhone()  phoneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v1, 0x0

    .line 649
    .local v1, "newPhoneType":I
    const/4 v0, 0x1

    .line 651
    .local v0, "isCardCheckOk":Z
    const-string v2, "cdma"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    const/4 v1, 0x1

    .line 653
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->delateAndCreatePhone(I)V

    .line 668
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->broadcastSwithPhoneDone()V

    .line 669
    :cond_0
    return-void

    .line 654
    :cond_1
    const-string v2, "gsm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    const/4 v1, 0x2

    .line 656
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->delateAndCreatePhone(I)V

    goto :goto_0

    .line 657
    :cond_2
    const-string v2, "bothPhone"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 658
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->delateBothPhone()V

    .line 659
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->makeBothPhone()V

    .line 660
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlotId()V

    goto :goto_0

    .line 661
    :cond_3
    const-string v2, "none"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    const/4 v0, 0x0

    .line 663
    const/4 v1, 0x2

    .line 664
    invoke-static {v1, v0}, Lcom/android/internal/telephony/PhoneFactory;->delateAndCreatePhone(IZ)V

    goto :goto_0
.end method
