.class public Landroid/content/res/Resources$YLTypedArray;
.super Landroid/content/res/TypedArray;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YLTypedArray"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources;[I[II)V
    .locals 0
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "data"    # [I
    .param p4, "indices"    # [I
    .param p5, "len"    # I

    .prologue
    iput-object p1, p0, Landroid/content/res/Resources$YLTypedArray;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/res/Resources$YLTypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources$YLTypedArray;->mValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources$YLTypedArray;->mValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources$YLTypedArray;->this$0:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/res/Resources$YLTypedArray;->mValue:Landroid/util/TypedValue;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    # invokes: Landroid/content/res/Resources;->getYLThemeString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/content/res/Resources;->access$200(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/res/Resources$YLTypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources$YLTypedArray;->mValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources$YLTypedArray;->mValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources$YLTypedArray;->this$0:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/res/Resources$YLTypedArray;->mValue:Landroid/util/TypedValue;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    # invokes: Landroid/content/res/Resources;->getYLThemeString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/content/res/Resources;->access$200(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
