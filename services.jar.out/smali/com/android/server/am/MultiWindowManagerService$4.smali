.class Lcom/android/server/am/MultiWindowManagerService$4;
.super Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowManagerService;->initHideFloatBtnObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$4;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService$SettingsObserver;-><init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public notifyOnChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$4;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$4;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHideFloatBtnAPPs:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/am/MultiWindowManagerService;->updateAppList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public onInit(Ljava/lang/String;)V
    .locals 2
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$4;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$4;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHideFloatBtnAPPs:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/am/MultiWindowManagerService;->updateAppList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 289
    return-void
.end method
