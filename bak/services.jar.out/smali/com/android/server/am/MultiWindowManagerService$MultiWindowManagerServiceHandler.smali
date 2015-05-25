.class final Lcom/android/server/am/MultiWindowManagerService$MultiWindowManagerServiceHandler;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiWindowManagerServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowManagerServiceHandler;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    .line 56
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const-string v0, "ActivityManager_MultiWindow"

    const-string v1, "LISTENER_TIMEOUT_MSG, unregisterAppListChangeListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowManagerServiceHandler;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->unregisterAppListChangeListener(Z)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1335129
        :pswitch_0
    .end packed-switch
.end method
