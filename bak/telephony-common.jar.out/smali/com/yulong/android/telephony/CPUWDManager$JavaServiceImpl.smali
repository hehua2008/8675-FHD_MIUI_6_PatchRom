.class Lcom/yulong/android/telephony/CPUWDManager$JavaServiceImpl;
.super Lcom/yulong/android/uwservice/IUWJavaService$Stub;
.source "CPUWDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/CPUWDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JavaServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/CPUWDManager;


# direct methods
.method constructor <init>(Lcom/yulong/android/telephony/CPUWDManager;)V
    .locals 0

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/yulong/android/telephony/CPUWDManager$JavaServiceImpl;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-direct {p0}, Lcom/yulong/android/uwservice/IUWJavaService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRasCallback(III)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "rasConnStats"    # I
    .param p3, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2035
    const-string v0, "CP_COMM:CPUWDManager"

    const-string v1, "onRasCallback1"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-object v0, p0, Lcom/yulong/android/telephony/CPUWDManager$JavaServiceImpl;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v0, p2, p3}, Lcom/yulong/android/telephony/CPUWDManager;->dispatchLinkStateMsg(II)V

    .line 2037
    const-string v0, "CP_COMM:CPUWDManager"

    const-string v1, "onRasCallback"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    return-void
.end method
