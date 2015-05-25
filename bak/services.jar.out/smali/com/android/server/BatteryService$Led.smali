.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryChargingARGB:I

.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/LightsService$Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/LightsService;

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 1023
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1025
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1027
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1031
    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryChargingARGB:I

    .line 1034
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1036
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1038
    return-void
.end method

.method private getRGBForSevenColor(I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1269
    const/high16 v0, -0x1000000

    .line 1270
    .local v0, "breathColorRGB":I
    packed-switch p1, :pswitch_data_0

    .line 1293
    :goto_0
    return v0

    .line 1272
    :pswitch_0
    const v0, -0xffff01

    .line 1273
    goto :goto_0

    .line 1275
    :pswitch_1
    const/high16 v0, -0x10000

    .line 1276
    goto :goto_0

    .line 1278
    :pswitch_2
    const v0, -0x370100

    .line 1279
    goto :goto_0

    .line 1281
    :pswitch_3
    const v0, -0xff0100

    .line 1282
    goto :goto_0

    .line 1284
    :pswitch_4
    const v0, -0xff374c

    .line 1285
    goto :goto_0

    .line 1287
    :pswitch_5
    const v0, -0x69006a

    .line 1288
    goto :goto_0

    .line 1290
    :pswitch_6
    const v0, -0x37ff38

    goto :goto_0

    .line 1270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 8

    .prologue
    const v7, -0xffff01

    const/4 v3, 0x1

    .line 1046
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBooted:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1047
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1177
    :goto_0
    return-void

    .line 1050
    :cond_0
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v4

    iget v1, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 1051
    .local v1, "level":I
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v4

    iget v2, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 1052
    .local v2, "status":I
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v4

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v4

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v4

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v4

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    if-ne v4, v3, :cond_2

    :cond_1
    move v0, v3

    .line 1115
    .local v0, "isCharing":Z
    :goto_1
    # getter for: Lcom/android/server/BatteryService;->isFactoryBreathLightTest:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1116
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, " factory breath light testing ...do nothing ..."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1052
    .end local v0    # "isCharing":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1120
    .restart local v0    # "isCharing":Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->isScreenOn:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1121
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 1127
    :cond_4
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->isUnconventionalityRing:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 1128
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 1130
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isUnconventionalityRing , mBatteryLowARGB flash!~~"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1134
    :cond_5
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->ylBreathLightDisturb:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 1135
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, " ylBreathLightDisturb : turnOff "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_0

    .line 1140
    :cond_6
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->ylBreathLightCallSwitch:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->haveMissedCall:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1141
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v4, v7, v3, v5, v6}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 1146
    :cond_7
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->ylBreathLightMessageSwitch:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->haveUnreadMsg:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1147
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const v5, -0xff0100

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 1153
    :cond_8
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->ylBreathLightNotify:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mNotifyLedOn:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1154
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v4, v7, v3, v5, v6}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 1161
    :cond_9
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->ylBreathLightCharging:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v0, :cond_c

    .line 1162
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b

    .line 1164
    :cond_a
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto/16 :goto_0

    .line 1167
    :cond_b
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto/16 :goto_0

    .line 1171
    :cond_c
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->ylBreathLightLowpower:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2200(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v4

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$2300(Lcom/android/server/BatteryService;)I

    move-result v5

    if-gt v4, v5, :cond_d

    .line 1172
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 1176
    :cond_d
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_0
.end method
