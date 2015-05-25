.class final Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "DigitalPenOffScreenDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DigitalPenOffScreenDisplayDevice"
.end annotation


# instance fields
.field private final mDensityDpi:I

.field private final mFlags:I

.field private mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mName:Ljava/lang/String;

.field private final mRefreshRate:F

.field private final mTouch:I

.field private final mType:I

.field private mWidth:I

.field private final mXDpi:F

.field private final mYDpi:F

.field final synthetic this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;Landroid/os/IBinder;)V
    .locals 2
    .param p2, "displayToken"    # Landroid/os/IBinder;

    .prologue
    const/high16 v1, 0x43200000    # 160.0f

    iput-object p1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mName:Ljava/lang/String;

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mWidth:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mHeight:I

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mRefreshRate:F

    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mDensityDpi:I

    iput v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mXDpi:F

    iput v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mYDpi:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mFlags:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mType:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mTouch:I

    return-void
.end method


# virtual methods
.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_0

    const-string v0, "DigitalPenOffScreenDisplayAdapter"

    const-string v1, "mInfo is null, getting a new one"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mRefreshRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mDensityDpi:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mXDpi:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mYDpi:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mFlags:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mType:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mTouch:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public setDimesionsLocked(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iput p2, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mHeight:I

    iput p1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method
