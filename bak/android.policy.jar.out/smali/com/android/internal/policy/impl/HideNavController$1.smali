.class Lcom/android/internal/policy/impl/HideNavController$1;
.super Landroid/os/Handler;
.source "HideNavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HideNavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/HideNavController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HideNavController;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/HideNavController$1;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 90
    return-void
.end method
