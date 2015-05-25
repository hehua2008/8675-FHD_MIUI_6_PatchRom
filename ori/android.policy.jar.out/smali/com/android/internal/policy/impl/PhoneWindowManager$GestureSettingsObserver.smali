.class Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureSettingsObserver"
.end annotation


# instance fields
.field private isCDialog:Z

.field private isCrossSlideSwitchSongs:Z

.field private isDeclinePhotos:Z

.field private isEBrowser:Z

.field private isMPlayMusic:Z

.field private isOQQ:Z

.field private isSlideToUnlock:Z

.field private isWWeixin:Z

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 1138
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 1139
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1129
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isCDialog:Z

    .line 1130
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isEBrowser:Z

    .line 1131
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isMPlayMusic:Z

    .line 1132
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isOQQ:Z

    .line 1133
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isWWeixin:Z

    .line 1134
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isCrossSlideSwitchSongs:Z

    .line 1135
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isSlideToUnlock:Z

    .line 1136
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isDeclinePhotos:Z

    .line 1140
    iget-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 1141
    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->updateFromSettings()V

    return-void
.end method

.method private updateFromSettings()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1187
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v4, "isWakeUpGestureOpen"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeUpGestureOpen:Z
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 1188
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v3, "isCDialog"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isCDialog:Z

    .line 1189
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v3, "isEBrowser"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isEBrowser:Z

    .line 1190
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v3, "isOQQ"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isOQQ:Z

    .line 1191
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v3, "isMPlayMusic"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isMPlayMusic:Z

    .line 1192
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v3, "isWWeixin"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isWWeixin:Z

    .line 1193
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v3, "isCrossSlideSwitchSongs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isCrossSlideSwitchSongs:Z

    .line 1194
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v3, "isSlideToUnlock"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isSlideToUnlock:Z

    .line 1195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v3, "isDeclinePhotos"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isDeclinePhotos:Z

    .line 1196
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v4, "isDoubleClickWake"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_9
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->isDoubleClickWake:Z
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 1198
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isCDialog:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isEBrowser:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isOQQ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isMPlayMusic:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isWWeixin:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isCrossSlideSwitchSongs:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isSlideToUnlock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isDeclinePhotos:Z

    if-eqz v0, :cond_b

    :cond_0
    move v0, v1

    :goto_a
    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->isGestureOpen:Z
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 1201
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeUpGestureOpen:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1202
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "c"

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isCDialog:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_wakeup:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v5, "com.yulong.android.contacts.dial.DialActivity"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "e"

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isEBrowser:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_wakeup:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v5, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "m"

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isMPlayMusic:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_wakeup:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v5, "com.android.music.MusicPlayerTab"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "o"

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isOQQ:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_wakeup:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v5, "com.tencent.mobileqq.activity.SplashActivity"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "w"

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isWWeixin:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_wakeup:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v5, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "left"

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isCrossSlideSwitchSongs:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "right"

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isCrossSlideSwitchSongs:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "up"

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isSlideToUnlock:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "down"

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->isDeclinePhotos:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_wakeup:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v5, "com.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "double_click"

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->isDoubleClickWake:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    :goto_11
    return-void

    :cond_1
    move v0, v2

    .line 1187
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1188
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 1189
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 1190
    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 1191
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 1192
    goto/16 :goto_5

    :cond_7
    move v0, v2

    .line 1193
    goto/16 :goto_6

    :cond_8
    move v0, v2

    .line 1194
    goto/16 :goto_7

    :cond_9
    move v0, v2

    .line 1195
    goto/16 :goto_8

    :cond_a
    move v0, v2

    .line 1196
    goto/16 :goto_9

    :cond_b
    move v0, v2

    .line 1198
    goto/16 :goto_a

    :cond_c
    move v0, v2

    .line 1202
    goto/16 :goto_b

    :cond_d
    move v0, v2

    .line 1203
    goto/16 :goto_c

    :cond_e
    move v0, v2

    .line 1204
    goto/16 :goto_d

    :cond_f
    move v0, v2

    .line 1205
    goto/16 :goto_e

    :cond_10
    move v0, v2

    .line 1206
    goto/16 :goto_f

    :cond_11
    move v1, v2

    .line 1210
    goto :goto_10

    .line 1213
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "c"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "e"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "m"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "o"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "w"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "left"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "right"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "up"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "down"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->gesture_switch:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "double_click"

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->isDoubleClickWake:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11
.end method


# virtual methods
.method public RegisterObserverAndUpdateSwitch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1151
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "isWakeUpGestureOpen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1154
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "isCDialog"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1157
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "isEBrowser"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "isOQQ"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1163
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "isMPlayMusic"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1166
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "isWWeixin"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1169
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "isCrossSlideSwitchSongs"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1172
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "isSlideToUnlock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1175
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "isDeclinePhotos"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1178
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "isDoubleClickWake"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1182
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->updateFromSettings()V

    .line 1183
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureSwitch()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 1184
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1145
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->updateFromSettings()V

    .line 1146
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureSwitch()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 1147
    return-void
.end method
