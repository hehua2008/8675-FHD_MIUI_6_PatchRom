.class public Landroid/hardware/Camera$Coordinate;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Coordinate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/Camera;

.field public xCoordinate:I

.field public yCoordinate:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;II)V
    .locals 0
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1882
    iput-object p1, p0, Landroid/hardware/Camera$Coordinate;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1883
    iput p2, p0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    .line 1884
    iput p3, p0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    .line 1885
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1895
    instance-of v2, p1, Landroid/hardware/Camera$Coordinate;

    if-nez v2, :cond_1

    .line 1899
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1898
    check-cast v0, Landroid/hardware/Camera$Coordinate;

    .line 1899
    .local v0, "c":Landroid/hardware/Camera$Coordinate;
    iget v2, p0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    iget v3, v0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    iget v3, v0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
