.class public Landroid/media/ImageEffectService;
.super Ljava/lang/Object;
.source "ImageEffectService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageEffectService"


# instance fields
.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "imageeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Landroid/media/ImageEffectService;->native_init()V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Landroid/media/ImageEffectService;->setup()V

    .line 49
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/media/ImageEffectService;->native_finalize()V

    return-void
.end method

.method public loadEffectPlugIn(Ljava/lang/String;Z)Landroid/media/ImageEffectProxy;
    .locals 2
    .param p1, "libname"    # Ljava/lang/String;
    .param p2, "blocal"    # Z

    .prologue
    .line 52
    new-instance v0, Landroid/media/ImageEffectProxy;

    invoke-direct {v0}, Landroid/media/ImageEffectProxy;-><init>()V

    .line 53
    .local v0, "proxy":Landroid/media/ImageEffectProxy;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/media/ImageEffectService;->loadEffectPlugIn(Landroid/media/ImageEffectProxy;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 54
    return-object v0
.end method

.method public native loadEffectPlugIn(Landroid/media/ImageEffectProxy;Ljava/lang/Object;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native release()V
.end method

.method public native setEffectMode(Ljava/lang/String;)V
.end method

.method public native setup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native unloadEffectPlugIn(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
