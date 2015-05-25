.class Lcom/yulong/android/internal/telephony/PhoneModeListener$1;
.super Lcom/yulong/android/internal/telephony/IPhoneModeListener$Stub;
.source "PhoneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/PhoneModeListener;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeListener;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeListener$1;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeListener;

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPinResult(IILjava/lang/String;)V
    .locals 2
    .param p1, "pinLeft"    # I
    .param p2, "slotId"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeListener$1;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeListener;

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 48
    return-void
.end method

.method public onQueryPukResult(IILjava/lang/String;)V
    .locals 2
    .param p1, "pukLeft"    # I
    .param p2, "slotId"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeListener$1;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeListener;

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    return-void
.end method

.method public onSelectNetResult(IILjava/lang/String;)V
    .locals 2
    .param p1, "cdmaRadio"    # I
    .param p2, "gsmRadio"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeListener$1;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeListener;

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    return-void
.end method
