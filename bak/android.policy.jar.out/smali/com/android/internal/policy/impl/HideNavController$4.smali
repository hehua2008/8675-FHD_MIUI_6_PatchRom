.class Lcom/android/internal/policy/impl/HideNavController$4;
.super Ljava/lang/Object;
.source "HideNavController.java"

# interfaces
.implements Landroid/view/InputEventReceiver$Factory;


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
    .line 338
    iput-object p1, p0, Lcom/android/internal/policy/impl/HideNavController$4;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 342
    new-instance v0, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/HideNavController$4;->this$0:Lcom/android/internal/policy/impl/HideNavController;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/policy/impl/HideNavController$ShowNavInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/HideNavController;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method
