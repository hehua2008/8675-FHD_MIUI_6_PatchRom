.class Lcom/yulong/android/telephony/CPUWDManager$DefaultDataNetworkChangeObserver;
.super Landroid/database/ContentObserver;
.source "CPUWDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/CPUWDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultDataNetworkChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/CPUWDManager;


# direct methods
.method public constructor <init>(Lcom/yulong/android/telephony/CPUWDManager;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/yulong/android/telephony/CPUWDManager$DefaultDataNetworkChangeObserver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    .line 292
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 293
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager$DefaultDataNetworkChangeObserver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget-object v1, p0, Lcom/yulong/android/telephony/CPUWDManager$DefaultDataNetworkChangeObserver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/telephony/CPUWDManager;->sendMessage(Landroid/os/Message;)Z

    .line 298
    return-void
.end method
