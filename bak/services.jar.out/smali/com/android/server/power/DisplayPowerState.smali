.class final Lcom/android/server/power/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DisplayPowerState"


# instance fields
.field private bootReason1:Ljava/lang/String;

.field private bootReason2:Ljava/lang/String;

.field private initState:Z

.field private final mBacklight:Lcom/android/server/LightsService$Light;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCleanListener:Ljava/lang/Runnable;

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mElectronBeam:Lcom/android/server/power/ElectronBeam;

.field private mElectronBeamDrawPending:Z

.field private final mElectronBeamDrawRunnable:Ljava/lang/Runnable;

.field private mElectronBeamLevel:F

.field private mElectronBeamPrepared:Z

.field private mElectronBeamReady:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

.field private mScreenBrightness:I

.field private mScreenOn:Z

.field private mScreenReady:Z

.field private mScreenUpdatePending:Z

.field private final mScreenUpdateRunnable:Ljava/lang/Runnable;

.field private recordBackLight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    .line 114
    new-instance v0, Lcom/android/server/power/DisplayPowerState$1;

    const-string v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    .line 127
    new-instance v0, Lcom/android/server/power/DisplayPowerState$2;

    const-string v1, "screenBrightness"

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;)V
    .locals 4
    .param p1, "electronBean"    # Lcom/android/server/power/ElectronBeam;
    .param p2, "displayBlanker"    # Lcom/android/server/power/DisplayBlanker;
    .param p3, "backlight"    # Lcom/android/server/LightsService$Light;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/DisplayPowerState;->recordBackLight:I

    .line 80
    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerState;->initState:Z

    .line 81
    const-string v0, "ro.yulong.boot.reason"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->bootReason1:Ljava/lang/String;

    .line 82
    const-string v0, "ro.yulong.ylcrash"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->bootReason2:Ljava/lang/String;

    .line 322
    new-instance v0, Lcom/android/server/power/DisplayPowerState$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/DisplayPowerState$3;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    .line 342
    new-instance v0, Lcom/android/server/power/DisplayPowerState$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/DisplayPowerState$4;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 91
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    .line 92
    iput-object p2, p0, Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    .line 93
    iput-object p3, p0, Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;

    .line 94
    new-instance v0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/power/DisplayPowerState;Lcom/android/server/power/DisplayPowerState$1;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .line 97
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState;->initState:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    .line 106
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    .line 107
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    .line 109
    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    .line 110
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    .line 111
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    .line 112
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/ElectronBeam;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/power/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/power/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/power/DisplayPowerState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/server/power/DisplayPowerState;->recordBackLight:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/DisplayPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->initState:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/power/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->initState:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/power/DisplayPowerState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->bootReason1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/DisplayPowerState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->bootReason2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/DisplayPowerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/power/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->invokeCleanListenerIfNeeded()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/power/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    return v0
.end method

.method private invokeCleanListenerIfNeeded()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 316
    .local v0, "listener":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    if-eqz v1, :cond_0

    .line 317
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 318
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 320
    :cond_0
    return-void
.end method

.method private postScreenUpdateThreadSafe()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method

.method private scheduleElectronBeamDraw()V
    .locals 4

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    .line 309
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 312
    :cond_0
    return-void
.end method

.method private scheduleScreenUpdate()V
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    .line 297
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissElectronBeam()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam;->dismiss()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    .line 222
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 279
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 280
    const-string v0, "Display Power State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    invoke-virtual {v0, p1}, Lcom/android/server/power/ElectronBeam;->dump(Ljava/io/PrintWriter;)V

    .line 292
    return-void
.end method

.method public getElectronBeamLevel()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    return v0
.end method

.method public getScreenBrightness()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method public isRealyScreenOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    const-string v3, "DisplayPowerState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRealyScreenOn is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->recordBackLight:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->recordBackLight:I

    if-lez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 164
    goto :goto_0

    :cond_1
    move v1, v2

    .line 165
    goto :goto_1
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    return v0
.end method

.method public prepareElectronBeam(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 203
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    invoke-virtual {v2, p1}, Lcom/android/server/power/ElectronBeam;->prepare(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    .line 212
    :goto_0
    return v0

    .line 209
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    .line 211
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleElectronBeamDraw()V

    move v0, v1

    .line 212
    goto :goto_0
.end method

.method public setElectronBeamLevel(F)V
    .locals 4
    .param p1, "level"    # F

    .prologue
    const/4 v3, 0x0

    .line 238
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 239
    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setElectronBeamLevel: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iput p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    .line 244
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eqz v0, :cond_1

    .line 245
    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    .line 246
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    .line 248
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    if-eqz v0, :cond_2

    .line 249
    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    .line 250
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleElectronBeamDraw()V

    .line 253
    :cond_2
    return-void
.end method

.method public setScreenBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 174
    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    if-eq v0, p1, :cond_1

    .line 175
    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenBrightness: brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iput p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    .line 180
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    .line 182
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    .line 185
    :cond_1
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eq v0, p1, :cond_1

    .line 145
    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOn: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    .line 151
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    .line 153
    :cond_1
    return-void
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    if-nez v0, :cond_1

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 271
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    .line 273
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 274
    const/4 v0, 0x1

    goto :goto_0
.end method
