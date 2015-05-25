.class Lcom/yulong/android/internal/telephony/PhoneModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->isShutDown:Z
    invoke-static {v1, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$002(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z

    .line 410
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 411
    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 413
    :cond_0
    return-void
.end method
