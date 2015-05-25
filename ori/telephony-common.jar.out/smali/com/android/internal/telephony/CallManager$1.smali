.class Lcom/android/internal/telephony/CallManager$1;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {p2}, Lcom/redbend/vlm/IOtherDomainInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/redbend/vlm/IOtherDomainInfo;

    move-result-object v1

    # setter for: Lcom/android/internal/telephony/CallManager;->mOtherDomainInfo:Lcom/redbend/vlm/IOtherDomainInfo;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallManager;->access$002(Lcom/android/internal/telephony/CallManager;Lcom/redbend/vlm/IOtherDomainInfo;)Lcom/redbend/vlm/IOtherDomainInfo;

    .line 202
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/CallManager;->mOtherDomainInfo:Lcom/redbend/vlm/IOtherDomainInfo;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallManager;->access$002(Lcom/android/internal/telephony/CallManager;Lcom/redbend/vlm/IOtherDomainInfo;)Lcom/redbend/vlm/IOtherDomainInfo;

    .line 205
    return-void
.end method
