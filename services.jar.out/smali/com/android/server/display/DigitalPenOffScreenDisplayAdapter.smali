.class final Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "DigitalPenOffScreenDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;
    }
.end annotation


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "Digital Pen off-screen display"

.field private static final TAG:Ljava/lang/String; = "DigitalPenOffScreenDisplayAdapter"

.field private static final digitalPenCapable:Z


# instance fields
.field private mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->digitalPenCapable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .prologue
    .line 62
    const-string v5, "DigitalPenOffScreenDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "Digital Pen off-screen display"

    return-object v0
.end method

.method public static isDigitalPenDisabled()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->digitalPenCapable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerLocked()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 77
    invoke-static {}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    .line 79
    .local v0, "displayToken":Landroid/os/IBinder;
    const-string v1, "DigitalPenOffScreenDisplayAdapter"

    const-string v2, "About to sendDisplayDeviceEventLocked()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-nez v0, :cond_0

    .line 81
    const-string v1, "DigitalPenOffScreenDisplayAdapter"

    const-string v2, "displayToken == NULL"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    new-instance v1, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;-><init>(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    .line 88
    iget-object v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 89
    return-void

    .line 85
    :cond_0
    const-string v1, "DigitalPenOffScreenDisplayAdapter"

    const-string v2, "displayToken != NULL"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
