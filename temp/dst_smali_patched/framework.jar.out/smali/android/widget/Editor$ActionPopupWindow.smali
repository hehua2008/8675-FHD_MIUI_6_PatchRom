.class Landroid/widget/Editor$ActionPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900ad


# instance fields
.field private mClipBoardTextView:Landroid/widget/TextView;

.field private mInputMethodTextView:Landroid/widget/TextView;

.field private mPasteTextView:Landroid/widget/TextView;

.field private mReplaceTextView:Landroid/widget/TextView;

.field private mSelectionTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 6
    .param p1, "positionY"    # I

    .prologue
    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->getTextOffset()I

    move-result v3

    .local v3, "offset":I
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr p1, v4

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int/2addr p1, v4

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    iget v5, v5, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "handle":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr p1, v4

    .end local v0    # "handle":Landroid/graphics/drawable/Drawable;
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "offset":I
    :cond_0
    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 17

    .prologue
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v5, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v13, 0x108062e

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .local v3, "inflater":Landroid/view/LayoutInflater;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v11, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .local v7, "outValue":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    const v13, 0x101030e

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v7, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    .local v8, "resid":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .local v6, "metrics":Landroid/util/DisplayMetrics;
    const/4 v12, 0x1

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v12, v13, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v4, v12

    .local v4, "left":I
    const/4 v12, 0x1

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v12, v13, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v10, v12

    .local v10, "top":I
    const/4 v12, 0x1

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v12, v13, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v9, v12

    .local v9, "right":I
    const/4 v12, 0x1

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v12, v13, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v1, v12

    .local v1, "bottom":I
    const/4 v12, 0x1

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v12, v13, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v2, v12

    .local v2, "drawablePadding":I
    const v12, 0x10900ad

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v4, v10, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    const/4 v13, 0x0

    const v14, 0x108083c

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    const v13, 0x1040683

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x10900ad

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v4, v10, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const/4 v13, 0x0

    const v14, 0x108083a

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v13, 0x104000b

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x10900ad

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v4, v10, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    const/4 v13, 0x0

    const v14, 0x1080838

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    const v13, 0x1040682

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x10900ad

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v4, v10, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const/4 v13, 0x0

    const v14, 0x108083b

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v13, 0x10403e4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x10900ad

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v4, v10, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    const/4 v13, 0x0

    const v14, 0x1080839

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    const v13, 0x1040684

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020022

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .local v0, "middle":I
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopSelectionActionMode()V

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->showSuggestions()V

    goto :goto_0

    .end local v0    # "middle":I
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v1, v1, Landroid/widget/TextView;->mUseYlSelectionMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->showClipBoard()V

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v1, v1, Landroid/widget/TextView;->mUseYlSelectionMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->hideClipBoard()V

    :cond_4
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->switchInputMethod()V

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0
.end method

.method public show()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    .local v0, "canPaste":Z
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v8}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v5

    .local v4, "canSuggest":Z
    :goto_0
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->hasSelection()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    iget-boolean v8, v8, Landroid/widget/TextView;->mNotStartSelectionMode:Z

    if-nez v8, :cond_2

    move v1, v5

    .local v1, "canSelectText":Z
    :goto_1
    if-eqz v1, :cond_3

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    iget-boolean v8, v8, Landroid/widget/TextView;->mShowInputMethodActionPopup:Z

    if-eqz v8, :cond_3

    move v3, v5

    .local v3, "canShowInputMethod":Z
    :goto_2
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->canPaste()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->hasTextInClipboardList()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_0
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    iget-boolean v8, v8, Landroid/widget/TextView;->mUseYlSelectionMode:Z

    if-eqz v8, :cond_4

    move v2, v5

    .local v2, "canShowClipBoard":Z
    :goto_3
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipBoardTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mInputMethodTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v0, :cond_a

    if-nez v4, :cond_a

    if-nez v2, :cond_a

    if-nez v3, :cond_a

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_9
    return-void

    .end local v1    # "canSelectText":Z
    .end local v2    # "canShowClipBoard":Z
    .end local v3    # "canShowInputMethod":Z
    .end local v4    # "canSuggest":Z
    :cond_1
    move v4, v6

    goto/16 :goto_0

    .restart local v4    # "canSuggest":Z
    :cond_2
    move v1, v6

    goto :goto_1

    .restart local v1    # "canSelectText":Z
    :cond_3
    move v3, v6

    goto :goto_2

    .restart local v3    # "canShowInputMethod":Z
    :cond_4
    move v2, v6

    goto :goto_3

    .restart local v2    # "canShowClipBoard":Z
    :cond_5
    move v5, v7

    goto :goto_4

    :cond_6
    move v5, v7

    goto :goto_5

    :cond_7
    move v5, v7

    goto :goto_6

    :cond_8
    move v5, v7

    goto :goto_7

    :cond_9
    move v5, v7

    goto :goto_8

    :cond_a
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    goto :goto_9
.end method
