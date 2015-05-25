.class Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;
.super Landroid/os/UEventObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const-wide/16 v12, 0x64

    const/16 v11, 0xa

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "GESTURE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "gesture":Ljava/lang/String;
    const-string v5, "PhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gesture = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .local v4, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "PhoneWindowManager"

    const-string v6, "telephone is not idle..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "PhoneWindowManager"

    const-string v6, "ITelephony threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->addFlag:Z

    if-eqz v5, :cond_1

    const-string v5, "PhoneWindowManager"

    const-string v6, "addFlag is true..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureKeepWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v6, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x7da

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, -0x80000000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "startComponentIntent":Landroid/content/Intent;
    const/high16 v5, 0x34000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    const-string v5, "DOUBLE_CLICK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGesturePm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5, v12, v13}, Landroid/os/Vibrator;->vibrate(J)V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v9, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    iput v5, v2, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_2
    const-string v5, "C"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v8, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->addFlag:Z

    iput v8, v2, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_activity:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v5

    const-string v7, "com.yulong.android.contacts.dial.DialActivity"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "com.yulong.android.contacts.dial.DialActivity"

    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dismissKeyguardOnlyLw()V

    iput v10, v2, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_3
    const-string v5, "E"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v8, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->addFlag:Z

    const/4 v5, 0x2

    iput v5, v2, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_activity:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v5

    const-string v7, "com.android.browser.BrowserActivity"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "com.android.browser.BrowserActivity"

    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v5, "M"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v8, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->addFlag:Z

    const/4 v5, 0x3

    iput v5, v2, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_activity:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v5

    const-string v7, "com.android.music.MusicPlayerTab"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "com.android.music.MusicPlayerTab"

    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    const-string v5, "O"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v8, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->addFlag:Z

    const/4 v5, 0x4

    iput v5, v2, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_activity:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v5

    const-string v7, "com.tencent.mobileqq.activity.SplashActivity"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "com.tencent.mobileqq.activity.SplashActivity"

    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_6
    const-string v5, "W"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v8, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->addFlag:Z

    iput v10, v2, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_activity:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v5

    const-string v7, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_7
    const-string v5, "UP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dismissKeyguardOnlyLw()V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v9, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImageView:Landroid/widget/ImageView;

    iput v11, v2, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_8
    const-string v5, "DOWN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dismissKeyguardOnlyLw()V

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v9, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImageView:Landroid/widget/ImageView;

    iput v11, v2, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_9
    const-string v5, "LEFT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0xb

    iput v5, v2, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v9, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImageView:Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_a
    const-string v5, "RIGHT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0xc

    iput v5, v2, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v9, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImageView:Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v9, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImageView:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method
