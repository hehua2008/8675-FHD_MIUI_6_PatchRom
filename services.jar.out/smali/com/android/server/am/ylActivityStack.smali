.class public final Lcom/android/server/am/ylActivityStack;
.super Ljava/lang/Object;
.source "ylActivityStack.java"


# static fields
.field static OsystemManager:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "ylActivityStack"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ylActivityStack;->OsystemManager:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sput-object p1, Lcom/android/server/am/ylActivityStack;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static isBeiDaoMode()Z
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "isBeidao":Z
    sget-object v1, Lcom/android/server/am/ylActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/yulong/android/reflect/YLReflect;->SystemManager_init(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ylActivityStack;->OsystemManager:Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/android/server/am/ylActivityStack;->OsystemManager:Ljava/lang/Object;

    invoke-static {v1}, Lcom/yulong/android/reflect/YLReflect;->SystemManager_fangdaoValidated(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFilterActivity(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 228
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 229
    .local v0, "componentSpecifiedInModifiedIntent":Z
    :goto_0
    if-eqz v0, :cond_a

    .line 230
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "targetPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "targetClassName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/ylActivityStack;->isPhoneRinging()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "oked":Z
    const-string v6, "com.android.phone.InCallScreen"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    const/4 v1, 0x1

    .line 260
    :cond_0
    :goto_1
    if-nez v1, :cond_a

    .line 261
    const-string v5, "ylActivityStack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The phone is ringing, request to start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is canceled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v1    # "oked":Z
    .end local v2    # "targetClassName":Ljava/lang/String;
    .end local v3    # "targetPackageName":Ljava/lang/String;
    :goto_2
    return v4

    .end local v0    # "componentSpecifiedInModifiedIntent":Z
    :cond_1
    move v0, v5

    .line 228
    goto :goto_0

    .line 238
    .restart local v0    # "componentSpecifiedInModifiedIntent":Z
    .restart local v1    # "oked":Z
    .restart local v2    # "targetClassName":Ljava/lang/String;
    .restart local v3    # "targetPackageName":Ljava/lang/String;
    :cond_2
    const-string v6, "com.android.incallui.InCallActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 239
    const/4 v1, 0x1

    goto :goto_1

    .line 240
    :cond_3
    const-string v6, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 242
    const/4 v1, 0x1

    goto :goto_1

    .line 243
    :cond_4
    const-string v6, "org.taiga.avesha.videocallid"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 245
    const/4 v1, 0x1

    goto :goto_1

    .line 246
    :cond_5
    const-string v6, "com.androminigsm.fsci"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 248
    const/4 v1, 0x1

    goto :goto_1

    .line 249
    :cond_6
    const-string v6, "com.yulong.carmode.gui.CallActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 250
    const/4 v1, 0x1

    goto :goto_1

    .line 251
    :cond_7
    const-string v6, "com.yulong.android.mms.ui.MmsComposeMessageActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 253
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 254
    :cond_8
    const-string v6, "com.redbend.client"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 255
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 256
    :cond_9
    const-string v6, "com.android.server.ShutdownActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    const/4 v1, 0x1

    goto/16 :goto_1

    .end local v1    # "oked":Z
    .end local v2    # "targetClassName":Ljava/lang/String;
    .end local v3    # "targetPackageName":Ljava/lang/String;
    :cond_a
    move v4, v5

    .line 306
    goto/16 :goto_2
.end method

.method public static isLaunchingActivityBeCanceled(Landroid/content/Intent;)Z
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, "result":Z
    invoke-static {}, Lcom/android/server/am/ylActivityStack;->isBeiDaoMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "oked":Z
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    .line 78
    .local v0, "componentSpecified":Z
    :goto_0
    if-eqz v0, :cond_b

    .line 80
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "targetClassName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "targetPackageName":Ljava/lang/String;
    const-string v5, "com.yulong.android.contacts.dial.DialActivity"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 84
    const/4 v1, 0x1

    .line 108
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 109
    const-string v5, "ylActivityStack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The device is in Beidao mode, request to start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is canceled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v2, 0x1

    .line 124
    .end local v3    # "targetClassName":Ljava/lang/String;
    .end local v4    # "targetPackageName":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v5, "ylActivityStack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BeiDaoMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "componentSpecified":Z
    .end local v1    # "oked":Z
    :cond_2
    return v2

    .line 76
    .restart local v1    # "oked":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    .restart local v0    # "componentSpecified":Z
    .restart local v3    # "targetClassName":Ljava/lang/String;
    .restart local v4    # "targetPackageName":Ljava/lang/String;
    :cond_4
    const-string v5, "com.android.phone"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 86
    const/4 v1, 0x1

    goto :goto_1

    .line 87
    :cond_5
    const-string v5, "com.android.incallui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 88
    const/4 v1, 0x1

    goto :goto_1

    .line 97
    :cond_6
    const-string v5, "com.android.yulong.seccenter.SECCENTER_SETTING"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "com.android.yulong.seccenter.CLEAR_PASSWORD"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 99
    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    .line 100
    :cond_8
    const-string v5, "com.yulong.android.security.CREATE_PASSWORD_ACTION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "com.yulong.android.security.CLEARPASSWORD"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 102
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 103
    :cond_a
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 116
    .end local v3    # "targetClassName":Ljava/lang/String;
    .end local v4    # "targetPackageName":Ljava/lang/String;
    :cond_b
    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 117
    const/4 v1, 0x1

    .line 119
    :cond_c
    if-nez v1, :cond_1

    .line 120
    const/4 v2, 0x1

    goto/16 :goto_2
.end method

.method private static isPhoneRinging()Z
    .locals 5

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 202
    .local v1, "incomingRinging":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 205
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 215
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v1

    .line 209
    .restart local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 211
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "ylActivityStack"

    const-string v4, "RemoteException from get telephony service"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static killRedundantHomeApps(Ljava/util/List;Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v3, "processesToKill":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 138
    .local v1, "count":I
    :goto_0
    monitor-enter v3

    .line 139
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 142
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 143
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v5, "android.process.acore"

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "telecom.mdesk"

    const-string v6, "telecom.mdesk.sync.SyncronizeService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v4, "telecomSyncronizeService":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 152
    const-string v5, "telecom.mdesk:remote"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v4    # "telecomSyncronizeService":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 155
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    new-instance v5, Lcom/android/server/am/ylActivityStack$1;

    invoke-direct {v5, v3}, Lcom/android/server/am/ylActivityStack$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/android/server/am/ylActivityStack$1;->start()V

    .line 190
    return-void

    .line 155
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
