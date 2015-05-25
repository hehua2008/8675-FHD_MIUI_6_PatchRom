.class Lcom/android/internal/telephony/RIL$1$1;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RIL$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/RIL$1;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL$1;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$1$1;->this$1:Lcom/android/internal/telephony/RIL$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$1$1;->this$1:Lcom/android/internal/telephony/RIL$1;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;Z)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$1$1;->this$1:Lcom/android/internal/telephony/RIL$1;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mPhoneId:I

    if-ne v1, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$1$1;->this$1:Lcom/android/internal/telephony/RIL$1;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v1, "screen on cancelAwakeAlarm"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$1$1;->this$1:Lcom/android/internal/telephony/RIL$1;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->cancelAwakeAlarm()V
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)V

    .line 354
    :cond_0
    return-void
.end method
