.class Lcom/android/server/RecordRebootReasonReceiver$1;
.super Ljava/lang/Thread;
.source "RecordRebootReasonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/RecordRebootReasonReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecordRebootReasonReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/RecordRebootReasonReceiver;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/RecordRebootReasonReceiver$1;->this$0:Lcom/android/server/RecordRebootReasonReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/RecordRebootReasonReceiver$1;->this$0:Lcom/android/server/RecordRebootReasonReceiver;

    # invokes: Lcom/android/server/RecordRebootReasonReceiver;->writeRebootTypeLog()V
    invoke-static {v0}, Lcom/android/server/RecordRebootReasonReceiver;->access$000(Lcom/android/server/RecordRebootReasonReceiver;)V

    .line 60
    return-void
.end method
