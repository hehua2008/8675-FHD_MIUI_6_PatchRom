.class public Landroid/renderscript/Float4;
.super Ljava/lang/Object;
.source "Float4.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "initX"    # F
    .param p2, "initY"    # F
    .param p3, "initZ"    # F
    .param p4, "initW"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Float4;->x:F

    iput p2, p0, Landroid/renderscript/Float4;->y:F

    iput p3, p0, Landroid/renderscript/Float4;->z:F

    iput p4, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method
