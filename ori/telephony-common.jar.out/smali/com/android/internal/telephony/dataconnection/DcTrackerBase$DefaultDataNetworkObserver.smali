.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DefaultDataNetworkObserver;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultDataNetworkObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    .line 2298
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DefaultDataNetworkObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 2299
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2300
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "change"    # Z

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DefaultDataNetworkObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DefaultDataNetworkObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2304
    return-void
.end method
