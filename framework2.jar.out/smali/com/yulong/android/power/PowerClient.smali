.class public Lcom/yulong/android/power/PowerClient;
.super Ljava/lang/Object;
.source "PowerClient.java"


# static fields
.field public static final CP_POWER_HINT_CAMERA_PREVIEW:I = 0x1

.field public static final CP_POWER_HINT_CAMERA_TAKE_PICTURE:I = 0x2

.field public static final CP_POWER_HINT_CAMERA_TAKE_VIDEO:I = 0x3

.field public static final CP_POWER_HINT_CGROUP_CPU:I = 0x5

.field public static final CP_POWER_HINT_CGROUP_MEM:I = 0x4

.field public static final CP_POWER_HINT_INIT:I = 0x6

.field public static final CP_POWER_HINT_MAX:I = 0xf

.field public static final POWER_HINT_AFTER_SCREENOFF:I = 0x10000009

.field public static final POWER_HINT_APP_LAUNCH:I = 0x10000004

.field public static final POWER_HINT_APP_PROFILE:I = 0x10000003

.field public static final POWER_HINT_CAMERA:I = 0x10000008

.field public static final POWER_HINT_COOLPAD_SCENE:I = 0x1000000f

.field public static final POWER_HINT_FINISH_ACTIVITY:I = 0x1000000d

.field public static final POWER_HINT_HAND_WRITE:I = 0x1000000e

.field public static final POWER_HINT_HIGH_RES_VIDEO:I = 0x10000006

.field public static final POWER_HINT_INTERACTION:I = 0x10000002

.field public static final POWER_HINT_LOW_BATTERY:I = 0x1000000b

.field public static final POWER_HINT_MIRACAST:I = 0x10000007

.field public static final POWER_HINT_PRESS_HOME:I = 0x10000010

.field public static final POWER_HINT_SHIELD_STREAMING:I = 0x10000005

.field public static final POWER_HINT_START_APP:I = 0x1000000c

.field public static final POWER_HINT_VSYNC:I = 0x10000001

.field public static final POWER_HINT_WHEN_SCREENON:I = 0x1000000a

.field private static final POWER_HINT_YULONG_START:I = 0x10000000

.field public static final STR_POWER_HINT_COOLPAD_SCENE:Ljava/lang/String; = "POWER_HINT_COOLPAD_SCENE"

.field private static final TAG:Ljava/lang/String; = "yl_power::PowerClient"

.field private static mInit:Z

.field private static mInstance:Lcom/yulong/android/power/PowerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yulong/android/power/PowerClient;->mInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getDefaultYL()Lcom/yulong/android/power/PowerClient;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/yulong/android/power/PowerClient;->mInstance:Lcom/yulong/android/power/PowerClient;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/yulong/android/power/PowerClient;

    invoke-direct {v0}, Lcom/yulong/android/power/PowerClient;-><init>()V

    sput-object v0, Lcom/yulong/android/power/PowerClient;->mInstance:Lcom/yulong/android/power/PowerClient;

    .line 109
    :cond_0
    sget-object v0, Lcom/yulong/android/power/PowerClient;->mInstance:Lcom/yulong/android/power/PowerClient;

    return-object v0
.end method

.method public static sendPowerHintYL(I[I)V
    .locals 1
    .param p0, "hint"    # I
    .param p1, "data"    # [I

    .prologue
    .line 135
    sget-boolean v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_POWER_HINT:Z

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/yulong/android/power/PowerClient;->getDefaultYL()Lcom/yulong/android/power/PowerClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/yulong/android/power/PowerClient;->sendPowerHint(I[I)V

    goto :goto_0
.end method

.method public static setAppCgroupCpuYL(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p0, "ProcessName"    # Ljava/lang/String;
    .param p1, "ThreadName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "adj"    # I

    .prologue
    .line 151
    sget-boolean v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_CPU:Z

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ylcg.cpu."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ylcg.cpu."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x10000014

    invoke-static {v0, v1, p2, p3, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppCgroupCpu(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public static setAppCgroupMemYL(Ljava/lang/String;II)V
    .locals 3
    .param p0, "ProcessName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "adj"    # I

    .prologue
    .line 142
    sget-boolean v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_MEM:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ylcg.mem."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x10000013

    invoke-static {v0, v1, p1, p2, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppCgroupMem(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public static setAppProfileYL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-boolean v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_POWER_HINT:Z

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, -0x1

    const v1, 0x10000003

    invoke-static {p0, p1, v0, v1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static systemReady()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "yl_power::PowerClient"

    const-string v1, "PowerClient::Init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-boolean v0, Lcom/yulong/android/power/PowerClient;->mInit:Z

    if-nez v0, :cond_0

    .line 117
    const v0, 0x10000015

    const v1, 0x10000013

    invoke-static {v0, v1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->systemReady(II)V

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yulong/android/power/PowerClient;->mInit:Z

    .line 120
    const-string v0, "yl_power::PowerClient"

    const-string v1, "PowerClient::Init(ok)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public sendPowerHint(I[I)V
    .locals 10
    .param p1, "hint"    # I
    .param p2, "data"    # [I

    .prologue
    const/16 v9, 0x32

    const v8, 0x1000000f

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 169
    move v0, p1

    .line 170
    .local v0, "scene":I
    const/4 v2, 0x0

    .line 172
    .local v2, "timeout":I
    sget-boolean v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_POWER_HINT:Z

    if-nez v3, :cond_0

    .line 280
    :goto_0
    :pswitch_0
    return-void

    .line 176
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_1
    const-string v3, "POWER_HINT_VSYNC"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 181
    :pswitch_2
    const-string v3, "POWER_HINT_INTERACTION"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 188
    :pswitch_3
    const-string v3, "POWER_HINT_APP_LAUNCH"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 191
    :pswitch_4
    const-string v3, "POWER_HINT_SHIELD_STREAMING"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 195
    :pswitch_5
    const-string v3, "POWER_HINT_HIGH_RES_VIDEO"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 199
    :pswitch_6
    const-string v3, "POWER_HINT_MIRACAST"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 202
    :pswitch_7
    const-string v3, "POWER_HINT_CAMERA"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 205
    :pswitch_8
    const-string v3, "POWER_HINT_AFTER_SCREENOFF"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 209
    :pswitch_9
    const-string v3, "POWER_HINT_WHEN_SCREENON"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 213
    :pswitch_a
    const-string v3, "POWER_HINT_LOW_BATTERY"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 217
    :pswitch_b
    invoke-static {v7}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setWaitFlag(Z)V

    .line 218
    const-string v3, "POWER_HINT_START_APP"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 221
    :pswitch_c
    invoke-static {v7}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setWaitFlag(Z)V

    .line 222
    const-string v3, "POWER_HINT_PRESS_HOME"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 225
    :pswitch_d
    invoke-static {v7}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setWaitFlag(Z)V

    .line 226
    const-string v3, "POWER_HINT_FINISH_ACTIVITY"

    invoke-static {v3, v4, v6, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 230
    :pswitch_e
    aget v2, p2, v6

    .line 231
    if-ge v2, v9, :cond_1

    .line 232
    const/16 v2, 0x32

    .line 234
    :cond_1
    const-string v3, "POWER_HINT_HAND_WRITE"

    invoke-static {v3, v4, v2, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 238
    :pswitch_f
    aget v0, p2, v6

    .line 239
    aget v2, p2, v7

    .line 240
    const-string v3, "COOLPAD_SCENE: %d, timeout: %d\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "str":Ljava/lang/String;
    const-string v3, "yl_power::PowerClient"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-ge v2, v9, :cond_2

    .line 244
    const/16 v2, 0x32

    .line 246
    :cond_2
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 248
    :pswitch_10
    const-string v3, "POWER_HINT_COOLPAD_SCENE"

    const-string v4, "CP_POWER_HINT_CAMERA_PREVIEW"

    add-int v5, v8, v0

    invoke-static {v3, v4, v2, v5}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 253
    :pswitch_11
    const-string v3, "POWER_HINT_COOLPAD_SCENE"

    const-string v4, "CP_POWER_HINT_CAMERA_TAKE_PICTURE"

    add-int v5, v8, v0

    invoke-static {v3, v4, v2, v5}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 258
    :pswitch_12
    const-string v3, "POWER_HINT_COOLPAD_SCENE"

    const-string v4, "CP_POWER_HINT_CAMERA_TAKE_VIDEO"

    add-int v5, v8, v0

    invoke-static {v3, v4, v2, v5}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x10000001
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_c
    .end packed-switch

    .line 246
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAppProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-boolean v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_POWER_HINT:Z

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v0, -0x1

    const v1, 0x10000003

    invoke-static {p1, p2, v0, v1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method
