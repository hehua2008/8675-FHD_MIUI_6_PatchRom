.class Landroid/widget/Editor$SelectionActionModeCallback$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SelectionActionModeCallback;

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SelectionActionModeCallback;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 3014
    iput-object p1, p0, Landroid/widget/Editor$SelectionActionModeCallback$1;->this$1:Landroid/widget/Editor$SelectionActionModeCallback;

    iput-object p2, p0, Landroid/widget/Editor$SelectionActionModeCallback$1;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3017
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback$1;->this$1:Landroid/widget/Editor$SelectionActionModeCallback;

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3018
    return-void
.end method
