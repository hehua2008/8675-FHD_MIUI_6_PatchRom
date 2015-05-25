.class Landroid/view/View$3;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->destroyLayer(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 13152
    iput-object p1, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 13155
    iget-object v0, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    # getter for: Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;
    invoke-static {v0}, Landroid/view/View;->access$2400(Landroid/view/View;)Landroid/view/HardwareLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 13156
    iget-object v0, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    const/4 v1, 0x0

    # setter for: Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;
    invoke-static {v0, v1}, Landroid/view/View;->access$2402(Landroid/view/View;Landroid/view/HardwareLayer;)Landroid/view/HardwareLayer;

    .line 13158
    iget-object v0, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 13159
    iget-object v0, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->reset()V

    .line 13161
    :cond_0
    iget-object v0, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 13162
    iget-object v0, p0, Landroid/view/View$3;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateParentCaches()V

    .line 13163
    return-void
.end method
