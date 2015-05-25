.class Lcom/android/server/pm/PackageManagerService$14$1;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$14;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$14;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$14;)V
    .locals 0

    .prologue
    .line 13637
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$14$1;->this$1:Lcom/android/server/pm/PackageManagerService$14;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 13640
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$14$1;->this$1:Lcom/android/server/pm/PackageManagerService$14;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->updatePushPackage()V
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;)V

    .line 13641
    return-void
.end method
