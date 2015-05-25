.class Lcom/android/server/am/ActivityStackSupervisor$2;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStackSupervisor;->switchStackStatusIfNeedLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;

.field final synthetic val$checkAr:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;)V
    .locals 0

    .prologue
    .line 3205
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$checkAr:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$checkAr:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->hideFloatBtnIfNeed(Lcom/android/server/am/ActivityRecord;)Z

    .line 3209
    return-void
.end method
