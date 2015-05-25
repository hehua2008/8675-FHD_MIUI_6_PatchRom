.class public Lcom/yulong/android/ylcplsvc/YlAppProfileService;
.super Ljava/lang/Object;
.source "YlAppProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;,
        Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;
    }
.end annotation


# static fields
.field public static APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use:I = 0x0

.field public static APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use_yulong:I = 0x0

.field public static APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_scale:I = 0x0

.field public static APP_PROFILE_FEATURE_DEBUG:Z = false

.field public static APP_PROFILE_FEATURE_POWER_HINT:Z = false

.field public static APP_PROFILE_FEATURE_YLCG_CPU:Z = false

.field public static APP_PROFILE_FEATURE_YLCG_MEM:Z = false

.field public static APP_PROFILE_FEATURE_YLVM:Z = false

.field private static final BACKUP_APP_ADJ:I = 0x3

.field private static final CACHED_APP_MIN_ADJ:I = 0x9

.field private static final FEATURE_FAN_ON_DEVICE:Ljava/lang/String; = "nvidia.feature.fan_on_device"

.field private static final FOREGROUND_APP_ADJ:I = 0x0

.field private static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field public static HINT_CGROUP_MEM:I = 0x0

.field private static final HOME_APP_ADJ:I = 0x6

.field private static final NATIVE_ADJ:I = -0x11

.field private static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field private static final PERSISTENT_PROC_ADJ:I = -0xc

.field private static final POWER_HINT_YULONG_APP_PROFILE:I = 0x20000000

.field private static final PREVIOUS_APP_ADJ:I = 0x7

.field private static final SERVICE_ADJ:I = 0x5

.field private static final SERVICE_B_ADJ:I = 0x8

.field private static final SYSTEM_ADJ:I = -0x10

.field private static final TAG:Ljava/lang/String; = "yl_power::YlAppProfileService"

.field private static final VISIBLE_APP_ADJ:I = 0x1

.field private static fanCapEnabled:Z

.field private static initAppProfiles:Z

.field private static initContex:Z

.field private static mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/yulong/android/ylcplsvc/YlAppProfileService;

.field private static m_cg_mem:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;",
            ">;"
        }
    .end annotation
.end field

.field private static m_wait_for_power_hint:Z

.field public static reinit_for_monkey_test:Z

.field private static final which:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sput-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_POWER_HINT:Z

    sput-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_MEM:Z

    sput-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_CPU:Z

    sput-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLVM:Z

    sput-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_DEBUG:Z

    const/16 v0, 0x96

    sput v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_scale:I

    sput v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use:I

    sput v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use_yulong:I

    invoke-static {}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getDefault()Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    sput-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->fanCapEnabled:Z

    sput-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->initAppProfiles:Z

    sput-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->initContex:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->m_cg_mem:Ljava/util/concurrent/ConcurrentHashMap;

    sput-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->m_wait_for_power_hint:Z

    const/4 v0, -0x1

    sput v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->HINT_CGROUP_MEM:I

    sput-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->reinit_for_monkey_test:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "memory.limit_in_Mbytes_one"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "memory.limit_in_Mbytes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->initContex:Z

    if-nez v0, :cond_0

    sput-object p1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->initContex:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->m_cg_mem:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->m_wait_for_power_hint:Z

    return v0
.end method

.method static synthetic access$200(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->initMemGroup(I)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;III)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppCgroupMemOnce(Ljava/lang/String;III)V

    return-void
.end method

.method private static getAppProfileCgroupMemLimit(Ljava/lang/String;II)I
    .locals 6
    .param p0, "ProcessName"    # Ljava/lang/String;
    .param p1, "adj"    # I
    .param p2, "pid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p0, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "memory.limit_in_Mbytes"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-ne v3, v0, :cond_1

    sget v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use:I

    if-ne v5, v1, :cond_2

    invoke-static {p1, v4}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->get_limit_in_Mbytes(II)I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use_yulong:I

    if-ne v5, v1, :cond_1

    if-eqz p0, :cond_1

    const-string v1, "yulong"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-static {p1, v4}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->get_limit_in_Mbytes(II)I

    move-result v0

    goto :goto_0
.end method

.method private static getAppProfileCpuCoreBias(Ljava/lang/String;)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v1, "core_bias"

    invoke-virtual {v0, p0, v1}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getAppProfileCpuMaxNormalFreq(Ljava/lang/String;)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v1, "cpu_freq_bias"

    invoke-virtual {v0, p0, v1}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getAppProfileCpuScalingMinFreq(Ljava/lang/String;)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v1, "scaling_min_freq"

    invoke-virtual {v0, p0, v1}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getAppProfileFanCap(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    sget-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->fanCapEnabled:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_2

    sget-object v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v3, "fan_pwm_cap"

    invoke-virtual {v2, p1, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-ne v1, v0, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "fan_pwm_cap"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getAppProfileGpuCbusCapLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "gpu_core_cap"

    invoke-virtual {v1, p1, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "gpu_core_cap"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getAppProfileGpuFreqMax(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "gpu_freq_max"

    invoke-virtual {v1, p1, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-ne v3, v0, :cond_1

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "gpu_freq_max"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-ne v3, v0, :cond_2

    invoke-static {p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfileGpuCbusCapLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method private static getAppProfileGpuFreqMin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "gpu_freq_min"

    invoke-virtual {v1, p1, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "gpu_freq_min"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getAppProfileGpuScaling(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "gpu_scaling"

    invoke-virtual {v1, p1, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "gpu_scaling"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getAppProfileSysedpCap(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    sget-boolean v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->fanCapEnabled:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_2

    sget-object v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v3, "sysedp_cap"

    invoke-virtual {v2, p1, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-ne v1, v0, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "sysedp_cap"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getAppProfile_cpu_freq_max(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "cpu_freq_max"

    invoke-virtual {v1, p1, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-ne v3, v0, :cond_1

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "cpu_freq_max"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-ne v3, v0, :cond_2

    invoke-static {p0}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfileCpuMaxNormalFreq(Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method private static getAppProfile_cpu_freq_min(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "cpu_freq_min"

    invoke-virtual {v1, p1, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-ne v3, v0, :cond_1

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "cpu_freq_min"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-ne v3, v0, :cond_2

    invoke-static {p0}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfileCpuScalingMinFreq(Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method private static getAppProfile_max_online_cpus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "max_online_cpus"

    invoke-virtual {v1, p1, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-ne v3, v0, :cond_1

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "max_online_cpus"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-ne v3, v0, :cond_2

    invoke-static {p0}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfileCpuCoreBias(Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method private static getAppProfile_min_online_cpus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_0

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "min_online_cpus"

    invoke-virtual {v1, p1, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "min_online_cpus"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getAppProfile_time_out(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "time_out"    # I

    .prologue
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .end local p2    # "time_out":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "time_out":I
    :cond_1
    if-gtz p2, :cond_0

    const/4 v0, -0x1

    .local v0, "ret":I
    if-eqz p1, :cond_2

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "time_out_ms"

    invoke-virtual {v1, p1, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    const/4 v1, -0x1

    if-ne v1, v0, :cond_3

    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "time_out_ms"

    invoke-virtual {v1, p0, v2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-gez v0, :cond_4

    const/16 v0, 0x64

    :cond_4
    move p2, v0

    goto :goto_0
.end method

.method public static getApplicationProfileBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    if-nez p0, :cond_0

    move v1, v0

    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    sget-object v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    invoke-virtual {v2, p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public static getApplicationProfileInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .local v0, "ret":I
    if-nez p0, :cond_0

    move v1, v0

    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    sget-object v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    invoke-virtual {v2, p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public static final getDefault()Lcom/yulong/android/ylcplsvc/YlAppProfileService;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mInstance:Lcom/yulong/android/ylcplsvc/YlAppProfileService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;

    invoke-direct {v0}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;-><init>()V

    sput-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mInstance:Lcom/yulong/android/ylcplsvc/YlAppProfileService;

    :cond_0
    sget-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mInstance:Lcom/yulong/android/ylcplsvc/YlAppProfileService;

    return-object v0
.end method

.method private static get_limit_in_Mbytes(II)I
    .locals 4
    .param p0, "adj"    # I
    .param p1, "group"    # I

    .prologue
    const/4 v0, -0x1

    .local v0, "ret":I
    if-lez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.NATIVE_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.SYSTEM_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.PERSISTENT_PROC_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.FOREGROUND_APP_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.VISIBLE_APP_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.PERCEPTIBLE_APP_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.BACKUP_APP_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.HEAVY_WEIGHT_APP_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_9
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.SERVICE_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_a
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.HOME_APP_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.PREVIOUS_APP_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :pswitch_c
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.SERVICE_B_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v2, "ylcg.mem.CACHED_APP_MIN_ADJ"

    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->which:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static initMemGroup(I)V
    .locals 3
    .param p0, "hint"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    sget-boolean v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_MEM:Z

    if-ne v0, v1, :cond_0

    const-string v0, "yl_power::YlAppProfileService"

    const-string v1, "Init(ylcg_mem)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ylcg.mem.NATIVE_ADJ"

    const/16 v1, -0x11

    invoke-static {v0, v2, v1, p0}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppCgroupMemOnce(Ljava/lang/String;III)V

    const-string v0, "ylcg.mem.SYSTEM_ADJ"

    const/16 v1, -0x10

    invoke-static {v0, v2, v1, p0}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppCgroupMemOnce(Ljava/lang/String;III)V

    const-string v0, "ylcg.mem.PERSISTENT_PROC_ADJ"

    const/16 v1, -0xc

    invoke-static {v0, v2, v1, p0}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppCgroupMemOnce(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public static setAppCgroupCpu(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "adj"    # I
    .param p4, "hint"    # I

    .prologue
    const/4 v2, -0x1

    sget-boolean v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_CPU:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p4, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    .local v0, "appProfileData":[I
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2, v0}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->sendPowerHint(I[I)V

    goto :goto_0
.end method

.method public static setAppCgroupMem(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "ProcessName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "adj"    # I
    .param p4, "hint"    # I

    .prologue
    const/16 v4, 0x9

    sget-boolean v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_MEM:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sget-boolean v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_DEBUG:Z

    if-ne v0, v1, :cond_2

    const-string v0, "yl_power::YlAppProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-le p3, v4, :cond_3

    .local v4, "adj_adjust":I
    :goto_1
    if-gez v4, :cond_0

    const/4 v0, -0x1

    if-eq v0, p2, :cond_4

    if-ltz v4, :cond_4

    sget-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->m_cg_mem:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->m_cg_mem:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;

    invoke-static {}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getDefault()Lcom/yulong/android/ylcplsvc/YlAppProfileService;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;-><init>(Lcom/yulong/android/ylcplsvc/YlAppProfileService;Ljava/lang/String;III)V

    invoke-virtual {v6, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v4    # "adj_adjust":I
    :cond_3
    move v4, p3

    goto :goto_1

    .restart local v4    # "adj_adjust":I
    :cond_4
    invoke-static {p1, p2, v4, p4}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->setAppCgroupMemOnce(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private static setAppCgroupMemOnce(Ljava/lang/String;III)V
    .locals 7
    .param p0, "ProcessName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "adj_adjust"    # I
    .param p3, "hint"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, -0x1

    invoke-static {p0, p2, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfileCgroupMemLimit(Ljava/lang/String;II)I

    move-result v1

    .local v1, "mem_limit":I
    move v2, p1

    .local v2, "mem_slot":I
    if-ne v4, v1, :cond_0

    const/4 v2, -0x1

    :cond_0
    if-ltz p2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/16 v3, 0xb

    new-array v0, v3, [I

    const/4 v3, 0x0

    aput p1, v0, v3

    aput p2, v0, v6

    aput v1, v0, v5

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v3, 0x4

    aput v4, v0, v3

    const/4 v3, 0x5

    aput v4, v0, v3

    const/4 v3, 0x6

    aput v4, v0, v3

    const/4 v3, 0x7

    aput v4, v0, v3

    const/16 v3, 0x8

    aput v4, v0, v3

    const/16 v3, 0x9

    aput p3, v0, v3

    const/16 v3, 0xa

    aput v4, v0, v3

    .local v0, "appProfileData":[I
    if-lez v1, :cond_2

    sget-boolean v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->reinit_for_monkey_test:Z

    if-ne v6, v3, :cond_2

    aget v3, v0, v5

    sget v4, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_scale:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    aput v3, v0, v5

    :cond_2
    sget-object v3, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4, v0}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->sendPowerHint(I[I)V

    goto :goto_0
.end method

.method public static setAppProfile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "time_out"    # I
    .param p3, "hint"    # I

    .prologue
    sget-boolean v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_POWER_HINT:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    new-array v0, v1, [I

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfile_cpu_freq_min(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfile_max_online_cpus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfile_cpu_freq_max(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfileGpuFreqMax(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfileGpuScaling(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfileGpuFreqMin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfileFanCap(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfileSysedpCap(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    invoke-static {p0, p1}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfile_min_online_cpus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p3, v0, v1

    const/16 v1, 0xa

    invoke-static {p0, p1, p2}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getAppProfile_time_out(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .local v0, "appProfileData":[I
    sget-object v1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2, v0}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->sendPowerHint(I[I)V

    goto :goto_0
.end method

.method public static declared-synchronized setWaitFlag(Z)V
    .locals 2
    .param p0, "startApp"    # Z

    .prologue
    const-class v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->m_wait_for_power_hint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final systemReady(II)V
    .locals 13
    .param p0, "hint"    # I
    .param p1, "mem_hint"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v10, -0x1

    sget-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->initAppProfiles:Z

    if-ne v6, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "qc_8939"

    const-string v8, "nvidia_ap40"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->initContex:Z

    if-ne v6, v5, :cond_1

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "nvidia.feature.fan_on_device"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sput-boolean v6, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->fanCapEnabled:Z

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v8, "APP_PROFILE_FEATURE"

    const-string v9, "POWER_HINT"

    invoke-virtual {v5, v8, v9}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_POWER_HINT:Z

    const-string v5, "yl_power::YlAppProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APP_PROFILE_FEATURE_POWER_HINT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_POWER_HINT:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v8, "APP_PROFILE_FEATURE"

    const-string v9, "YLVM"

    invoke-virtual {v5, v8, v9}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLVM:Z

    const-string v5, "yl_power::YlAppProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APP_PROFILE_FEATURE_YLVM:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLVM:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v8, "APP_PROFILE_FEATURE"

    const-string v9, "YLCG_MEM"

    invoke-virtual {v5, v8, v9}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_MEM:Z

    sput-boolean v7, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_MEM:Z

    const-string v5, "yl_power::YlAppProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APP_PROFILE_FEATURE_YLCG_MEM:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_MEM:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v8, "APP_PROFILE_FEATURE"

    const-string v9, "YLCG_CPU"

    invoke-virtual {v5, v8, v9}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_CPU:Z

    const-string v5, "yl_power::YlAppProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APP_PROFILE_FEATURE_YLCG_CPU:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_CPU:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v8, "APP_PROFILE_FEATURE"

    const-string v9, "DEBUG"

    invoke-virtual {v5, v8, v9}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_DEBUG:Z

    const-string v5, "yl_power::YlAppProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APP_PROFILE_FEATURE_DEBUG:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_DEBUG:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v8, "APP_PROFILE_CONFIG.YLCG_MEM"

    const-string v9, "mem_limit_one_use"

    invoke-virtual {v5, v8, v9}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use:I

    const-string v5, "yl_power::YlAppProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v8, "APP_PROFILE_CONFIG.YLCG_MEM"

    const-string v9, "mem_limit_one_use_yulong"

    invoke-virtual {v5, v8, v9}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use_yulong:I

    const-string v5, "yl_power::YlAppProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use_yulong:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_one_use_yulong:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v8, "APP_PROFILE_CONFIG.YLCG_MEM"

    const-string v9, "mem_limit_scale"

    invoke-virtual {v5, v8, v9}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_scale:I

    const-string v5, "yl_power::YlAppProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_scale:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_CONFIG_YLCG_MEM_mem_limit_scale:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xb

    new-array v0, v5, [I

    aput v7, v0, v7

    sget-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_POWER_HINT:Z

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    aput v5, v0, v6

    sget-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLCG_MEM:Z

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    aput v5, v0, v11

    sget-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_DEBUG:Z

    if-eqz v5, :cond_5

    move v5, v6

    :goto_3
    aput v5, v0, v12

    const/4 v5, 0x4

    aput v10, v0, v5

    const/4 v5, 0x5

    aput v10, v0, v5

    const/4 v5, 0x6

    aput v10, v0, v5

    const/4 v5, 0x7

    aput v10, v0, v5

    const/16 v5, 0x8

    aput v10, v0, v5

    const/16 v5, 0x9

    aput p0, v0, v5

    const/16 v5, 0xa

    aput v10, v0, v5

    .local v0, "appProfileInitData0":[I
    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const/high16 v8, 0x20000000

    invoke-virtual {v5, v8, v0}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->sendPowerHint(I[I)V

    const/16 v5, 0xb

    new-array v1, v5, [I

    aput v6, v1, v7

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v7, "APP_PROFILE_CONFIG.POWER_QOS"

    const-string v8, "max_open_files"

    invoke-virtual {v5, v7, v8}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v6

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v7, "APP_PROFILE_CONFIG.POWER_QOS"

    const-string v8, "enable_open_files"

    invoke-virtual {v5, v7, v8}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v11

    aput v10, v1, v12

    const/4 v5, 0x4

    aput v10, v1, v5

    const/4 v5, 0x5

    aput v10, v1, v5

    const/4 v5, 0x6

    aput v10, v1, v5

    const/4 v5, 0x7

    aput v10, v1, v5

    const/16 v5, 0x8

    aput v10, v1, v5

    const/16 v5, 0x9

    aput p0, v1, v5

    const/16 v5, 0xa

    aput v10, v1, v5

    .local v1, "appProfileInitData1":[I
    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const/high16 v7, 0x20000000

    invoke-virtual {v5, v7, v1}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->sendPowerHint(I[I)V

    new-instance v2, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;

    invoke-static {}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->getDefault()Lcom/yulong/android/ylcplsvc/YlAppProfileService;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v5}, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;-><init>(Lcom/yulong/android/ylcplsvc/YlAppProfileService;)V

    .local v2, "cgrun":Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;
    invoke-virtual {v2}, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;->run()V

    sget-boolean v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->APP_PROFILE_FEATURE_YLVM:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->mAppProfile:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    const-string v7, "ylap.system_server"

    const-string v8, "heaptargetutilization"

    invoke-virtual {v5, v7, v8}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .local v3, "heap":I
    if-lez v3, :cond_2

    const/16 v5, 0x64

    if-ge v3, v5, :cond_2

    const-string v5, "yl_power::YlAppProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "System_server setTargetHeapUtilization:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    int-to-float v7, v3

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {v5, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .end local v3    # "heap":I
    :cond_2
    sput p1, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->HINT_CGROUP_MEM:I

    sget v5, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->HINT_CGROUP_MEM:I

    invoke-static {v5}, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->initMemGroup(I)V

    const-string v5, "yl_power::YlAppProfileService"

    const-string v7, "App Profiles: Enabled"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/yulong/android/ylcplsvc/YlAppProfileService;->initAppProfiles:Z

    goto/16 :goto_0

    .end local v0    # "appProfileInitData0":[I
    .end local v1    # "appProfileInitData1":[I
    .end local v2    # "cgrun":Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;
    :cond_3
    move v5, v7

    goto/16 :goto_1

    :cond_4
    move v5, v7

    goto/16 :goto_2

    :cond_5
    move v5, v7

    goto/16 :goto_3
.end method
