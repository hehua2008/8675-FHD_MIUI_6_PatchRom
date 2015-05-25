.class public Lcom/android/server/wm/MiniScreenManager;
.super Ljava/lang/Object;
.source "MiniScreenManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiniScreenManager$1;,
        Lcom/android/server/wm/MiniScreenManager$MSContentObserver;,
        Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;
    }
.end annotation


# static fields
.field public static final DismissMSAction:Ljava/lang/String; = "com.yulong.floatwindow.dismissMS"

.field private static final MiniScreenService:Ljava/lang/String; = "com.yulong.floatwindow.service.MiniScreenService"

.field private static final SettingsName:Ljava/lang/String; = "isShrinkageScreen"

.field private static final ShowLeftMSAction:Ljava/lang/String; = "com.yulong.floatwindow.showLeftMS"

.field public static final ShowMSAction:Ljava/lang/String; = "com.yulong.floatwindow.showMS"

.field private static final ShowRightMSAction:Ljava/lang/String; = "com.yulong.floatwindow.showRightMS"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final CLOSE:I

.field private final DEBUG_MINISCREEN:Z

.field private FLAG:Ljava/lang/String;

.field private final MSG_SEND_DismissMS:I

.field private final MSG_SEND_ShowLeftMS:I

.field private final MSG_SEND_ShowMS:I

.field private final MSG_SEND_ShowRightMS:I

.field private final MSG_START_SERVICE:I

.field private final MSG_STOP_SERVICE:I

.field private final OPEN:I

.field private final ORIENTATION_PORTRAIT:I

.field private final deltaValueRatio:F

.field private final downMarginRatio:F

.field private endPointerMargin:I

.field private getActionTimes:I

.field private isMultiDown:Z

.field private ismovedToRegion:Z

.field private mBroadCastIntent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mDisplayRotation:I

.field private final mDownMargin:I

.field private mDownMotionX:I

.field private mDownMotionY:I

.field private mHandleThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private mMSContentObserver:Lcom/android/server/wm/MiniScreenManager$MSContentObserver;

.field private mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

.field private final mMinDeltaValue:I

.field private mMultiDownX:I

.field private mPointerDownTime:I

.field private mScreenWidth:I

.field private mServiceIntent:Landroid/content/Intent;

.field private mTimeOut:I

.field private mTopIsFullScreen:Z

.field private final mUpMargin:I

.field private mUpMultiRightMargin:I

.field private mUpRightMargin:I

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private startPointerMargin:I

.field private final upMarginRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "MiniScreenManager"

    sput-object v0, Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowmanager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const v5, 0x3e3851ec    # 0.18f

    const v4, 0x3e19999a    # 0.15f

    const/4 v1, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "MiniScreenManager"

    iput-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->FLAG:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/android/server/wm/MiniScreenManager;->DEBUG_MINISCREEN:Z

    .line 45
    iput v2, p0, Lcom/android/server/wm/MiniScreenManager;->ORIENTATION_PORTRAIT:I

    .line 46
    iput v1, p0, Lcom/android/server/wm/MiniScreenManager;->MSG_START_SERVICE:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->MSG_STOP_SERVICE:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->MSG_SEND_ShowRightMS:I

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->MSG_SEND_ShowLeftMS:I

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->MSG_SEND_ShowMS:I

    .line 51
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->MSG_SEND_DismissMS:I

    .line 53
    iput v1, p0, Lcom/android/server/wm/MiniScreenManager;->OPEN:I

    .line 54
    iput v2, p0, Lcom/android/server/wm/MiniScreenManager;->CLOSE:I

    .line 57
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->deltaValueRatio:F

    .line 58
    iput v4, p0, Lcom/android/server/wm/MiniScreenManager;->downMarginRatio:F

    .line 59
    iput v5, p0, Lcom/android/server/wm/MiniScreenManager;->upMarginRatio:F

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I

    .line 92
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->mTimeOut:I

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mBroadCastIntent:Landroid/content/Intent;

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mServiceIntent:Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mServiceIntent:Landroid/content/Intent;

    const-string v1, "com.yulong.floatwindow.service.MiniScreenService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iput v2, p0, Lcom/android/server/wm/MiniScreenManager;->mDisplayRotation:I

    .line 103
    iput-boolean v2, p0, Lcom/android/server/wm/MiniScreenManager;->mTopIsFullScreen:Z

    .line 104
    iput-object p1, p0, Lcom/android/server/wm/MiniScreenManager;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/server/wm/MiniScreenManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->mScreenWidth:I

    .line 109
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->mMinDeltaValue:I

    .line 110
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mScreenWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->mDownMargin:I

    .line 111
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mScreenWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiniScreenManager;->mUpMargin:I

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/MiniScreenManager;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mPointerDownTime:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/MiniScreenManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/wm/MiniScreenManager;->mPointerDownTime:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mMinDeltaValue:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/MiniScreenManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/server/wm/MiniScreenManager;->ismovedToRegion:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wm/MiniScreenManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/server/wm/MiniScreenManager;->ismovedToRegion:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mUpRightMargin:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/MiniScreenManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/wm/MiniScreenManager;->mUpRightMargin:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mUpMultiRightMargin:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/MiniScreenManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/wm/MiniScreenManager;->mUpMultiRightMargin:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->getActionTimes:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/wm/MiniScreenManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/wm/MiniScreenManager;->getActionTimes:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mUpMargin:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/MiniScreenManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/wm/MiniScreenManager;->endPointerMargin:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mTimeOut:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/MiniScreenManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/MiniScreenManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/MiniScreenManager;)Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/wm/MiniScreenManager;Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;)Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/wm/MiniScreenManager;->mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mDownMotionX:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/MiniScreenManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/wm/MiniScreenManager;->mDownMotionX:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/wm/MiniScreenManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/wm/MiniScreenManager;->mDownMotionY:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mDownMargin:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/MiniScreenManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/wm/MiniScreenManager;->startPointerMargin:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/MiniScreenManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mMultiDownX:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wm/MiniScreenManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/wm/MiniScreenManager;->mMultiDownX:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/MiniScreenManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/server/wm/MiniScreenManager;->isMultiDown:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wm/MiniScreenManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MiniScreenManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/server/wm/MiniScreenManager;->isMultiDown:Z

    return p1
.end method

.method private sendBroadCastToClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mBroadCastIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mBroadCastIntent:Landroid/content/Intent;

    const-string v1, "coordx"

    iget v2, p0, Lcom/android/server/wm/MiniScreenManager;->mDownMotionX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mBroadCastIntent:Landroid/content/Intent;

    const-string v1, "coordy"

    iget v2, p0, Lcom/android/server/wm/MiniScreenManager;->mDownMotionY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager;->mBroadCastIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 382
    sget-object v0, Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcast: Action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v0, Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcast: Action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget-object v0, Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcast: Extras = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/MiniScreenManager;->mDownMotionX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/MiniScreenManager;->mDownMotionY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 391
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 417
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 393
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yulong.floatwindow.service.MiniScreenService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 395
    sget-object v0, Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "MiniScreen-start MiniScreen Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yulong.floatwindow.service.MiniScreenService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 401
    sget-object v0, Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "MiniScreen-stop MiniScreen Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :pswitch_2
    const-string v0, "com.yulong.floatwindow.showRightMS"

    invoke-direct {p0, v0}, Lcom/android/server/wm/MiniScreenManager;->sendBroadCastToClient(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :pswitch_3
    const-string v0, "com.yulong.floatwindow.showLeftMS"

    invoke-direct {p0, v0}, Lcom/android/server/wm/MiniScreenManager;->sendBroadCastToClient(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :pswitch_4
    const-string v0, "com.yulong.floatwindow.showMS"

    invoke-direct {p0, v0}, Lcom/android/server/wm/MiniScreenManager;->sendBroadCastToClient(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :pswitch_5
    const-string v0, "com.yulong.floatwindow.dismissMS"

    invoke-direct {p0, v0}, Lcom/android/server/wm/MiniScreenManager;->sendBroadCastToClient(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public registerMSContentObserver()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 116
    const/4 v2, 0x0

    .line 118
    .local v2, "settingValue":I
    new-instance v3, Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/android/server/wm/MiniScreenManager;->FLAG:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/MiniScreenManager;->mHandleThread:Landroid/os/HandlerThread;

    .line 119
    iget-object v3, p0, Lcom/android/server/wm/MiniScreenManager;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wm/MiniScreenManager;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/server/wm/MiniScreenManager;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v3, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/wm/MiniScreenManager$MSContentObserver;-><init>(Lcom/android/server/wm/MiniScreenManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/wm/MiniScreenManager;->mMSContentObserver:Lcom/android/server/wm/MiniScreenManager$MSContentObserver;

    .line 123
    const-string v3, "isShrinkageScreen"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 124
    .local v0, "MSUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/wm/MiniScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/MiniScreenManager;->mMSContentObserver:Lcom/android/server/wm/MiniScreenManager$MSContentObserver;

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MiniScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isShrinkageScreen"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 131
    :goto_0
    if-ne v2, v6, :cond_1

    .line 132
    iget-object v3, p0, Lcom/android/server/wm/MiniScreenManager;->mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    if-nez v3, :cond_0

    .line 133
    new-instance v3, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    invoke-direct {v3, p0, v7}, Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;-><init>(Lcom/android/server/wm/MiniScreenManager;Lcom/android/server/wm/MiniScreenManager$1;)V

    iput-object v3, p0, Lcom/android/server/wm/MiniScreenManager;->mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/MiniScreenManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/MiniScreenManager;->mMSPointerEventListener:Lcom/android/server/wm/MiniScreenManager$MSPointerEventListener;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 136
    iget-object v3, p0, Lcom/android/server/wm/MiniScreenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    :cond_1
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTopFullScreen(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/server/wm/MiniScreenManager;->mTopIsFullScreen:Z

    .line 156
    return-void
.end method

.method public unregisterMSContentObserver()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mMSContentObserver:Lcom/android/server/wm/MiniScreenManager$MSContentObserver;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/MiniScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/MiniScreenManager;->mMSContentObserver:Lcom/android/server/wm/MiniScreenManager$MSContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 328
    :cond_0
    sget-object v0, Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister MiniScreen Content Observer"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public updateDisplayRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 142
    sget-object v0, Lcom/android/server/wm/MiniScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiniScreen-rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v0, p0, Lcom/android/server/wm/MiniScreenManager;->mDisplayRotation:I

    if-eq v0, p1, :cond_0

    .line 145
    iput p1, p0, Lcom/android/server/wm/MiniScreenManager;->mDisplayRotation:I

    .line 147
    :cond_0
    return-void
.end method
