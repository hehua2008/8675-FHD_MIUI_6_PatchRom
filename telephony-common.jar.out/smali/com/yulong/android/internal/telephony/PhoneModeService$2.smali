.class Lcom/yulong/android/internal/telephony/PhoneModeService$2;
.super Ljava/lang/Thread;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlotId()V
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
    .line 4155
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 4157
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    .line 4158
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    .line 4159
    return-void
.end method
