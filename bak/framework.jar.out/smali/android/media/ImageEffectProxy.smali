.class public Landroid/media/ImageEffectProxy;
.super Ljava/lang/Object;
.source "ImageEffectProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageEffectProxy$EventHandler;,
        Landroid/media/ImageEffectProxy$GeneticCallback;,
        Landroid/media/ImageEffectProxy$TrackObjectCallback;,
        Landroid/media/ImageEffectProxy$FaceDataCallback;,
        Landroid/media/ImageEffectProxy$JpegDataCallback;,
        Landroid/media/ImageEffectProxy$PostViewCallback;,
        Landroid/media/ImageEffectProxy$FaceInfoCallback;,
        Landroid/media/ImageEffectProxy$ProcessCallback;
    }
.end annotation


# static fields
.field public static final MS_PLUGINT_CALLBACK_BESTPICK_FACES:I = 0x65

.field public static final MS_PLUGINT_CALLBACK_TRACK_TARGET:I = 0x64

.field public static final MS_PLUGIN_CALLBACK_BESTPICK_FACE_DATA:I = 0x67

.field public static final MS_PLUGIN_CALLBACK_BESTPICK_REFERENCE_IMAGE_DATA:I = 0x68

.field public static final MS_PLUGIN_CALLBACK_FACEINFO_ACK:I = 0x6a

.field public static final MS_PLUGIN_CALLBACK_JPEG_DATA:I = 0x6c

.field public static final MS_PLUGIN_CALLBACK_PROCESSING_SATUS:I = 0x66

.field private static final TAG:Ljava/lang/String; = "ImageEffectProxy"


# instance fields
.field private mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

.field private mFaceDataCallback:Landroid/media/ImageEffectProxy$FaceDataCallback;

.field private mFaceInfoCallback:Landroid/media/ImageEffectProxy$FaceInfoCallback;

.field private mGeneralcb:Landroid/media/ImageEffectProxy$GeneticCallback;

.field private mJpegDataCallback:Landroid/media/ImageEffectProxy$JpegDataCallback;

.field private mNativeContext:I

.field private mNativeProxy:I

.field private mPostViewCallback:Landroid/media/ImageEffectProxy$PostViewCallback;

.field private mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;

.field private mTrackObjectCallback:Landroid/media/ImageEffectProxy$TrackObjectCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "imageeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v1, "ImageEffectProxy"

    const-string v2, ">>>>>ImageEffectProxy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Landroid/media/ImageEffectProxy$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/ImageEffectProxy$EventHandler;-><init>(Landroid/media/ImageEffectProxy;Landroid/media/ImageEffectProxy;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    .line 51
    :goto_0
    invoke-static {}, Landroid/media/ImageEffectProxy;->native_init()V

    .line 53
    return-void

    .line 45
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v1, Landroid/media/ImageEffectProxy$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/ImageEffectProxy$EventHandler;-><init>(Landroid/media/ImageEffectProxy;Landroid/media/ImageEffectProxy;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$TrackObjectCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageEffectProxy;

    .prologue
    .line 16
    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mTrackObjectCallback:Landroid/media/ImageEffectProxy$TrackObjectCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$FaceInfoCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageEffectProxy;

    .prologue
    .line 16
    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mFaceInfoCallback:Landroid/media/ImageEffectProxy$FaceInfoCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$ProcessCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageEffectProxy;

    .prologue
    .line 16
    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$PostViewCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageEffectProxy;

    .prologue
    .line 16
    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mPostViewCallback:Landroid/media/ImageEffectProxy$PostViewCallback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$JpegDataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageEffectProxy;

    .prologue
    .line 16
    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mJpegDataCallback:Landroid/media/ImageEffectProxy$JpegDataCallback;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$FaceDataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageEffectProxy;

    .prologue
    .line 16
    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mFaceDataCallback:Landroid/media/ImageEffectProxy$FaceDataCallback;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$GeneticCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageEffectProxy;

    .prologue
    .line 16
    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mGeneralcb:Landroid/media/ImageEffectProxy$GeneticCallback;

    return-object v0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "imageEffectProxy_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 213
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "imageEffectProxy_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ImageEffectProxy;

    .line 214
    .local v0, "ieProxy":Landroid/media/ImageEffectProxy;
    if-nez v0, :cond_1

    .line 215
    const-string v2, "ImageEffectProxy"

    const-string v3, "invalid effect proxy in postEventFromNative "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v2, v0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "ImageEffectProxy"

    const-string v3, ">>>>>>>>>do setmsg"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    iget-object v2, v0, Landroid/media/ImageEffectProxy;->mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;

    if-eqz v2, :cond_2

    .line 222
    iget-object v2, v0, Landroid/media/ImageEffectProxy;->mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;

    invoke-interface {v2, p2, v0}, Landroid/media/ImageEffectProxy$ProcessCallback;->onProcess(ILandroid/media/ImageEffectProxy;)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v2, v0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/ImageEffectProxy$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 225
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/ImageEffectProxy$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public native ProcessData(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Landroid/media/ImageEffectProxy;->native_finalize()V

    return-void
.end method

.method public native getParameters()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native release()V
.end method

.method public setFaceDataCb(Landroid/media/ImageEffectProxy$FaceDataCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$FaceDataCallback;

    .prologue
    .line 115
    const-string v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>setFaceDataCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mFaceDataCallback:Landroid/media/ImageEffectProxy$FaceDataCallback;

    .line 117
    return-void
.end method

.method public setFaceInfoCb(Landroid/media/ImageEffectProxy$FaceInfoCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$FaceInfoCallback;

    .prologue
    .line 100
    const-string v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>setFaceInfoCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mFaceInfoCallback:Landroid/media/ImageEffectProxy$FaceInfoCallback;

    .line 102
    return-void
.end method

.method public setGeneralCb(Landroid/media/ImageEffectProxy$GeneticCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$GeneticCallback;

    .prologue
    .line 125
    const-string v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>setGeneralCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mGeneralcb:Landroid/media/ImageEffectProxy$GeneticCallback;

    .line 127
    return-void
.end method

.method public setJpegDataCb(Landroid/media/ImageEffectProxy$JpegDataCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$JpegDataCallback;

    .prologue
    .line 110
    const-string v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>setJpegDataCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mJpegDataCallback:Landroid/media/ImageEffectProxy$JpegDataCallback;

    .line 112
    return-void
.end method

.method public native setParameters(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setPostViewCb(Landroid/media/ImageEffectProxy$PostViewCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$PostViewCallback;

    .prologue
    .line 105
    const-string v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>setPostViewCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mPostViewCallback:Landroid/media/ImageEffectProxy$PostViewCallback;

    .line 107
    return-void
.end method

.method public setProcessCb(Landroid/media/ImageEffectProxy$ProcessCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$ProcessCallback;

    .prologue
    .line 95
    const-string v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>setProcessCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;

    .line 97
    return-void
.end method

.method public setTrackObjectCb(Landroid/media/ImageEffectProxy$TrackObjectCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$TrackObjectCallback;

    .prologue
    .line 120
    const-string v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>setTrackObjectCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mTrackObjectCallback:Landroid/media/ImageEffectProxy$TrackObjectCallback;

    .line 122
    return-void
.end method

.method public native uninit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
