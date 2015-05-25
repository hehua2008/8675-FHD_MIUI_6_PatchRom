.class Lcom/yulong/android/content/res/IconCustomizer$IconConfig;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/content/res/IconCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconConfig"
.end annotation


# instance fields
.field mCameraX:F

.field mCameraY:F

.field mPointsMappingFrom:[F

.field mPointsMappingTo:[F

.field mRotateX:F

.field mRotateY:F

.field mRotateZ:F

.field mScaleX:F

.field mScaleY:F

.field mSkewX:F

.field mSkewY:F

.field mTransX:F

.field mTransY:F

.field mUseModIcon:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput v0, p0, Lcom/yulong/android/content/res/IconCustomizer$IconConfig;->mScaleX:F

    .line 530
    iput v0, p0, Lcom/yulong/android/content/res/IconCustomizer$IconConfig;->mScaleY:F

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    return-void
.end method
