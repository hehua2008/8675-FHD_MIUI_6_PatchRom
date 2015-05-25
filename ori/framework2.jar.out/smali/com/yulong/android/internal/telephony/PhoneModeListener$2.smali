.class Lcom/yulong/android/internal/telephony/PhoneModeListener$2;
.super Landroid/os/Handler;
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
    .line 64
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeListener$2;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeListener$2;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yulong/android/internal/telephony/PhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeListener$2;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yulong/android/internal/telephony/PhoneModeListener;->onQueryPukResult(IILjava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_3
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeListener$2;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yulong/android/internal/telephony/PhoneModeListener;->onSelectNetResult(IILjava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
