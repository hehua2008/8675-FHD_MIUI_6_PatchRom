.class Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
.super Ljava/lang/Object;
.source "AssistantBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssistantBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoCloseDialog"
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 433
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->dialog:Landroid/app/Dialog;

    .line 434
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/AssistantBatteryService$AutoCloseDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public dissmissDialog()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public isDialogShow()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 438
    new-instance v0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/AssistantBatteryService$AutoCloseDialog$1;-><init>(Lcom/android/server/AssistantBatteryService$AutoCloseDialog;)V

    .line 444
    .local v0, "runner":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 445
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 446
    return-void
.end method
