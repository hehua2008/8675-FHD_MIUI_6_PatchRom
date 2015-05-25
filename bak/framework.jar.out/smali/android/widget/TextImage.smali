.class public Landroid/widget/TextImage;
.super Landroid/view/View;
.source "TextImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextImage$1;
    }
.end annotation


# static fields
.field public static final ICON_POSITION_BOTTOM:I = 0x4

.field public static final ICON_POSITION_LEFT:I = 0x1

.field public static final ICON_POSITION_RIGHT:I = 0x3

.field public static final ICON_POSITION_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TextImage"


# instance fields
.field private mAlign:Landroid/graphics/Paint$Align;

.field private mCharHeightToShow:I

.field private mCharWidthToShow:I

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mGravity:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconPosition:I

.field private mIconWidth:I

.field private mPaintNormal:Landroid/graphics/Paint;

.field private mTempRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mTextString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    .line 34
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 36
    const/high16 v14, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mTextSize:F

    .line 42
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mIconPosition:I

    .line 44
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 48
    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    .line 50
    const/16 v14, 0x11

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mGravity:I

    .line 52
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mIconWidth:I

    .line 54
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mIconHeight:I

    .line 56
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mCharWidthToShow:I

    .line 58
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mCharHeightToShow:I

    .line 60
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    .line 74
    .local v13, "theme":Landroid/content/res/Resources$Theme;
    sget-object v14, Lcom/android/internal/R$styleable;->TextView:[I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v0, v14, v1, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 77
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    .line 79
    .local v11, "text":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 80
    .local v10, "n":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 81
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 83
    .local v3, "attr":I
    sparse-switch v3, :sswitch_data_0

    .line 80
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 85
    :sswitch_0
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 86
    goto :goto_1

    .line 88
    :sswitch_1
    const/4 v8, 0x3

    .line 89
    .local v8, "ellipsize":I
    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 90
    packed-switch v8, :pswitch_data_0

    .line 101
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 92
    :pswitch_0
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 95
    :pswitch_1
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 98
    :pswitch_2
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 107
    .end local v8    # "ellipsize":I
    :sswitch_2
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 110
    :sswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextImage;->mTextSize:F

    float-to-int v12, v14

    .line 112
    .local v12, "textsize":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v12}, Landroid/widget/TextImage;->complexToDimensionPixelSize(Landroid/content/res/TypedArray;II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mTextSize:F

    goto :goto_1

    .line 116
    .end local v12    # "textsize":I
    :sswitch_4
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 117
    .local v5, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 121
    .end local v5    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    :sswitch_5
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 122
    .local v7, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 126
    .end local v7    # "drawableTop":Landroid/graphics/drawable/Drawable;
    :sswitch_6
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 127
    .local v6, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 131
    .end local v6    # "drawableRight":Landroid/graphics/drawable/Drawable;
    :sswitch_7
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 132
    .local v4, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 135
    .end local v4    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    :sswitch_8
    const/4 v14, -0x1

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TextImage;->setGravity(I)V

    goto :goto_1

    .line 139
    .end local v3    # "attr":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    if-eqz v11, :cond_1

    .line 142
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/TextImage;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/TextImage;->init(Landroid/content/Context;)V

    .line 146
    return-void

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_8
        0x12 -> :sswitch_0
        0x30 -> :sswitch_5
        0x31 -> :sswitch_7
        0x32 -> :sswitch_4
        0x33 -> :sswitch_6
    .end sparse-switch

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private applyDimension(IF)I
    .locals 10
    .param p1, "unit"    # I
    .param p2, "value"    # F

    .prologue
    const/4 v9, 0x0

    .line 730
    invoke-virtual {p0}, Landroid/widget/TextImage;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 733
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 734
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 739
    .local v3, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 741
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/4 v4, 0x0

    .line 743
    .local v4, "result":F
    packed-switch p1, :pswitch_data_0

    .line 770
    :goto_1
    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v7, v4

    float-to-int v5, v7

    .line 771
    .local v5, "rtvalue":I
    if-eqz v5, :cond_2

    .line 783
    .end local v5    # "rtvalue":I
    :goto_2
    return v5

    .line 736
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "result":F
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .restart local v3    # "r":Landroid/content/res/Resources;
    goto :goto_0

    .line 745
    .restart local v2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "result":F
    :pswitch_0
    move v4, p2

    .line 746
    goto :goto_1

    .line 748
    :pswitch_1
    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, p2, v7

    .line 749
    goto :goto_1

    .line 751
    :pswitch_2
    iget v6, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 752
    .local v6, "usedScaledDensity":F
    const/high16 v7, 0x3fc00000    # 1.5f

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v7, v8

    .line 754
    .local v1, "maxScaledDensity":F
    cmpl-float v7, v6, v1

    if-lez v7, :cond_1

    .line 755
    move v6, v1

    .line 757
    :cond_1
    mul-float v4, p2, v6

    .line 758
    goto :goto_1

    .line 760
    .end local v1    # "maxScaledDensity":F
    .end local v6    # "usedScaledDensity":F
    :pswitch_3
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v7, p2

    const v8, 0x3c638e39

    mul-float v4, v7, v8

    .line 761
    goto :goto_1

    .line 763
    :pswitch_4
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float v4, p2, v7

    .line 764
    goto :goto_1

    .line 766
    :pswitch_5
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v7, p2

    const v8, 0x3d214285

    mul-float v4, v7, v8

    goto :goto_1

    .line 775
    .restart local v5    # "rtvalue":I
    :cond_2
    cmpl-float v7, p2, v9

    if-nez v7, :cond_3

    .line 776
    const/4 v5, 0x0

    goto :goto_2

    .line 779
    :cond_3
    cmpl-float v7, p2, v9

    if-lez v7, :cond_4

    .line 780
    const/4 v5, 0x1

    goto :goto_2

    .line 783
    :cond_4
    const/4 v5, -0x1

    goto :goto_2

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private complexToDimensionPixelSize(Landroid/content/res/TypedArray;II)I
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultvalue"    # I

    .prologue
    .line 708
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 710
    .local v0, "textSizeInXml":Landroid/util/TypedValue;
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 719
    .end local p3    # "defaultvalue":I
    :goto_0
    return p3

    .line 714
    .restart local p3    # "defaultvalue":I
    :cond_0
    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    .line 716
    .local v2, "userSetTextSizeValue":F
    iget v3, v0, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v1, v3, 0xf

    .line 719
    .local v1, "userSetTextSizeType":I
    invoke-direct {p0, v1, v2}, Landroid/widget/TextImage;->applyDimension(IF)I

    move-result p3

    goto :goto_0
.end method

.method private getEllipsizePosition(I)I
    .locals 9
    .param p1, "maxWidth"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 558
    const/4 v0, 0x0

    .line 560
    .local v0, "ellipsizeStringWidth":I
    iget-object v4, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    const-string v5, "..."

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 561
    iget-object v4, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 562
    if-lt v0, p1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v3

    .line 565
    :cond_1
    sub-int/2addr p1, v0

    .line 567
    sget-object v4, Landroid/widget/TextImage$1;->$SwitchMap$android$text$TextUtils$TruncateAt:[I

    iget-object v5, p0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5}, Landroid/text/TextUtils$TruncateAt;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 592
    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 594
    .local v2, "length":I
    const/4 v1, 0x0

    .line 595
    .local v1, "index":I
    :goto_1
    if-gt v1, v2, :cond_2

    .line 596
    iget-object v4, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v1, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 597
    iget-object v4, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, p1, :cond_6

    .line 603
    :cond_2
    if-eqz v1, :cond_0

    .line 607
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 610
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 570
    .end local v1    # "index":I
    .end local v2    # "length":I
    :pswitch_0
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 571
    .restart local v2    # "length":I
    add-int/lit8 v1, v2, -0x1

    .line 572
    .restart local v1    # "index":I
    :goto_2
    if-lez v1, :cond_3

    .line 573
    iget-object v3, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 574
    iget-object v3, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v3, p1, :cond_5

    .line 581
    :cond_3
    if-gez v1, :cond_4

    .line 582
    const/4 v1, 0x0

    .line 585
    :cond_4
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 588
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto/16 :goto_0

    .line 578
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 600
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 567
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextImage;->setClickable(Z)V

    .line 150
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Landroid/widget/TextImage;->mTextSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 298
    invoke-virtual {p0}, Landroid/widget/TextImage;->getHeight()I

    move-result v8

    .line 299
    .local v8, "viewHeight":I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getWidth()I

    move-result v9

    .line 301
    .local v9, "viewWidth":I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingLeft()I

    move-result v7

    .line 302
    .local v7, "paddingleft":I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingRight()I

    move-result v5

    .line 303
    .local v5, "paddingRight":I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingTop()I

    move-result v6

    .line 304
    .local v6, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingBottom()I

    move-result v4

    .line 306
    .local v4, "paddingBottom":I
    const/4 v0, 0x0

    .line 307
    .local v0, "charStartX":I
    const/4 v1, 0x0

    .line 308
    .local v1, "charStartY":I
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 310
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_3

    .line 311
    iget v10, p0, Landroid/widget/TextImage;->mIconPosition:I

    packed-switch v10, :pswitch_data_0

    .line 450
    :goto_0
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-gez v10, :cond_0

    .line 451
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 452
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 455
    :cond_0
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-gez v10, :cond_1

    .line 456
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 457
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 460
    :cond_1
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 461
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TextImage;->getDrawableState()[I

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 462
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 492
    :goto_1
    iget-object v10, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v10, :cond_2

    .line 493
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    if-eqz v10, :cond_2

    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    if-nez v10, :cond_4

    .line 508
    :cond_2
    :goto_2
    return-void

    .line 314
    :pswitch_0
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_1

    .line 325
    :goto_3
    :pswitch_1
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 327
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_0

    .line 341
    :goto_4
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 342
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->right:I

    .line 343
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 316
    :pswitch_2
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v7, v10, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 319
    :pswitch_3
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 322
    :pswitch_4
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v11, v9, v11

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 329
    :sswitch_0
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    .line 330
    move v1, v6

    .line 331
    goto :goto_4

    .line 333
    :sswitch_1
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 334
    sub-int v10, v8, v4

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    .line 335
    goto :goto_4

    .line 337
    :sswitch_2
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int v11, v8, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 338
    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    goto :goto_4

    .line 346
    :pswitch_5
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_2

    .line 357
    :goto_5
    :pswitch_6
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 359
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_1

    .line 373
    :goto_6
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 375
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->left:I

    .line 376
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto/16 :goto_0

    .line 348
    :pswitch_7
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    add-int/2addr v11, v7

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 351
    :pswitch_8
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 354
    :pswitch_9
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    iget v12, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v12, v9, v12

    iget v13, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 361
    :sswitch_3
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    .line 362
    move v1, v6

    .line 363
    goto :goto_6

    .line 365
    :sswitch_4
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 366
    sub-int v10, v8, v4

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    .line 367
    goto :goto_6

    .line 369
    :sswitch_5
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int v11, v8, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 370
    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    goto :goto_6

    .line 381
    :pswitch_a
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_3

    .line 398
    :goto_7
    :pswitch_b
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 400
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_2

    .line 411
    :goto_8
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 412
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    .line 413
    goto/16 :goto_0

    .line 383
    :pswitch_c
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v7, v10, Landroid/graphics/Rect;->left:I

    .line 384
    move v0, v7

    .line 385
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_7

    .line 388
    :pswitch_d
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 389
    sub-int v0, v9, v5

    .line 390
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_7

    .line 393
    :pswitch_e
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 394
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v10, v9, v10

    div-int/lit8 v0, v10, 0x2

    .line 395
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_7

    .line 402
    :sswitch_6
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 405
    :sswitch_7
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 408
    :sswitch_8
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v11, v8, v11

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 415
    :pswitch_f
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_4

    .line 432
    :goto_9
    :pswitch_10
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 434
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_3

    .line 445
    :goto_a
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 446
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    goto/16 :goto_0

    .line 417
    :pswitch_11
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v7, v10, Landroid/graphics/Rect;->left:I

    .line 418
    move v0, v7

    .line 419
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_9

    .line 422
    :pswitch_12
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 423
    sub-int v0, v9, v5

    .line 424
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_9

    .line 427
    :pswitch_13
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 428
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v10, v9, v10

    div-int/lit8 v0, v10, 0x2

    .line 429
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_9

    .line 436
    :sswitch_9
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    add-int/2addr v11, v6

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_a

    .line 439
    :sswitch_a
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_a

    .line 442
    :sswitch_b
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    iget v12, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v12, v8, v12

    iget v13, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_a

    .line 464
    :cond_3
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_5

    .line 479
    :goto_b
    :pswitch_14
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_4

    goto/16 :goto_1

    .line 487
    :sswitch_c
    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    goto/16 :goto_1

    .line 466
    :pswitch_15
    move v0, v7

    .line 467
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_b

    .line 470
    :pswitch_16
    sub-int v0, v9, v5

    .line 471
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_b

    .line 474
    :pswitch_17
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v10, v9, v10

    div-int/lit8 v0, v10, 0x2

    .line 475
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_b

    .line 481
    :sswitch_d
    move v1, v6

    .line 482
    goto/16 :goto_1

    .line 484
    :sswitch_e
    sub-int v10, v8, v4

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    .line 485
    goto/16 :goto_1

    .line 497
    :cond_4
    const/high16 v2, -0x1000000

    .line 498
    .local v2, "color":I
    iget-object v10, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 499
    iget-object v10, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextImage;->getDrawableState()[I

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 501
    :cond_5
    iget-object v10, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    iget-object v10, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v11, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 504
    int-to-float v10, v1

    iget-object v11, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v11

    float-to-int v3, v10

    .line 506
    .local v3, "iYpos":I
    iget-object v10, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    int-to-float v11, v0

    int-to-float v12, v3

    iget-object v13, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_a
        :pswitch_5
        :pswitch_f
    .end packed-switch

    .line 314
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    .line 346
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 359
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x30 -> :sswitch_3
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 381
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 400
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_8
        0x30 -> :sswitch_6
        0x50 -> :sswitch_7
    .end sparse-switch

    .line 415
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 434
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch

    .line 464
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_16
    .end packed-switch

    .line 479
    :sswitch_data_4
    .sparse-switch
        0x10 -> :sswitch_c
        0x30 -> :sswitch_d
        0x50 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 512
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 513
    invoke-virtual {p0}, Landroid/widget/TextImage;->getWidth()I

    move-result v4

    .line 514
    .local v4, "viewWidth":I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingLeft()I

    move-result v1

    .line 515
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingRight()I

    move-result v2

    .line 517
    .local v2, "paddingRight":I
    sub-int v5, v4, v1

    sub-int v3, v5, v2

    .line 519
    .local v3, "usefulWidth":I
    iget-object v5, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 520
    const/4 v5, 0x1

    iget v6, p0, Landroid/widget/TextImage;->mIconPosition:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x3

    iget v6, p0, Landroid/widget/TextImage;->mIconPosition:I

    if-ne v5, v6, :cond_1

    .line 522
    :cond_0
    iget v5, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v3, v5

    .line 526
    :cond_1
    if-gtz v3, :cond_2

    .line 527
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    .line 555
    :goto_0
    return-void

    .line 531
    :cond_2
    iput v3, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    .line 532
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    .line 534
    iget-object v5, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v5, :cond_5

    .line 535
    iget-object v5, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 536
    iget-object v5, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 537
    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    .line 539
    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 541
    .local v0, "needwidth":I
    if-le v0, v3, :cond_4

    .line 542
    invoke-direct {p0, v3}, Landroid/widget/TextImage;->getEllipsizePosition(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 543
    iget-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 546
    :cond_3
    iget-object v5, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 547
    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    goto :goto_0

    .line 549
    :cond_4
    iput v0, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    goto :goto_0

    .line 552
    .end local v0    # "needwidth":I
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 553
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 617
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 619
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 620
    .local v14, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 621
    .local v5, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 622
    .local v15, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 624
    .local v6, "heightSize":I
    const/4 v13, 0x0

    .line 625
    .local v13, "width":I
    const/4 v4, 0x0

    .line 627
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->setEmpty()V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 630
    .local v12, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 633
    .end local v12    # "text":Ljava/lang/String;
    :cond_0
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    .line 634
    move v13, v15

    .line 663
    :cond_1
    :goto_0
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 665
    move v4, v6

    .line 695
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Landroid/widget/TextImage;->setMeasuredDimension(II)V

    .line 696
    return-void

    .line 635
    :cond_3
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-eq v14, v0, :cond_4

    if-nez v14, :cond_1

    .line 637
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingLeft()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingRight()I

    move-result v18

    add-int v16, v17, v18

    .line 638
    .local v16, "widthneed":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconPosition:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 650
    :goto_2
    if-nez v14, :cond_6

    .line 651
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getMeasuredWidth()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 652
    move/from16 v13, v16

    goto :goto_0

    .line 641
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconWidth:I

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 642
    goto :goto_2

    .line 645
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconWidth:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingLeft()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingRight()I

    move-result v18

    add-int v9, v17, v18

    .line 646
    .local v9, "iconwidthneed":I
    move/from16 v0, v16

    if-le v9, v0, :cond_5

    move/from16 v16, v9

    :cond_5
    goto :goto_2

    .line 654
    .end local v9    # "iconwidthneed":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getSuggestedMinimumWidth()I

    move-result v11

    .line 655
    .local v11, "minWidth":I
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 656
    move v13, v15

    goto :goto_0

    .line 658
    :cond_7
    move/from16 v0, v16

    if-le v0, v11, :cond_8

    move/from16 v13, v16

    :goto_3
    goto :goto_0

    :cond_8
    move v13, v11

    goto :goto_3

    .line 666
    .end local v11    # "minWidth":I
    .end local v16    # "widthneed":I
    :cond_9
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-eq v5, v0, :cond_a

    if-nez v5, :cond_2

    .line 668
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingBottom()I

    move-result v18

    add-int v7, v17, v18

    .line 670
    .local v7, "heightneed":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconPosition:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    .line 682
    :goto_4
    if-nez v5, :cond_c

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 684
    move v4, v7

    goto/16 :goto_1

    .line 673
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconHeight:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingBottom()I

    move-result v18

    add-int v8, v17, v18

    .line 674
    .local v8, "iconheightneed":I
    if-le v8, v7, :cond_b

    move v7, v8

    .line 675
    :cond_b
    goto :goto_4

    .line 678
    .end local v8    # "iconheightneed":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconHeight:I

    move/from16 v17, v0

    add-int v7, v7, v17

    goto :goto_4

    .line 686
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getSuggestedMinimumHeight()I

    move-result v10

    .line 687
    .local v10, "minHeight":I
    if-le v7, v6, :cond_d

    .line 688
    move v4, v6

    goto/16 :goto_1

    .line 690
    :cond_d
    if-le v7, v10, :cond_e

    move v4, v7

    :goto_5
    goto/16 :goto_1

    :cond_e
    move v4, v10

    goto :goto_5

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 670
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 286
    iget-object v0, p0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 287
    iput-object p1, p0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 289
    invoke-virtual {p0}, Landroid/widget/TextImage;->requestLayout()V

    .line 290
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    .line 292
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 277
    iget v0, p0, Landroid/widget/TextImage;->mGravity:I

    if-ne v0, p1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iput p1, p0, Landroid/widget/TextImage;->mGravity:I

    .line 282
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/widget/TextImage;->mIconPosition:I

    if-ne v0, p2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 260
    :cond_2
    iput-object p1, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 262
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 263
    iput v1, p0, Landroid/widget/TextImage;->mIconWidth:I

    .line 264
    iput v1, p0, Landroid/widget/TextImage;->mIconHeight:I

    .line 270
    :goto_1
    iput p2, p0, Landroid/widget/TextImage;->mIconPosition:I

    .line 272
    invoke-virtual {p0}, Landroid/widget/TextImage;->requestLayout()V

    .line 273
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/TextImage;->mIconWidth:I

    .line 267
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/TextImage;->mIconHeight:I

    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 153
    iput-object p1, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    .line 154
    iget-object v0, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 155
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    .line 159
    :cond_0
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 160
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    iget v0, p0, Landroid/widget/TextImage;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 163
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/TextImage;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextImage;->requestLayout()V

    .line 170
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    .line 171
    return-void

    .line 165
    :cond_2
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 231
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    .line 232
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 240
    :cond_0
    iput-object p1, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    .line 241
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 178
    iget v0, p0, Landroid/widget/TextImage;->mTextSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iput p1, p0, Landroid/widget/TextImage;->mTextSize:F

    .line 183
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/TextImage;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 185
    invoke-virtual {p0}, Landroid/widget/TextImage;->requestLayout()V

    .line 186
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    goto :goto_0
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Landroid/widget/TextImage;->applyDimension(IF)I

    move-result v1

    int-to-float v0, v1

    .line 199
    .local v0, "pxSize":F
    iget v1, p0, Landroid/widget/TextImage;->mTextSize:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iput v0, p0, Landroid/widget/TextImage;->mTextSize:F

    .line 204
    iget-object v1, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/TextImage;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 206
    invoke-virtual {p0}, Landroid/widget/TextImage;->requestLayout()V

    .line 207
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    goto :goto_0
.end method

.method public setTextSizeResource(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    .line 218
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 219
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/widget/TextImage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 220
    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    .line 221
    .local v1, "textSize":F
    iget v3, v0, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v2, v3, 0xf

    .line 223
    .local v2, "textSizeUnit":I
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextImage;->setTextSize(IF)V

    .line 224
    return-void
.end method
