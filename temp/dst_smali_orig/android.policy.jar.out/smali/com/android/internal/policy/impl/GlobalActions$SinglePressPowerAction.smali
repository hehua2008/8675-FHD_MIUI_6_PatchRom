.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressPowerAction"
.end annotation


# instance fields
.field private TipsView:Landroid/widget/TextView;

.field private final mIconResId:I

.field private final mMessageGoOnPressTipsId:I

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I
    .param p3, "goOnPressTipsResId"    # I
    .param p4, "resetTipsResId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mIconResId:I

    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mMessageResId:I

    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mMessageGoOnPressTipsId:I

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x69

    const v4, 0x1090045

    invoke-virtual {p4, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .local v3, "v":Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, "icon":Landroid/widget/ImageView;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "messageView":Landroid/widget/TextView;
    const v4, 0x1020299

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->isEnabled()Z

    move-result v0

    .local v0, "enabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mIconResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mMessageResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->mMessageGoOnPressTipsId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressPowerAction;->TipsView:Landroid/widget/TextView;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    return-object v3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
