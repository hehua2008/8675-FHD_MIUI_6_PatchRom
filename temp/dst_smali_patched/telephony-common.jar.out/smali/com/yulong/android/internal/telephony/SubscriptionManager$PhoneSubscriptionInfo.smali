.class Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneSubscriptionInfo"
.end annotation


# instance fields
.field public msg:Landroid/os/Message;

.field public sub:Lcom/yulong/android/internal/telephony/Subscription;

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/SubscriptionManager;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->this$0:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;Lcom/yulong/android/internal/telephony/Subscription;Landroid/os/Message;)V
    .locals 0
    .param p2, "sub"    # Lcom/yulong/android/internal/telephony/Subscription;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->this$0:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/yulong/android/internal/telephony/Subscription;

    iput-object p3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->msg:Landroid/os/Message;

    return-void
.end method
