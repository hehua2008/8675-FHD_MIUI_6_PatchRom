.class Landroid/widget/Editor$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 2978
    iput-object p1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 2978
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v9, 0x105003c

    const/4 v8, 0x1

    .line 2982
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2983
    .local v2, "outValue1":Landroid/util/TypedValue;
    const v4, 0x10803b2

    .line 2984
    .local v4, "resid":I
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101030e

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 2986
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    .line 2989
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 2990
    .local v3, "outValue2":Landroid/util/TypedValue;
    const/high16 v0, -0x1000000

    .line 2991
    .local v0, "color":I
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010361

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_1

    .line 2994
    iget v0, v3, Landroid/util/TypedValue;->data:I

    .line 2997
    :cond_1
    new-instance v5, Landroid/widget/TextImage;

    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextImage;-><init>(Landroid/content/Context;)V

    .line 2998
    .local v5, "textImg":Landroid/widget/TextImage;
    invoke-virtual {v5}, Landroid/widget/TextImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2999
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 3000
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v1, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3003
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {v5, v1}, Landroid/widget/TextImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3004
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setMinimumWidth(I)V

    .line 3005
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setMinimumHeight(I)V

    .line 3006
    const v6, 0x1050086

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setTextSizeResource(I)V

    .line 3007
    invoke-virtual {v5, v0}, Landroid/widget/TextImage;->setTextColor(I)V

    .line 3008
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setGravity(I)V

    .line 3009
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    .line 3010
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setText(Ljava/lang/CharSequence;)V

    .line 3011
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setEnabled(Z)V

    .line 3012
    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setClickable(Z)V

    .line 3013
    invoke-virtual {v5, v4}, Landroid/widget/TextImage;->setBackgroundResource(I)V

    .line 3014
    new-instance v6, Landroid/widget/Editor$SelectionActionModeCallback$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/Editor$SelectionActionModeCallback$1;-><init>(Landroid/widget/Editor$SelectionActionModeCallback;Landroid/view/MenuItem;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3021
    return-object v5
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3172
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3174
    const/4 v0, 0x1

    .line 3176
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 21
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    sget-object v18, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 3030
    .local v14, "styledAttributes":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x10403e6

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3032
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3033
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 3047
    const/16 v16, 0x0

    .line 3049
    .local v16, "ylActionModeCustomViewEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string/jumbo v18, "ylActionModeCustomViewEnabled"

    const-string v19, "attr"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 3051
    .local v5, "configId":I
    if-lez v5, :cond_0

    .line 3052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 3054
    .local v15, "ta":Landroid/content/res/TypedArray;
    if-eqz v15, :cond_0

    .line 3055
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 3056
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 3061
    .end local v15    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    if-eqz v16, :cond_4

    .line 3062
    const/16 v17, 0x0

    const v18, 0x102001f

    const/16 v19, 0x0

    const v20, 0x104000d

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    .line 3063
    .local v13, "mSelectAllItem":Landroid/view/MenuItem;
    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x61

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3069
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v12

    .line 3070
    .local v12, "mSelectAllActionView":Landroid/widget/TextImage;
    invoke-interface {v13, v12}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 3080
    .end local v12    # "mSelectAllActionView":Landroid/widget/TextImage;
    .end local v13    # "mSelectAllItem":Landroid/view/MenuItem;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->canCut()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 3081
    if-eqz v16, :cond_5

    .line 3082
    const/16 v17, 0x0

    const v18, 0x1020020

    const/16 v19, 0x0

    const v20, 0x1040003

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    .line 3083
    .local v9, "mCutItem":Landroid/view/MenuItem;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x78

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3089
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v8

    .line 3090
    .local v8, "mCutActionView":Landroid/widget/TextImage;
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 3101
    .end local v8    # "mCutActionView":Landroid/widget/TextImage;
    .end local v9    # "mCutItem":Landroid/view/MenuItem;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->canCopy()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3102
    if-eqz v16, :cond_6

    .line 3103
    const/16 v17, 0x0

    const v18, 0x1020021

    const/16 v19, 0x0

    const v20, 0x1040001

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 3104
    .local v7, "mCopyItem":Landroid/view/MenuItem;
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x63

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3110
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v6

    .line 3111
    .local v6, "mCopyActionView":Landroid/widget/TextImage;
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 3122
    .end local v6    # "mCopyActionView":Landroid/widget/TextImage;
    .end local v7    # "mCopyItem":Landroid/view/MenuItem;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->canPaste()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3123
    if-eqz v16, :cond_7

    .line 3124
    const/16 v17, 0x0

    const v18, 0x1020022

    const/16 v19, 0x0

    const v20, 0x104000b

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    .line 3125
    .local v11, "mPasteItem":Landroid/view/MenuItem;
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x76

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3131
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v10

    .line 3132
    .local v10, "mPasteActionView":Landroid/widget/TextImage;
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 3144
    .end local v10    # "mPasteActionView":Landroid/widget/TextImage;
    .end local v11    # "mPasteItem":Landroid/view/MenuItem;
    :cond_3
    :goto_3
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 3146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 3147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 3149
    const/16 v17, 0x0

    .line 3158
    :goto_4
    return v17

    .line 3072
    :cond_4
    const/16 v17, 0x0

    const v18, 0x102001f

    const/16 v19, 0x0

    const v20, 0x104000d

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x61

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 3092
    :cond_5
    const/16 v17, 0x0

    const v18, 0x1020020

    const/16 v19, 0x0

    const v20, 0x1040003

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x78

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 3113
    :cond_6
    const/16 v17, 0x0

    const v18, 0x1020021

    const/16 v19, 0x0

    const v20, 0x1040001

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x63

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_2

    .line 3134
    :cond_7
    const/16 v17, 0x0

    const v18, 0x1020022

    const/16 v19, 0x0

    const v20, 0x104000b

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x2

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x76

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v17

    const/16 v18, 0x6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3

    .line 3153
    :cond_8
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 3154
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 3155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3156
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 3158
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 3181
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3182
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3190
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v0, :cond_1

    .line 3191
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3193
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3196
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    .line 3197
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3200
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 3201
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3164
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3165
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 3167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
