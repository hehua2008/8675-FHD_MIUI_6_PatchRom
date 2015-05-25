.class Lcom/android/server/power/PowerManagerService$4;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final BASEYEAR:I = 0x76c

.field private static final DAY:I = 0x5265c00


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3903
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 3915
    const-wide/16 v6, 0x0

    .line 3918
    .local v6, "nextTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 4026
    :cond_0
    :goto_0
    return-void

    .line 3922
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Landroid/app/AlarmManager;

    move-result-object v17

    if-nez v17, :cond_2

    .line 3923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v17

    const-string v19, "alarm"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AlarmManager;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # setter for: Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$5302(Lcom/android/server/power/PowerManagerService;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    .line 3924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Landroid/app/AlarmManager;

    move-result-object v17

    if-nez v17, :cond_2

    .line 3925
    const-string v17, "PowerManagerService"

    const-string v18, "mAlarmMgr is null!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLightTask:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Landroid/app/AlarmManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonOnOffIntent:Landroid/app/PendingIntent;
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLightType:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;)I

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLightType:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 3934
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLightType:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;)I

    move-result v17

    if-nez v17, :cond_4

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    # setter for: Lcom/android/server/power/PowerManagerService;->mForceButtonOn:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$5602(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayPowerRequest;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    move/from16 v18, v0

    # invokes: Lcom/android/server/power/PowerManagerService;->updateButtonLightLock(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;I)V

    goto/16 :goto_0

    .line 3934
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 3941
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLightType:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 3945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3946
    .local v10, "now":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 3948
    .local v5, "c":Ljava/util/Calendar;
    invoke-virtual {v5, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3949
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v16

    .line 3955
    .local v16, "today":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLightOnTime:J
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5700(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3956
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getYear()I

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x76c

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getMonth()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getDate()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 3957
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 3964
    .local v14, "onTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLightOffTime:J
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5800(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3965
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getYear()I

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x76c

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getMonth()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getDate()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 3966
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 3981
    .local v12, "offTime":J
    cmp-long v17, v12, v14

    if-nez v17, :cond_6

    .line 3983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/PowerManagerService;->access$5602(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3984
    const-wide/16 v6, 0x0

    .line 4003
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayPowerRequest;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    move/from16 v18, v0

    # invokes: Lcom/android/server/power/PowerManagerService;->updateButtonLightLock(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;I)V

    .line 4010
    const-wide/16 v17, 0x0

    cmp-long v17, v6, v17

    if-lez v17, :cond_0

    .line 4011
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4012
    .local v3, "bootTime":J
    add-long v17, v3, v6

    sub-long v8, v17, v10

    .line 4016
    .local v8, "next_elapse":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Landroid/app/AlarmManager;

    move-result-object v17

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonOnOffIntent:Landroid/app/PendingIntent;
    invoke-static/range {v19 .. v19}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 3985
    .end local v3    # "bootTime":J
    .end local v8    # "next_elapse":J
    :cond_6
    cmp-long v17, v12, v14

    if-gez v17, :cond_9

    .line 3986
    cmp-long v17, v10, v12

    if-ltz v17, :cond_7

    cmp-long v17, v10, v14

    if-gez v17, :cond_7

    .line 3987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/PowerManagerService;->access$5602(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3988
    move-wide v6, v14

    goto :goto_2

    .line 3990
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/PowerManagerService;->access$5602(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3991
    cmp-long v17, v10, v12

    if-gez v17, :cond_8

    move-wide v6, v12

    :goto_3
    goto :goto_2

    :cond_8
    const-wide/32 v17, 0x5265c00

    add-long v6, v12, v17

    goto :goto_3

    .line 3994
    :cond_9
    cmp-long v17, v10, v14

    if-ltz v17, :cond_a

    cmp-long v17, v10, v12

    if-gez v17, :cond_a

    .line 3995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/PowerManagerService;->access$5602(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3996
    move-wide v6, v12

    goto/16 :goto_2

    .line 3998
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/power/PowerManagerService;->access$5602(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3999
    cmp-long v17, v10, v14

    if-gez v17, :cond_b

    move-wide v6, v14

    :goto_4
    goto/16 :goto_2

    :cond_b
    const-wide/32 v17, 0x5265c00

    add-long v6, v14, v17

    goto :goto_4

    .line 4019
    .end local v5    # "c":Ljava/util/Calendar;
    .end local v10    # "now":J
    .end local v12    # "offTime":J
    .end local v14    # "onTime":J
    .end local v16    # "today":Ljava/util/Date;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLightType:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;)I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 4024
    const-string v17, "PowerManagerService"

    const-string v18, "Button light was controled error!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
