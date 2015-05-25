.class public Lcom/android/internal/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 766
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 767
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 770
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 771
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 774
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 775
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v11, 0x0

    .line 786
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 790
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 791
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 792
    .local v1, "itemCnt":I
    const/4 v8, 0x7

    if-le v1, v8, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getMeasuredHeightAndState()I

    move-result v3

    .line 794
    .local v3, "listMeasureHeight":I
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getMeasuredWidthAndState()I

    move-result v4

    .line 796
    .local v4, "listMeasureWidth":I
    const/4 v8, 0x0

    invoke-interface {v0, v11, v8, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 797
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 798
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_0

    .line 799
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 807
    .local v6, "mywidthMeasureSpec":I
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 809
    .local v5, "myheightMeasureSpec":I
    invoke-virtual {v7, v6, v5}, Landroid/view/View;->measure(II)V

    .line 810
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x40f66666    # 7.7f

    mul-float/2addr v8, v9

    float-to-int v2, v8

    .line 812
    .local v2, "listMaxHeight":I
    if-le v3, v2, :cond_1

    .line 813
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setMeasuredDimension(II)V

    .line 818
    .end local v2    # "listMaxHeight":I
    .end local v3    # "listMeasureHeight":I
    .end local v4    # "listMeasureWidth":I
    .end local v5    # "myheightMeasureSpec":I
    .end local v6    # "mywidthMeasureSpec":I
    .end local v7    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
