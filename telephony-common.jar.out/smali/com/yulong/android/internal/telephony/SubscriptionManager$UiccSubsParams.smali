.class Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccSubsParams"
.end annotation


# instance fields
.field public app3gpp2AppStatus:Ljava/lang/String;

.field public app3gpp2Id:I

.field public app3gppAppStatus:Ljava/lang/String;

.field public app3gppId:I

.field public appType:Ljava/lang/String;

.field msg:Landroid/os/Message;

.field public subId:I

.field public subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;ILcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p2, "sub"    # I
    .param p3, "status"    # Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;
    .param p4, "appIndexType"    # Ljava/lang/String;
    .param p5, "app3gppIndexId"    # I
    .param p6, "app3gpp2IndexId"    # I
    .param p7, "app3gppStatus"    # Ljava/lang/String;
    .param p8, "app3gpp2Status"    # Ljava/lang/String;
    .param p9, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->this$0:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    .line 44
    iput-object p3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 45
    iput-object p4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->appType:Ljava/lang/String;

    .line 46
    iput p5, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppId:I

    .line 47
    iput p6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2Id:I

    .line 48
    iput-object p7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    .line 50
    iput-object p9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    .line 51
    return-void
.end method
