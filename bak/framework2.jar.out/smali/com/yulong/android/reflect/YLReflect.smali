.class public Lcom/yulong/android/reflect/YLReflect;
.super Ljava/lang/Object;
.source "YLReflect.java"


# static fields
.field static BugReportService:Ljava/lang/Class;

.field static BugReportTrigger:Ljava/lang/Class;

.field static CPTelephoneyManager:Ljava/lang/Class;

.field static CloudSecurity:Ljava/lang/Class;

.field static DualPhoneConstants:Ljava/lang/Class;

.field static FeatureConfig:Ljava/lang/Class;

.field static GlobalKeys:Ljava/lang/Class;

.field static ITelephony:Ljava/lang/Class;

.field static IoControlConstants:Ljava/lang/Class;

.field static OneKeyMuteObserver:Ljava/lang/Class;

.field static OsystemManager:Ljava/lang/Object;

.field static PhoneModeManager:Ljava/lang/Class;

.field static SystemManager:Ljava/lang/Class;

.field static SystemUtil:Ljava/lang/Class;

.field static TAG:Ljava/lang/String;

.field static TelephonyManager:Ljava/lang/Class;

.field static YlCPLService:Ljava/lang/Class;

.field static mGlobalKeySceneMode:Ljava/lang/Class;

.field static systemInterfaceImpl:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "YLReflect"

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->OsystemManager:Ljava/lang/Object;

    .line 38
    const-string v0, "com.yulong.android.server.systeminterface.util.SystemUtil"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    .line 39
    const-string v0, "com.yulong.android.server.systeminterface.GlobalKeys"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->GlobalKeys:Ljava/lang/Class;

    .line 40
    const-string v0, "com.yulong.android.server.systeminterface.SystemManager"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    .line 41
    const-string v0, "com.yulong.android.server.systeminterface.SystemInterfaceImpl"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl:Ljava/lang/Class;

    .line 42
    const-string v0, "com.yulong.android.server.OneKeyMuteObserver"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->OneKeyMuteObserver:Ljava/lang/Class;

    .line 43
    const-string v0, "com.yulong.android.server.BugReportService"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->BugReportService:Ljava/lang/Class;

    .line 44
    const-string v0, "com.yulong.android.server.BugReportTrigger"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger:Ljava/lang/Class;

    .line 45
    const-string v0, "com.yulong.android.telephony.CPTelephonyManager"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->CPTelephoneyManager:Ljava/lang/Class;

    .line 46
    const-string v0, "com.yulong.android.internal.telephony.DualPhoneConstants"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->DualPhoneConstants:Ljava/lang/Class;

    .line 47
    const-string v0, "com.yulong.android.telephony.IoControlConstants"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants:Ljava/lang/Class;

    .line 48
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    .line 49
    const-string v0, "com.yulong.android.internal.telephony.PhoneModeManager"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    .line 50
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->TelephonyManager:Ljava/lang/Class;

    .line 51
    const-string v0, "com.yulong.android.server.systeminterface.GlobalKeys$SceneMode"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->mGlobalKeySceneMode:Ljava/lang/Class;

    .line 52
    const-string v0, "com.yulong.android.cloudsecurity.server.CloudSecurity"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->CloudSecurity:Ljava/lang/Class;

    .line 53
    const-string v0, "com.android.server.YlCPLService"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->YlCPLService:Ljava/lang/Class;

    .line 54
    const-string v0, "com.yulong.android.feature.FeatureConfig"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->FeatureConfig:Ljava/lang/Class;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BugReportService_init(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 370
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->BugReportService:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 372
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->BugReportService:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 373
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 374
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 392
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v2

    .line 375
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 392
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 378
    :catch_1
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 381
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 383
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 384
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 387
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static BugReportTrigger_LaunchBugReportSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 8
    .param p0, "bugType"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "shortComponentName"    # Ljava/lang/String;
    .param p3, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 483
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger_init()Ljava/lang/Object;

    move-result-object v2

    .line 484
    .local v2, "pthis":Ljava/lang/Object;
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 485
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger:Ljava/lang/Class;

    const-string v4, "LaunchBugReportSystem"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/app/ApplicationErrorReport$CrashInfo;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 486
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 487
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 488
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v2    # "pthis":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    const-string v3, "TAG"

    const-string v4, "BugReportTrigger_LaunchBugReportSystem error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static BugReportTrigger_init()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 453
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 455
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 456
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 457
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 475
    :goto_0
    return-object v2

    .line 458
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 475
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 461
    :catch_1
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 464
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 467
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 470
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static CloudSecurity_csCheckProvider(Landroid/net/Uri;)Z
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 826
    const/4 v1, 0x0

    .line 827
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 828
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckProvider"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 830
    :cond_0
    if-eqz v1, :cond_1

    .line 831
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 832
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 837
    :goto_0
    return v2

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 837
    goto :goto_0
.end method

.method public static DualPhoneConstants_PHONEID_ONE()I
    .locals 4

    .prologue
    .line 610
    const/4 v1, 0x0

    .line 611
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->DualPhoneConstants:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 612
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->DualPhoneConstants:Ljava/lang/Class;

    const-string v3, "PHONEID_ONE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 613
    :cond_0
    if-eqz v1, :cond_1

    .line 614
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 615
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 620
    :goto_0
    return v2

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 620
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static DualPhoneConstants_PHONEID_TWO()I
    .locals 4

    .prologue
    .line 624
    const/4 v1, 0x0

    .line 625
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->DualPhoneConstants:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 626
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->DualPhoneConstants:Ljava/lang/Class;

    const-string v3, "PHONEID_TWO"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 627
    :cond_0
    if-eqz v1, :cond_1

    .line 628
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 629
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 634
    :goto_0
    return v2

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 634
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static FeatureConfig_getBooleanValue(Ljava/lang/String;)Z
    .locals 8
    .param p0, "attributeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 953
    const/4 v1, 0x0

    .line 954
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->FeatureConfig:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 955
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->FeatureConfig:Ljava/lang/Class;

    const-string v4, "getBooleanValue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 957
    :cond_0
    if-eqz v1, :cond_1

    .line 958
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 972
    :goto_0
    return v2

    .line 959
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    move v2, v3

    .line 972
    goto :goto_0

    .line 962
    :catch_1
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 965
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 968
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static GlobalKeys_SYS_SERVICE()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->GlobalKeys:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->GlobalKeys:Ljava/lang/Class;

    const-string v4, "SYS_SERVICE"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 100
    :cond_0
    if-eqz v1, :cond_1

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, v3

    .line 107
    goto :goto_0
.end method

.method public static ITelephony_isDualIdle(Ljava/lang/Object;I)Z
    .locals 8
    .param p0, "pthis"    # Ljava/lang/Object;
    .param p1, "phoneNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 802
    const/4 v1, 0x0

    .line 803
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 804
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    const-string v4, "isDualIdle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 806
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 807
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 821
    :goto_0
    return v2

    .line 808
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    move v2, v3

    .line 821
    goto :goto_0

    .line 811
    :catch_1
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 814
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 817
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static ITelephony_isRadioOn(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "pthis"    # Ljava/lang/Object;

    .prologue
    .line 777
    const/4 v1, 0x0

    .line 778
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 779
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    const-string v3, "isRadioOn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 781
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 782
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 796
    :goto_0
    return v2

    .line 783
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 796
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 786
    :catch_1
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 789
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 792
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static ITelephony_isRadioOnOnSubscription(Ljava/lang/Object;I)Z
    .locals 8
    .param p0, "pthis"    # Ljava/lang/Object;
    .param p1, "phoneNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 701
    const/4 v1, 0x0

    .line 702
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 703
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    const-string v4, "isRadioOnOnSubscription"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 705
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 706
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 720
    :goto_0
    return v2

    .line 707
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    move v2, v3

    .line 720
    goto :goto_0

    .line 710
    :catch_1
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 713
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 716
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static ITelephony_setRadioOnSubscription(Ljava/lang/Object;ZI)Z
    .locals 8
    .param p0, "pthis"    # Ljava/lang/Object;
    .param p1, "booleanNum"    # Z
    .param p2, "phoneNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 726
    const/4 v1, 0x0

    .line 727
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 728
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    const-string v4, "setRadioOnSubscription"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 730
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 731
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 745
    :goto_0
    return v2

    .line 732
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    move v2, v3

    .line 745
    goto :goto_0

    .line 735
    :catch_1
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 738
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 741
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static ITelephony_telephonyDualIoControl(Ljava/lang/Object;ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 8
    .param p0, "pthis"    # Ljava/lang/Object;
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .param p3, "arg2"    # Landroid/os/Bundle;
    .param p4, "arg3"    # I

    .prologue
    const/4 v3, 0x0

    .line 751
    const/4 v1, 0x0

    .line 752
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 753
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    const-string v4, "telephonyDualIoControl"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 755
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 756
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 770
    :goto_0
    return v2

    .line 757
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    move v2, v3

    .line 770
    goto :goto_0

    .line 760
    :catch_1
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 763
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 766
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static IoControlConstants_IOCTRL_QUEREY_POWERCONTROL()I
    .locals 4

    .prologue
    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 655
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants:Ljava/lang/Class;

    const-string v3, "IOCTRL_QUEREY_POWERCONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 656
    :cond_0
    if-eqz v1, :cond_1

    .line 657
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 658
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 663
    :goto_0
    return v2

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static IoControlConstants_IOCTRL_QUEREY_POWERCONTROL_KEY_STATE()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 639
    const/4 v1, 0x0

    .line 640
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 641
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants:Ljava/lang/Class;

    const-string v4, "IOCTRL_QUEREY_POWERCONTROL_KEY_STATE"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 642
    :cond_0
    if-eqz v1, :cond_1

    .line 643
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 644
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    return-object v2

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, v3

    .line 649
    goto :goto_0
.end method

.method public static Load_class(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "classPath"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static OneKeyMuteObserver_init(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 397
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->OneKeyMuteObserver:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 399
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->OneKeyMuteObserver:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 400
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 401
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 419
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v2

    .line 402
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 419
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 405
    :catch_1
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 408
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 411
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 414
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static PhoneModeManager_getIccLockEnabled(Ljava/lang/Object;I)I
    .locals 7
    .param p0, "pthis"    # Ljava/lang/Object;
    .param p1, "phoneNum"    # I

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 570
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 571
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    const-string v3, "getIccLockEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 573
    :cond_0
    if-eqz v1, :cond_1

    .line 574
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 589
    :goto_0
    return v2

    .line 576
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 589
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 579
    :catch_1
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 582
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 585
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static PhoneModeManager_init()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 545
    const/4 v1, 0x0

    .line 546
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 547
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    const-string v4, "getDefault"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 548
    if-eqz v1, :cond_0

    .line 549
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 564
    :cond_0
    :goto_0
    return-object v2

    .line 551
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 554
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 557
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 560
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static SystemManager_fangdaoValidated(Ljava/lang/Object;)Z
    .locals 6
    .param p0, "OsystemManager"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 328
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v4, "fangdaoValidated"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 330
    :cond_0
    if-eqz v1, :cond_1

    .line 331
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 332
    if-eqz p0, :cond_1

    .line 333
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 338
    :goto_0
    return v2

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 338
    goto :goto_0
.end method

.method public static SystemManager_getCurrentModel(Ljava/lang/Object;)I
    .locals 5
    .param p0, "OsystemManager"    # Ljava/lang/Object;

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 245
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v3, "getCurrentModel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 248
    :cond_0
    if-eqz v1, :cond_1

    .line 249
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 250
    if-eqz p0, :cond_1

    .line 251
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 256
    :goto_0
    return v2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static SystemManager_getSecurityManagerPassword(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "OsystemManager"    # Ljava/lang/Object;

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 118
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v3, "getSecurityManagerPassword"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 119
    :cond_0
    if-eqz v1, :cond_1

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 121
    if-eqz p0, :cond_1

    .line 122
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-object v2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static SystemManager_getShowKeyguardType(Ljava/lang/Object;)I
    .locals 5
    .param p0, "OsystemManager"    # Ljava/lang/Object;

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 180
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v3, "getShowKeyguardType"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 182
    :cond_0
    if-eqz v1, :cond_1

    .line 183
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 184
    if-eqz p0, :cond_1

    .line 185
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 190
    :goto_0
    return v2

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static SystemManager_init(Landroid/content/Context;)Ljava/lang/Object;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 342
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 344
    :try_start_0
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 345
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 346
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 366
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    return-object v3

    .line 348
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e2":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v2    # "e2":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 353
    .local v2, "e2":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 354
    .end local v2    # "e2":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 360
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static SystemManager_isRebootPassEnable(Ljava/lang/Object;)Z
    .locals 6
    .param p0, "OsystemManager"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 138
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v4, "isRebootPassEnable"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    :cond_0
    if-eqz v1, :cond_1

    .line 141
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 142
    if-eqz p0, :cond_1

    .line 143
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 149
    :goto_0
    return v2

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 149
    goto :goto_0
.end method

.method public static SystemManager_requestCpuFreqMax(Ljava/lang/Object;IJJ)V
    .locals 7
    .param p0, "OsystemManager"    # Ljava/lang/Object;
    .param p1, "numCpus"    # I
    .param p2, "timeoutNs"    # J
    .param p4, "nowNanoTime"    # J

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 213
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v3, "requestCpuFreqMax"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 215
    :cond_0
    if-eqz v1, :cond_1

    .line 216
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 217
    if-eqz p0, :cond_1

    .line 218
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static SystemManager_requestMaxOnlineCpuCount(Ljava/lang/Object;IJJ)V
    .locals 7
    .param p0, "OsystemManager"    # Ljava/lang/Object;
    .param p1, "numCpus"    # I
    .param p2, "timeoutNs"    # J
    .param p4, "nowNanoTime"    # J

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 196
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v3, "requestMaxOnlineCpuCount"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 198
    :cond_0
    if-eqz v1, :cond_1

    .line 199
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 200
    if-eqz p0, :cond_1

    .line 201
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static SystemManager_setMode(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 7
    .param p0, "OsystemManager"    # Ljava/lang/Object;
    .param p1, "isPrivateMode"    # Z

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 282
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v3, "setMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 285
    :cond_0
    if-eqz v1, :cond_1

    .line 286
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 287
    if-eqz p0, :cond_1

    .line 288
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 294
    :goto_0
    return-object v2

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static SystemManager_validateKeyguardSecurityPass(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 7
    .param p0, "OsystemManager"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 160
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v3, "validateKeyguardSecurityPass"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 162
    :cond_0
    if-eqz v1, :cond_1

    .line 163
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 164
    if-eqz p0, :cond_1

    .line 165
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 170
    :goto_0
    return v2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static SystemUtil_getRPValue()I
    .locals 5

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 305
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 306
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    const-string v3, "getRPValue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 308
    :cond_0
    if-eqz v1, :cond_1

    .line 309
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 310
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 316
    :goto_0
    return v2

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    const-string v4, "getYLParam"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 71
    :cond_0
    if-eqz v1, :cond_1

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, v3

    .line 78
    goto :goto_0
.end method

.method public static SystemUtil_setYLParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 84
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    const-string v3, "setYLParam"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 86
    :cond_0
    if-eqz v1, :cond_1

    .line 87
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 88
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static TelephonyManager_getPhoneCount()I
    .locals 5

    .prologue
    .line 595
    const/4 v1, 0x0

    .line 596
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->TelephonyManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 597
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->TelephonyManager:Ljava/lang/Class;

    const-string v3, "getPhoneCount"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 599
    :cond_0
    if-eqz v1, :cond_1

    .line 600
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 605
    :goto_0
    return v2

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 605
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static TelephonyManager_init()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 521
    const/4 v1, 0x0

    .line 522
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 523
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->TelephonyManager:Ljava/lang/Class;

    const-string v4, "getDefault"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 524
    if-eqz v1, :cond_0

    .line 525
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 540
    :cond_0
    :goto_0
    return-object v2

    .line 527
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 530
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 533
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 536
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static YlCPLService_Main()V
    .locals 5

    .prologue
    .line 939
    const/4 v1, 0x0

    .line 940
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->YlCPLService:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 941
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->YlCPLService:Ljava/lang/Class;

    const-string v3, "main"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 943
    :cond_0
    if-eqz v1, :cond_1

    .line 944
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :cond_1
    :goto_0
    return-void

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCloudSecurityService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 922
    :try_start_0
    const-string v4, "com.yulong.android.cloudsecurity.server.CloudSecurityService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 924
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 925
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 927
    .local v2, "ctor1":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 928
    .local v1, "cludeObject":Ljava/lang/Object;
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    const-string v5, ":getCloudSecurityService YLReflect reflect success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cludeObject":Ljava/lang/Object;
    .end local v2    # "ctor1":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v1

    .line 931
    :catch_0
    move-exception v3

    .line 932
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "getCloudSecurityService-reflect"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSceneModeType(Ljava/lang/String;)I
    .locals 5
    .param p0, "modeFeild"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v3, 0x0

    .line 261
    .local v3, "sceneModeType":I
    :try_start_0
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->mGlobalKeySceneMode:Ljava/lang/Class;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 262
    .local v1, "mScenModeType":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 263
    .local v2, "sceneModeTemp":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 274
    .end local v1    # "mScenModeType":Ljava/lang/reflect/Field;
    .end local v2    # "sceneModeTemp":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 264
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUitechnoService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 887
    :try_start_0
    const-string v4, "com.yulong.android.uitechno.service.UitechnoService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 889
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 890
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 892
    .local v1, "ctor1":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 893
    .local v3, "uitechnoService":Ljava/lang/Object;
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    const-string v5, ":getUitechnoService YLReflect reflect success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor1":Ljava/lang/reflect/Constructor;
    .end local v3    # "uitechnoService":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 897
    :catch_0
    move-exception v2

    .line 898
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "getUitechnoService-reflect"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static get_TelePhoneService()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 669
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 672
    .local v4, "service":Landroid/os/IBinder;
    :try_start_0
    const-string v5, "com.android.internal.telephony.ITelephony$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 673
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 674
    const-string v5, "asInterface"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 675
    .local v0, "asInterface":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 676
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 696
    .end local v0    # "asInterface":Ljava/lang/reflect/Method;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v3

    .line 680
    :catch_0
    move-exception v2

    .line 682
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 683
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 685
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 686
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 688
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 689
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 691
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 692
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 694
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static mSystemInterface_setMode(Ljava/lang/Object;Z)Z
    .locals 8
    .param p0, "pthis"    # Ljava/lang/Object;
    .param p1, "isPrivateMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 501
    const/4 v1, 0x0

    .line 502
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 503
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl:Ljava/lang/Class;

    const-string v4, "setMode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 505
    :cond_0
    if-eqz v1, :cond_1

    .line 506
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 507
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 513
    :goto_0
    return v2

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 511
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    const-string v4, "SystemManager_requestCpuFreqMax int YLReflect error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 513
    goto :goto_0
.end method

.method public static startHallSensor(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 842
    :try_start_0
    const-string v4, "com.yulong.android.hallsensor.HallSensorObserver"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 844
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 845
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 847
    .local v1, "ctor1":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 848
    .local v3, "hallsensor":Ljava/lang/Object;
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    const-string v5, ":HallSensorObserver YLReflect reflect success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor1":Ljava/lang/reflect/Constructor;
    .end local v3    # "hallsensor":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v2

    .line 851
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "HallSensorObserver-reflect"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startPhoneCoverMode(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 873
    :try_start_0
    const-string v4, "com.yulong.android.hallsensor.PhoneCoverMode"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 875
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 876
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 878
    .local v1, "ctor1":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 879
    .local v3, "phoneCoverMode":Ljava/lang/Object;
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    const-string v5, ":PhoneCoverMode YLReflect reflect success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor1":Ljava/lang/reflect/Constructor;
    .end local v3    # "phoneCoverMode":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v2

    .line 882
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PhoneCoverMode-reflect"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startSettingTrigger(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 858
    :try_start_0
    const-string v4, "com.yulong.android.settingobservertrigger.SettingObserverTrigger"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 860
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 861
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 863
    .local v1, "ctor1":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 864
    .local v3, "hallsensor":Ljava/lang/Object;
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    const-string v5, "startSettingTrigger: YLReflect reflect success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor1":Ljava/lang/reflect/Constructor;
    .end local v3    # "hallsensor":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v2

    .line 867
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "startSettingTrigger-reflect"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static systemInterfaceImpl_init(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 423
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 425
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 426
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 427
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 445
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v2

    .line 428
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 445
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 431
    :catch_1
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 434
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 436
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 437
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 440
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static uitechonoSystemReady(Ljava/lang/Object;)V
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 905
    :try_start_0
    const-string v3, "com.yulong.android.uitechno.service.UitechnoService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 907
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 908
    const-string v3, "systemReady"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 909
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 910
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v1

    .line 914
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
