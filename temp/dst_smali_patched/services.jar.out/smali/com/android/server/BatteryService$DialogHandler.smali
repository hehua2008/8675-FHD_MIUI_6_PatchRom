.class Lcom/android/server/BatteryService$DialogHandler;
.super Landroid/os/Handler;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogHandler"
.end annotation


# static fields
.field public static final DIALOG_EVENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mTempDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mTempDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/BatteryService;->mTempDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/BatteryService;->mShowShutdownDialog:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$702(Lcom/android/server/BatteryService;Z)Z

    iget-object v1, p0, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mTempDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x10400c5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10400bd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/server/BatteryService$DialogHandler$2;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$DialogHandler$2;-><init>(Lcom/android/server/BatteryService$DialogHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/android/server/BatteryService$DialogHandler$1;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$DialogHandler$1;-><init>(Lcom/android/server/BatteryService$DialogHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/android/server/BatteryService$DialogHandler;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mTempDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    monitor-exit p0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
