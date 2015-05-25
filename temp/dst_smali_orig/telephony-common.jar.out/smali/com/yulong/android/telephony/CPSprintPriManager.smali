.class public Lcom/yulong/android/telephony/CPSprintPriManager;
.super Ljava/lang/Object;
.source "CPSprintPriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;
    }
.end annotation


# static fields
.field private static final CarrierName:Ljava/lang/String; = "Carrier_Name"

.field protected static final EVENT_APN_PROFILE_WRITE:I = 0x2710

.field private static final INT_SIZE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CPSprintPriManager"

.field private static final OEMVALUE:Ljava/lang/String; = "oemvalue"

.field private static final QCRIL_LTE_APN_PROFILE_APN_DATA_PARAM_MASK:I = 0x1

.field private static final QCRIL_LTE_APN_PROFILE_APN_NAME_PARAM_MASK:I = 0x2

.field private static final QCRIL_LTE_APN_PROFILE_APN_NI_PARAM_MASK:I = 0x4

.field private static final QCRIL_LTE_APN_PROFILE_AUTH_TYPE_PARAM_MASK:I = 0x40

.field private static final QCRIL_LTE_APN_PROFILE_INACTIVE_TIMER_PARAM_MASK:I = 0x10

.field private static final QCRIL_LTE_APN_PROFILE_PASSWORD_PARAM_MASK:I = 0x100

.field private static final QCRIL_LTE_APN_PROFILE_PDP_DYPE_PARAM_MASK:I = 0x8

.field private static final QCRIL_LTE_APN_PROFILE_RAT_TYPE_PARAM_MASK:I = 0x20

.field private static final QCRIL_LTE_APN_PROFILE_USER_NAME_PARAM_MASK:I = 0x80

.field private static final QMI_WDS_MODIFY_MIP_PROFILE_AAA_SPI_PARAM_MASK:I = 0x80

.field private static final QMI_WDS_MODIFY_MIP_PROFILE_HA_SPI_PARAM_MASK:I = 0x40

.field private static final QMI_WDS_MODIFY_MIP_PROFILE_HOME_ADDR_PARAM_MASK:I = 0x2

.field private static final QMI_WDS_MODIFY_MIP_PROFILE_HOME_AGENT_PRIMARY_ADDR_PARAM_MASK:I = 0x4

.field private static final QMI_WDS_MODIFY_MIP_PROFILE_HOME_AGENT_SECONDARY_ADDR_PARAM_MASK:I = 0x8

.field private static final QMI_WDS_MODIFY_MIP_PROFILE_MN_AAA_KEY_PARAM_MASK:I = 0x200

.field private static final QMI_WDS_MODIFY_MIP_PROFILE_MN_HA_KEY_PARAM_MASK:I = 0x100

.field private static final QMI_WDS_MODIFY_MIP_PROFILE_NAI_PARAM_MASK:I = 0x20

.field private static final QMI_WDS_MODIFY_MIP_PROFILE_PROFILE_STATE_PARAM_MASK:I = 0x1

.field private static final QMI_WDS_MODIFY_MIP_PROFILE_REVERSE_TUNNEL_PREF_PARAM_MASK:I = 0x10

.field private static final SIMLOCK:Ljava/lang/String; = "sim_lock"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static mCPSprintPriManager:Lcom/yulong/android/telephony/CPSprintPriManager; = null

.field private static mCdmaPhone:Lcom/android/internal/telephony/PhoneBase; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mGsmPhone:Lcom/android/internal/telephony/PhoneBase; = null

.field private static final mHeaderSize:I

.field private static final mOemIdentifier:Ljava/lang/String; = "QUALCOMM"


# instance fields
.field protected mMyHandler:Landroid/os/Handler;

.field private mSimLockState:Ljava/lang/String;

.field protected rtnMsg:Landroid/os/Message;

.field protected rtnNum:I

.field private rtnResetFailedItems:Ljava/lang/String;

.field protected rtnTag:I

.field protected scrtnMsg:Landroid/os/Message;

.field protected scrtnNum:I

.field private scrtnResetFailedItems:Ljava/lang/String;

.field protected scrtnTag:I

.field protected thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    sput v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mHeaderSize:I

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 3
    .param p1, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->thread:Landroid/os/HandlerThread;

    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    iput-object v1, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    iput-object v1, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnResetFailedItems:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnResetFailedItems:Ljava/lang/String;

    sput-object p1, Lcom/yulong/android/telephony/CPSprintPriManager;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sput-object p2, Lcom/yulong/android/telephony/CPSprintPriManager;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sput-object p3, Lcom/yulong/android/telephony/CPSprintPriManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CPTelephonyUtils"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->thread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;

    iget-object v1, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager$MyHandler;-><init>(Lcom/yulong/android/telephony/CPSprintPriManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    const-string v0, "sim_lock"

    const-string v1, "oemvalue"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->mSimLockState:Ljava/lang/String;

    const-string v0, "CPSprintPriManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPSprintPriManager mSimLockState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->mSimLockState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "yulong.simlock"

    iget-object v1, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->mSimLockState:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$084(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPSprintPriManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnResetFailedItems:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnResetFailedItems:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$184(Lcom/yulong/android/telephony/CPSprintPriManager;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPSprintPriManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnResetFailedItems:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnResetFailedItems:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yulong/android/telephony/CPSprintPriManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPSprintPriManager;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintPriManager;->onRtnReseted()V

    return-void
.end method

.method static synthetic access$300(Lcom/yulong/android/telephony/CPSprintPriManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/telephony/CPSprintPriManager;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPSprintPriManager;->onScrtnReseted()V

    return-void
.end method

.method private static addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "requestId"    # I
    .param p2, "requestSize"    # I

    .prologue
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    sget-object v1, Lcom/yulong/android/telephony/CPSprintPriManager;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne p1, v1, :cond_0

    sget-object v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .local v0, "curPhone":Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    return-object v0

    .end local v0    # "curPhone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    sget-object v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .restart local v0    # "curPhone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_0
.end method

.method public static getInstance()Lcom/yulong/android/telephony/CPSprintPriManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mCPSprintPriManager:Lcom/yulong/android/telephony/CPSprintPriManager;

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)Lcom/yulong/android/telephony/CPSprintPriManager;
    .locals 1
    .param p0, "cdmaPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mCPSprintPriManager:Lcom/yulong/android/telephony/CPSprintPriManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulong/android/telephony/CPSprintPriManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/yulong/android/telephony/CPSprintPriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    sput-object v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mCPSprintPriManager:Lcom/yulong/android/telephony/CPSprintPriManager;

    :cond_0
    sget-object v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mCPSprintPriManager:Lcom/yulong/android/telephony/CPSprintPriManager;

    return-object v0
.end method

.method private getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prop"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    const-string v5, ""

    .local v5, "str":Ljava/lang/String;
    :try_start_0
    const-string v6, "com.yulong.android.server.systeminterface.ParamStore"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .local v4, "paramStore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getParam"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "instance":Ljava/lang/reflect/Method;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "instance":Ljava/lang/reflect/Method;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "paramStore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onRtnReseted()V
    .locals 8

    .prologue
    const/16 v7, 0x797

    const/4 v6, 0x0

    iget v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    const-string v0, "CPSprintPriManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPSprintPriManager onRtnReseted rtnNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rtnMsg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rtnResetFailedItems:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnResetFailedItems:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    if-nez v0, :cond_1

    const-string v0, "CPSprintPriManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtnResetFailedItems:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnResetFailedItems:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    const-string v3, "0"

    iget-object v4, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    if-gez v0, :cond_0

    iput v6, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    goto :goto_0
.end method

.method private onScrtnReseted()V
    .locals 8

    .prologue
    const/16 v7, 0x797

    const/4 v6, 0x0

    iget v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    const-string v0, "CPSprintPriManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPSprintPriManager onScrtnReseted scrtnNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",scrtnMsg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    if-nez v0, :cond_1

    const-string v0, "CPSprintPriManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrtnResetFailedItems:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnResetFailedItems:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    const-string v3, "0"

    iget-object v4, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    if-gez v0, :cond_0

    iput v6, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    goto :goto_0
.end method

.method private resetRtnParams(Ljava/lang/String;I)V
    .locals 162
    .param p1, "resetType"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    const-string v2, "CPSprintPriManager"

    const-string v3, "CPSprintPriManager enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v147, 0x0

    .local v147, "rtnApnMask":I
    const/16 v148, 0x0

    .local v148, "rtnMip0":I
    const/16 v149, 0x0

    .local v149, "rtnMip1":I
    const-string v2, "slot_cycle_index"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v152

    .local v152, "slot_cycle_index":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams slot_cycle_index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v152

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v152

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_0
    const-string v5, ""

    .local v5, "mdn":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v112

    .local v112, "mMeid":Ljava/lang/String;
    if-eqz v112, :cond_1

    const/16 v2, 0x10

    :try_start_0
    move-object/from16 v0, v112

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v107

    .local v107, "iDec":J
    invoke-static/range {v107 .. v108}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v112

    .end local v107    # "iDec":J
    :cond_1
    :goto_0
    if-eqz v112, :cond_2

    invoke-virtual/range {v112 .. v112}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v112 .. v112}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    move-object/from16 v0, v112

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_3
    const-string v2, "access_overload_class"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .local v71, "accolc":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams accolc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v71

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_4
    const-string v2, "imsi_mcc"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "imsi_mcc":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams imsi_mcc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_5
    const-string v2, "imsi_11_12"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "imsi_11_12":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams imsi_11_12:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_6
    const-string v2, "phone_number_imsi_s"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v123

    .local v123, "phone_number_imsi_s":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams phone_number_imsi_s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v123

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v123 .. v123}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_7
    const-string v2, "home_sid_terminated_registration"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    .local v106, "home_sid_terminated_registration":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams home_sid_terminated_registration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v106

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "enable"

    move-object/from16 v0, v106

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cc

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_8
    :goto_1
    const-string v2, "foreign_sid_terminated_registration"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v102

    .local v102, "foreign_sid_terminated_registration":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams foreign_sid_terminated_registration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v102

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "enable"

    move-object/from16 v0, v102

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_9
    :goto_2
    const-string v2, "foreign_nid_terminated_registration"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v101

    .local v101, "foreign_nid_terminated_registration":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams foreign_nid_terminated_registration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v101

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "enable"

    move-object/from16 v0, v101

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ce

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_a
    :goto_3
    const-string v2, "channel_a_primary"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .local v81, "channel_a_primary":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams channel_a_primary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "channel_b_primary"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    .local v83, "channel_b_primary":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams channel_b_primary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v81

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, ""

    move-object/from16 v0, v83

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_b
    const-string v2, "channel_a_secondary"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .local v82, "channel_a_secondary":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams channel_a_secondary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v82

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "channel_b_secondary"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .local v84, "channel_b_secondary":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams channel_b_secondary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v84

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v82

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, ""

    move-object/from16 v0, v84

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_c
    const-string v2, "evrc_enabled"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v97

    .local v97, "evrc_enabled":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evrc_enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v97

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "enable"

    move-object/from16 v0, v97

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cf

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_d
    :goto_4
    const-string v2, "evrc_home_page"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v99

    .local v99, "evrc_home_page":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evrc_home_page:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v99

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v99

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_e
    const-string v2, "evrc_home_orig"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .local v98, "evrc_home_orig":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evrc_home_orig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v98

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v98

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_f
    const-string v2, "evrc_roam_orig"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .local v100, "evrc_roam_orig":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evrc_roam_orig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v100

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v100

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_10
    const-string v2, "home_sid_nid_1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .local v33, "home_sid_nid_1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams home_sid_nid_1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_11
    const-string v2, "band_preference"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    .local v76, "band_preference":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams band_preference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v76

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v76

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_12
    const-string v2, "roam_preference"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v146

    .local v146, "roam_preference":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams roam_preference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v146

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "2"

    move-object/from16 v0, v146

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_13
    :goto_5
    const-string v2, "voice_priv"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v161

    .local v161, "voice_priv":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams voice_priv:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v161

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "true"

    move-object/from16 v0, v161

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_14
    :goto_6
    const-string v2, "1x_data_rc"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .local v70, "_1x_data_rc":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams 1x_data_rc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v70

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_15
    const-string v2, "call_end_reselection_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .local v79, "call_end_reselection_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams call_end_reselection_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v79

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v79

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_16
    const-string v2, "handoff_reselection_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .local v105, "handoff_reselection_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams handoff_reselection_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v105

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v105

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_17
    const-string v2, "redirection_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v139

    .local v139, "redirection_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams redirection_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v139

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v139

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_18
    const-string v2, "evdo_reselection_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    .local v96, "evdo_reselection_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evdo_reselection_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v96

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v96

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_19
    const-string v2, "evdo_reselection_hold_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    .local v95, "evdo_reselection_hold_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evdo_reselection_hold_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v95

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v95

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_1a
    const-string v2, "evdo_redirection_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .local v94, "evdo_redirection_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evdo_redirection_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v94

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v94

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_1b
    const-string v2, "evdo_call_end_reselection_hold_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .local v93, "evdo_call_end_reselection_hold_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evdo_call_end_reselection_hold_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v93

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v93

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_1c
    const-string v2, "hand_down_reselection_hold_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v104

    .local v104, "hand_down_reselection_hold_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams hand_down_reselection_hold_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v104

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v104

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_1d
    const-string v2, "max_access_probe_avoid_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v113

    .local v113, "max_access_probe_avoid_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams max_access_probe_avoid_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v113

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v113

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_1e
    const-string v2, "cdma1x_avoid_bsr_count"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .local v80, "cdma1x_avoid_bsr_count":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams cdma1x_avoid_bsr_count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v80

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v80

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_1f
    const-string v2, "number_of_avoid_bsr_count"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v119

    .local v119, "number_of_avoid_bsr_count":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams number_of_avoid_bsr_count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v119

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v119

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_20
    const-string v2, "dtmf_settings"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    .local v90, "dtmf_settings":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams dtmf_settings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v90

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v90

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_21
    const-string v2, "mrd_mode"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v116

    .local v116, "mrd_mode":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mrd_mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v116

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v116

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_22
    const-string v2, "ddtm"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .local v87, "ddtm":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ddtm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v87

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v87

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_23
    const-string v2, "service_option"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v150

    .local v150, "service_option":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams service_option:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v150

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v150

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_24
    const-string v2, "data_qnc"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .local v85, "data_qnc":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams data_scrm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v85

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_25
    const-string v2, "data_scrm"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .local v86, "data_scrm":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams data_scrm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v86

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_26
    const-string v2, "packet_dial_string"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v120

    .local v120, "packet_dial_string":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams packet_dial_string:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v120

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v120

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_27
    const-string v2, "rapid_dormancy_timeout"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v137

    .local v137, "rapid_dormancy_timeout":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams rapid_dormancy_timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v137

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v137

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_28
    const-string v2, "resume_default_dormancy_timeout"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v141

    .local v141, "resume_default_dormancy_timeout":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams resume_default_dormancy_timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v141

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v141

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_29
    const-string v2, "default_packet_data_inactivity_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    .local v88, "default_packet_data_inactivity_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams default_packet_data_inactivity_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v88

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v88

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_2a
    const-string v2, "ppp_lcp_config_request_tries"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v133

    .local v133, "ppp_lcp_config_request_tries":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_lcp_config_request_tries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v133

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v133

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_2b
    const-string v2, "ppp_lcp_config_request_timeout"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v132

    .local v132, "ppp_lcp_config_request_timeout":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_lcp_config_request_timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v132

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v132

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_2c
    const-string v2, "rm_ppp_lcp_config_nak_tries"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v145

    .local v145, "rm_ppp_lcp_config_nak_tries":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams rm_ppp_lcp_config_nak_tries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v145

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v145

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_2d
    const-string v2, "ppp_lcp_term_tries"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v135

    .local v135, "ppp_lcp_term_tries":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_lcp_term_tries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v135

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v135

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_2e
    const-string v2, "ppp_lcp_term_timeout"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v134

    .local v134, "ppp_lcp_term_timeout":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_lcp_term_timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v134

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v134

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_2f
    const-string v2, "ppp_ipcp_config_request_tries"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .local v129, "ppp_ipcp_config_request_tries":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_ipcp_config_request_tries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v129

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v129

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_30
    const-string v2, "ppp_ipcp_config_request_timeout"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v128

    .local v128, "ppp_ipcp_config_request_timeout":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_ipcp_config_request_timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v128

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v128

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_31
    const-string v2, "ppp_ipcp_config_nak_tries"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v127

    .local v127, "ppp_ipcp_config_nak_tries":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_ipcp_config_nak_tries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v127

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v127

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_32
    const-string v2, "ppp_ipcp_term_tries"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v131

    .local v131, "ppp_ipcp_term_tries":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_ipcp_term_tries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v131

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v131

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_33
    const-string v2, "ppp_ipcp_term_timeout"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v130

    .local v130, "ppp_ipcp_term_timeout":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_ipcp_term_timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v130

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v130

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_34
    const-string v2, "ppp_ipcp_compression"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v126

    .local v126, "ppp_ipcp_compression":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_ipcp_compression:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v126

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v126

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_35
    const-string v2, "ppp_authentication_retries"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v124

    .local v124, "ppp_authentication_retries":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_authentication_retries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v124

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v124

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_36
    const-string v2, "ppp_authentication_timeout"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v125

    .local v125, "ppp_authentication_timeout":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ppp_authentication_timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v125

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v125

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_37
    const-string v2, "rm_ipcp_keep_alive_during_pdp"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v143

    .local v143, "rm_ipcp_keep_alive_during_pdp":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams rm_ipcp_keep_alive_during_pdp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v143

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v143

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_38
    const-string v2, "rm_ppp_detect"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v144

    .local v144, "rm_ppp_detect":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams rm_ppp_detect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v144

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v144

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_39
    const-string v2, "um_ppp_authentication_user_id"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v158

    .local v158, "um_ppp_authentication_user_id":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams um_ppp_authentication_user_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v158

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v158

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_3a
    const-string v2, "um_ppp_authentication_password"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v156

    .local v156, "um_ppp_authentication_password":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams um_ppp_authentication_password:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v156

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v156

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_3b
    const-string v2, "um_ppp_authentication_tethered_nai"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v157

    .local v157, "um_ppp_authentication_tethered_nai":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams um_ppp_authentication_tethered_nai:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v157

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v157

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_3c
    const-string v2, "um_optimized_dormant_handoff"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v155

    .local v155, "um_optimized_dormant_handoff":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams um_optimized_dormant_handoff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v155

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v155

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_3d
    const-string v2, "um_1xevdo"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v154

    .local v154, "um_1xevdo":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams um_1xevdo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v154

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v154

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_3e
    const-string v2, "um_primary_dns"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v159

    .local v159, "um_primary_dns":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams um_primary_dns:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v159

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v159

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_3f
    const-string v2, "um_secondary_dns"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v160

    .local v160, "um_secondary_dns":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams um_secondary_dns:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v160

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v160

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_40
    const-string v2, "an_ppp_nai"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    .local v74, "an_ppp_nai":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams an_ppp_nai:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v74

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v74

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_41
    const-string v2, "an_ppp_password"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .local v75, "an_ppp_password":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams an_ppp_password:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v75

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v75

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_42
    const-string v2, "active_user"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .local v72, "active_user":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams active_user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v72

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_43
    const-string v2, "mobile_ip_behavior"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v114

    .local v114, "mobile_ip_behavior":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mobile_ip_behavior:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v114

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v114

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_44
    const-string v2, "initial_registration_retry_interval"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    .local v109, "initial_registration_retry_interval":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams initial_registration_retry_interval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v109

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v109

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_45
    const-string v2, "rfc2002bis_mn_ha_authenticator_calculation"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v142

    .local v142, "rfc2002bis_mn_ha_authenticator_calculation":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams rfc2002bis_mn_ha_authenticator_calculation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v142

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v142

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_46
    const-string v2, "re_register_only_if_traffic_since_last_rrq"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v138

    .local v138, "re_register_only_if_traffic_since_last_rrq":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams re_register_only_if_traffic_since_last_rrq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v138

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v138

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_47
    const-string v2, "registration_retries"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v140

    .local v140, "registration_retries":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams registration_retries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v140

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v140

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_48
    const-string v2, "deregistration_retries"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v89

    .local v89, "deregistration_retries":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams deregistration_retries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v89

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v89

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_49
    const-string v2, "pre_lifetime_expiry_re_registration"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v136

    .local v136, "pre_lifetime_expiry_re_registration":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams pre_lifetime_expiry_re_registration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v136

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v136

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_4a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    const-string v2, "profile_enabled"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .local v36, "profile_enabled":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams profile_enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    :cond_4b
    const-string v2, "aaa_shared_secret"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .local v45, "aaa_shared_secret":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams aaa_shared_secret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    move/from16 v0, v148

    or-int/lit16 v0, v0, 0x200

    move/from16 v148, v0

    :cond_4c
    const-string v2, "nai"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .local v41, "nai":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams nai:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    or-int/lit8 v148, v148, 0x20

    :cond_4d
    const-string v2, "ha_shared_secret"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .local v44, "ha_shared_secret":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ha_shared_secret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    move/from16 v0, v148

    or-int/lit16 v0, v0, 0x100

    move/from16 v148, v0

    :cond_4e
    const-string v2, "mn_ha_spi"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .local v42, "mn_ha_spi":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mn_ha_spi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    or-int/lit8 v148, v148, 0x40

    :cond_4f
    const-string v2, "mn_aaa_spi"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .local v43, "mn_aaa_spi":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mn_aaa_spi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    move/from16 v0, v148

    or-int/lit16 v0, v0, 0x80

    move/from16 v148, v0

    :cond_50
    const-string v2, "reverse_tunnel_preferred"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .local v40, "reverse_tunnel_preferred":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams reverse_tunnel_preferred:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    or-int/lit8 v148, v148, 0x10

    :cond_51
    const-string v2, "home_address"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .local v37, "home_address":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams home_address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    or-int/lit8 v148, v148, 0x2

    :cond_52
    const-string v2, "primary_ha_address"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .local v38, "primary_ha_address":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams primary_ha_address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    or-int/lit8 v148, v148, 0x4

    :cond_53
    const-string v2, "secondary_ha_address"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .local v39, "secondary_ha_address":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams secondary_ha_address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    or-int/lit8 v148, v148, 0x8

    :cond_54
    const-string v2, "profile_enabled1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .local v48, "profile_enabled1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams profile_enabled1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    :cond_55
    const-string v2, "aaa_shared_secret1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .local v57, "aaa_shared_secret1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams aaa_shared_secret1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v57

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    move/from16 v0, v149

    or-int/lit16 v0, v0, 0x200

    move/from16 v149, v0

    :cond_56
    const-string v2, "nai1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .local v53, "nai1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams nai1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    or-int/lit8 v149, v149, 0x20

    :cond_57
    const-string v2, "ha_shared_secret1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .local v56, "ha_shared_secret1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ha_shared_secret1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v56

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    move/from16 v0, v149

    or-int/lit16 v0, v0, 0x100

    move/from16 v149, v0

    :cond_58
    const-string v2, "mn_ha_spi1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .local v54, "mn_ha_spi1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mn_ha_spi1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v54

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    or-int/lit8 v149, v149, 0x40

    :cond_59
    const-string v2, "mn_aaa_spi1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .local v55, "mn_aaa_spi1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mn_aaa_spi1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    move/from16 v0, v149

    or-int/lit16 v0, v0, 0x80

    move/from16 v149, v0

    :cond_5a
    const-string v2, "reverse_tunnel_preferred1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .local v52, "reverse_tunnel_preferred1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams reverse_tunnel_preferred1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    or-int/lit8 v149, v149, 0x10

    :cond_5b
    const-string v2, "home_address1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .local v49, "home_address1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams home_address1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    or-int/lit8 v149, v149, 0x2

    :cond_5c
    const-string v2, "primary_ha_address1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .local v50, "primary_ha_address1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams primary_ha_address1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    or-int/lit8 v149, v149, 0x4

    :cond_5d
    const-string v2, "secondary_ha_address1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .local v51, "secondary_ha_address1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams secondary_ha_address1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v51

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    or-int/lit8 v149, v149, 0x8

    :cond_5e
    const-string v2, "allowed"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    .local v73, "allowed":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams allowed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v73

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "on"

    move-object/from16 v0, v73

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_5f
    :goto_7
    const-string v2, "pde_ip_address"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    .local v121, "pde_ip_address":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams pde_ip_address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v121

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v121

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_60
    const-string v2, "pde_port_number"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    .local v122, "pde_port_number":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams pde_port_number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v122

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v122

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_61
    const-string v2, "location_privacy"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .local v111, "location_privacy":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams location_privacy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v111

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "on"

    move-object/from16 v0, v111

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_62
    :goto_8
    const-string v2, "gpsone_capabilities_clm"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v103

    .local v103, "gpsone_capabilities_clm":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams gpsone_capabilities_clm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v103

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "on"

    move-object/from16 v0, v103

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_63
    :goto_9
    const-string v2, "mode_preference"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v115

    .local v115, "mode_preference":Ljava/lang/String;
    invoke-static/range {v115 .. v115}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    const-string v115, ""

    :cond_64
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mode_preference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v115

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v115

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_65

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_65
    const-string v2, "ipv6_capability"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    .local v110, "ipv6_capability":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ipv6_capability:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v110

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v110

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_66
    const-string v2, "ehrpd_capability"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .local v92, "ehrpd_capability":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ehrpd_capability:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v92

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v92

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_67

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_67
    const-string v2, "t3402"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v153

    .local v153, "t3402":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams t3402:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v153

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v153

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_68
    const-string v2, "bsrtimer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .local v78, "bsrtimer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams bsrtimer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v78

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v78

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_69
    const-string v2, "bsrmaxtimer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .local v77, "bsrmaxtimer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams bsrmaxtimer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v77

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v77

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_6a
    const-string v2, "nextltescan"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v118

    .local v118, "nextltescan":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams nextltescan:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v118

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v118

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_6b
    const-string v2, "n_attach_tries"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v117

    .local v117, "n_attach_tries":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams n_attach_tries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v117

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v117

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    :cond_6c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    const-string v2, "apn_ni"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .local v61, "apn_ni":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams apn_ni:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v61

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    or-int/lit8 v147, v147, 0x4

    :cond_6d
    const-string v2, "pdn_label"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .local v60, "pdn_label":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams pdn_label:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    or-int/lit8 v147, v147, 0x2

    :cond_6e
    const-string v2, "pdn_type"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .local v62, "pdn_type":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams pdn_type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v62

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    or-int/lit8 v147, v147, 0x8

    :cond_6f
    const-string v2, "inactivity_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .local v63, "inactivity_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams inactivity_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v63

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v63

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    or-int/lit8 v147, v147, 0x10

    :cond_70
    const-string v2, "rat_type"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .local v64, "rat_type":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams rat_type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v64

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    or-int/lit8 v147, v147, 0x20

    :cond_71
    const-string v2, "authentication_type"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .local v65, "authentication_type":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams authentication_type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v65

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    or-int/lit8 v147, v147, 0x40

    :cond_72
    const-string v2, "username"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .local v66, "username":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams username:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v66

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    move/from16 v0, v147

    or-int/lit16 v0, v0, 0x80

    move/from16 v147, v0

    :cond_73
    const-string v2, "password"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .local v67, "password":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams password:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v67

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    move/from16 v0, v147

    or-int/lit16 v0, v0, 0x100

    move/from16 v147, v0

    :cond_74
    const-string v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const v3, 0x80002

    const/16 v4, 0xb2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0xb2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v2, p0

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_75
    const-string v2, ""

    move-object/from16 v0, v152

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v152

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_76
    const-string v2, ""

    move-object/from16 v0, v71

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    const v2, 0x9001a

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x25

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParam(IIILandroid/os/Message;)V

    :cond_77
    const-string v2, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const v7, 0x80002

    const/16 v8, 0xb0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0xb0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v6, p0

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_78
    const-string v2, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const v11, 0x80002

    const/16 v12, 0xb1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0xb1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v10, p0

    move/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_79
    invoke-virtual/range {v123 .. v123}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7a

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object/from16 v0, v123

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .local v17, "min2":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v123

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .local v21, "min1":Ljava/lang/String;
    const v15, 0x80002

    const/16 v16, 0x21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0x21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v14, p0

    move/from16 v18, p2

    invoke-virtual/range {v14 .. v19}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    const v19, 0x80002

    const/16 v20, 0x20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v18, p0

    move/from16 v22, p2

    invoke-virtual/range {v18 .. v23}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    .end local v17    # "min2":Ljava/lang/String;
    .end local v21    # "min1":Ljava/lang/String;
    :cond_7a
    const-string v2, "enable"

    move-object/from16 v0, v106

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x22

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_7b
    :goto_a
    const-string v2, "enable"

    move-object/from16 v0, v102

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x23

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_7c
    :goto_b
    const-string v2, "enable"

    move-object/from16 v0, v101

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x24

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x24

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_7d
    :goto_c
    const-string v2, ""

    move-object/from16 v0, v81

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    const-string v2, ""

    move-object/from16 v0, v83

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v81

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v83

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .local v25, "channel_primary_ab":Ljava/lang/String;
    const v23, 0x80002

    const/16 v24, 0x14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v27

    move-object/from16 v22, p0

    move/from16 v26, p2

    invoke-virtual/range {v22 .. v27}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    .end local v25    # "channel_primary_ab":Ljava/lang/String;
    :cond_7e
    const-string v2, ""

    move-object/from16 v0, v82

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    const-string v2, ""

    move-object/from16 v0, v84

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v82

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v84

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .local v29, "channel_secondary_ab":Ljava/lang/String;
    const v27, 0x80002

    const/16 v28, 0x15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    move-object/from16 v26, p0

    move/from16 v30, p2

    invoke-virtual/range {v26 .. v31}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    .end local v29    # "channel_secondary_ab":Ljava/lang/String;
    :cond_7f
    const-string v2, "enable"

    move-object/from16 v0, v97

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb0

    const-string v4, "1"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x11d

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_80
    :goto_d
    const-string v2, ""

    move-object/from16 v0, v99

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x74

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x11d

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v99

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V

    :cond_81
    const-string v2, ""

    move-object/from16 v0, v98

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x73

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x11d

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v98

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V

    :cond_82
    const-string v2, ""

    move-object/from16 v0, v100

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x75

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x11d

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v100

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V

    :cond_83
    const-string v2, ""

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    const v31, 0x80002

    const/16 v32, 0x103

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0x103

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    move-object/from16 v30, p0

    move/from16 v34, p2

    invoke-virtual/range {v30 .. v35}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_84
    const-string v2, ""

    move-object/from16 v0, v76

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1b9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1b9

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v76

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_85
    const-string v2, "2"

    move-object/from16 v0, v146

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x1ba

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    :cond_86
    :goto_e
    const-string v2, "true"

    move-object/from16 v0, v161

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0xb3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_87
    :goto_f
    const-string v2, ""

    move-object/from16 v0, v70

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x195

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x195

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v70

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_88
    const-string v2, ""

    move-object/from16 v0, v79

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "12"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0xc

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v79

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_89
    const-string v2, ""

    move-object/from16 v0, v105

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "16"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x10

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v105

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_8a
    const-string v2, ""

    move-object/from16 v0, v139

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "20"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x14

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v139

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_8b
    const-string v2, ""

    move-object/from16 v0, v96

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "24"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x18

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v96

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_8c
    const-string v2, ""

    move-object/from16 v0, v95

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "28"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x1c

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v95

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_8d
    const-string v2, ""

    move-object/from16 v0, v94

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "32"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x20

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v94

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_8e
    const-string v2, ""

    move-object/from16 v0, v93

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "36"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x24

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v93

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_8f
    const-string v2, ""

    move-object/from16 v0, v104

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "68"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x44

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v104

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_90
    const-string v2, ""

    move-object/from16 v0, v113

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "92"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x5c

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v113

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_91
    const-string v2, ""

    move-object/from16 v0, v80

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "96"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x60

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v80

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_92
    const-string v2, ""

    move-object/from16 v0, v119

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "100"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x64

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v119

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_93
    const-string v2, ""

    move-object/from16 v0, v90

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x43

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x43

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v90

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_94
    const-string v2, ""

    move-object/from16 v0, v116

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x129

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x129

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v116

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_95
    const-string v2, ""

    move-object/from16 v0, v87

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x72

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0xe32

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V

    :cond_96
    const-string v2, ""

    move-object/from16 v0, v150

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xf1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xf1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v150

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_97
    const-string v2, ""

    move-object/from16 v0, v85

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xf0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xf0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v85

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_98
    const-string v2, ""

    move-object/from16 v0, v86

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1ad

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1ad

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v86

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_99
    const-string v2, ""

    move-object/from16 v0, v120

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x12a

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x12a

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v120

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_9a
    const-string v2, ""

    move-object/from16 v0, v137

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb04

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xb04

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v137

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_9b
    const-string v2, ""

    move-object/from16 v0, v141

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb05

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xb05

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v141

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_9c
    const-string v2, ""

    move-object/from16 v0, v88

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x168d

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x168d

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_9d
    const-string v2, ""

    move-object/from16 v0, v133

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9e

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "4"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x4

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v133

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_9e
    const-string v2, ""

    move-object/from16 v0, v132

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x2

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v132

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_9f
    const-string v2, ""

    move-object/from16 v0, v145

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x5

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v145

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_a0
    const-string v2, ""

    move-object/from16 v0, v135

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "6"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x6

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v135

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_a1
    const-string v2, ""

    move-object/from16 v0, v134

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v134

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_a2
    const-string v2, ""

    move-object/from16 v0, v129

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "14"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0xe

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v129

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_a3
    const-string v2, ""

    move-object/from16 v0, v128

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "12"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0xc

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v128

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_a4
    const-string v2, ""

    move-object/from16 v0, v127

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "15"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0xf

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v127

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_a5
    const-string v2, ""

    move-object/from16 v0, v131

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "16"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x10

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v131

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_a6
    const-string v2, ""

    move-object/from16 v0, v130

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "10"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0xa

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v130

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_a7
    const-string v2, ""

    move-object/from16 v0, v126

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "17"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x11

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v126

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_a8
    const-string v2, ""

    move-object/from16 v0, v124

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "7"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x7

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v124

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_a9
    const-string v2, ""

    move-object/from16 v0, v125

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "8"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4b6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x8

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v125

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_aa
    const-string v2, ""

    move-object/from16 v0, v143

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3fb

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x3fb

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v143

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_ab
    const-string v2, ""

    move-object/from16 v0, v144

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x12c

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x12c

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v144

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_ac
    const-string v2, ""

    move-object/from16 v0, v158

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x38e

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x38e

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v158

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_ad
    const-string v2, ""

    move-object/from16 v0, v156

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x38a

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x38a

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v156

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_ae
    const-string v2, ""

    move-object/from16 v0, v157

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb89

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xb89

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v157

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_af
    const-string v2, ""

    move-object/from16 v0, v155

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1ef

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1ef

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v155

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_b0
    const-string v2, ""

    move-object/from16 v0, v154

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4a9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4a9

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v154

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_b1
    const-string v2, ""

    move-object/from16 v0, v159

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1a7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1a7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v159

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_b2
    const-string v2, ""

    move-object/from16 v0, v160

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1a8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1a8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v160

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_b3
    const-string v2, ""

    move-object/from16 v0, v74

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4aa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4aa

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v74

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_b4
    const-string v2, ""

    move-object/from16 v0, v75

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x4a8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x4a8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_b5
    const-string v2, ""

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1d0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1d0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v72

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_b6
    const-string v2, ""

    move-object/from16 v0, v114

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1cb

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1cb

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v114

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_b7
    const-string v2, ""

    move-object/from16 v0, v109

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1cd

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1cd

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v109

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_b8
    const-string v2, ""

    move-object/from16 v0, v142

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x222

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x222

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v142

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_b9
    const-string v2, ""

    move-object/from16 v0, v138

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x2c3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x2c3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v138

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_ba
    const-string v2, ""

    move-object/from16 v0, v140

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1cc

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1cc

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v140

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_bb
    const-string v2, ""

    move-object/from16 v0, v89

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x112c

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x112c

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v89

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_bc
    const-string v2, ""

    move-object/from16 v0, v136

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1ce

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1ce

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v136

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_bd
    const-string v2, "on"

    move-object/from16 v0, v73

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1213

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x1213

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_be
    :goto_10
    const-string v2, ""

    move-object/from16 v0, v121

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1257

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1257

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v121

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_bf
    const-string v2, ""

    move-object/from16 v0, v122

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1260

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1260

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v122

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_c0
    const-string v2, "on"

    move-object/from16 v0, v111

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dc

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1c4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x1c4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_c1
    :goto_11
    const-string v2, "on"

    move-object/from16 v0, v103

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dd

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x190

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_c2
    :goto_12
    new-instance v34, Lcom/yulong/android/telephony/MobileIpProfile;

    invoke-static/range {v148 .. v148}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    const-string v46, "0"

    invoke-direct/range {v34 .. v46}, Lcom/yulong/android/telephony/MobileIpProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v34, "mip0":Lcom/yulong/android/telephony/MobileIpProfile;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v4, 0x1d1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->mobileIpProfileWrite(Ljava/lang/Object;Landroid/os/Message;)V

    new-instance v46, Lcom/yulong/android/telephony/MobileIpProfile;

    invoke-static/range {v149 .. v149}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    const-string v58, "1"

    invoke-direct/range {v46 .. v58}, Lcom/yulong/android/telephony/MobileIpProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v46, "mip1":Lcom/yulong/android/telephony/MobileIpProfile;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v4, 0x1d1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->mobileIpProfileWrite(Ljava/lang/Object;Landroid/os/Message;)V

    const-string v2, ""

    move-object/from16 v0, v115

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static/range {v115 .. v115}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_c3
    const-string v2, ""

    move-object/from16 v0, v110

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x768

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x768

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v110

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_c4
    const-string v2, ""

    move-object/from16 v0, v92

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x7f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x1364

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v92

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V

    :cond_c5
    const-string v2, ""

    move-object/from16 v0, v153

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x10092

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const v7, 0x10092

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v153

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_c6
    const-string v2, ""

    move-object/from16 v0, v78

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x7c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const v6, 0x1011b

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v78

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V

    :cond_c7
    const-string v2, ""

    move-object/from16 v0, v77

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x7d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const v6, 0x1011b

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v77

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V

    :cond_c8
    const-string v2, ""

    move-object/from16 v0, v118

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x7b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const v6, 0x1011b

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x2

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v118

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V

    :cond_c9
    const-string v2, ""

    move-object/from16 v0, v117

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ca

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x1011b

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "16"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const v7, 0x1011b

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/16 v10, 0x10

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v117

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_ca
    new-instance v58, Lcom/yulong/android/telephony/ApnProfile;

    const-string v59, ""

    invoke-static/range {v147 .. v147}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v68

    const-string v69, "3"

    invoke-direct/range {v58 .. v69}, Lcom/yulong/android/telephony/ApnProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v58, "apn":Lcom/yulong/android/telephony/ApnProfile;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v4, 0x2710

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->apnProfileWrite(Ljava/lang/Object;Landroid/os/Message;)V

    const-string v2, "sim_lock"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v151

    .local v151, "sim_lock":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams sim_lock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v151

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v151

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb

    const-string v2, "sim_lock"

    const-string v3, "oemvalue"

    move-object/from16 v0, p0

    move-object/from16 v1, v151

    invoke-virtual {v0, v2, v3, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->setParamToPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_cb
    return-void

    .end local v9    # "imsi_mcc":Ljava/lang/String;
    .end local v13    # "imsi_11_12":Ljava/lang/String;
    .end local v33    # "home_sid_nid_1":Ljava/lang/String;
    .end local v34    # "mip0":Lcom/yulong/android/telephony/MobileIpProfile;
    .end local v36    # "profile_enabled":Ljava/lang/String;
    .end local v37    # "home_address":Ljava/lang/String;
    .end local v38    # "primary_ha_address":Ljava/lang/String;
    .end local v39    # "secondary_ha_address":Ljava/lang/String;
    .end local v40    # "reverse_tunnel_preferred":Ljava/lang/String;
    .end local v41    # "nai":Ljava/lang/String;
    .end local v42    # "mn_ha_spi":Ljava/lang/String;
    .end local v43    # "mn_aaa_spi":Ljava/lang/String;
    .end local v44    # "ha_shared_secret":Ljava/lang/String;
    .end local v45    # "aaa_shared_secret":Ljava/lang/String;
    .end local v46    # "mip1":Lcom/yulong/android/telephony/MobileIpProfile;
    .end local v48    # "profile_enabled1":Ljava/lang/String;
    .end local v49    # "home_address1":Ljava/lang/String;
    .end local v50    # "primary_ha_address1":Ljava/lang/String;
    .end local v51    # "secondary_ha_address1":Ljava/lang/String;
    .end local v52    # "reverse_tunnel_preferred1":Ljava/lang/String;
    .end local v53    # "nai1":Ljava/lang/String;
    .end local v54    # "mn_ha_spi1":Ljava/lang/String;
    .end local v55    # "mn_aaa_spi1":Ljava/lang/String;
    .end local v56    # "ha_shared_secret1":Ljava/lang/String;
    .end local v57    # "aaa_shared_secret1":Ljava/lang/String;
    .end local v58    # "apn":Lcom/yulong/android/telephony/ApnProfile;
    .end local v60    # "pdn_label":Ljava/lang/String;
    .end local v61    # "apn_ni":Ljava/lang/String;
    .end local v62    # "pdn_type":Ljava/lang/String;
    .end local v63    # "inactivity_timer":Ljava/lang/String;
    .end local v64    # "rat_type":Ljava/lang/String;
    .end local v65    # "authentication_type":Ljava/lang/String;
    .end local v66    # "username":Ljava/lang/String;
    .end local v67    # "password":Ljava/lang/String;
    .end local v70    # "_1x_data_rc":Ljava/lang/String;
    .end local v71    # "accolc":Ljava/lang/String;
    .end local v72    # "active_user":Ljava/lang/String;
    .end local v73    # "allowed":Ljava/lang/String;
    .end local v74    # "an_ppp_nai":Ljava/lang/String;
    .end local v75    # "an_ppp_password":Ljava/lang/String;
    .end local v76    # "band_preference":Ljava/lang/String;
    .end local v77    # "bsrmaxtimer":Ljava/lang/String;
    .end local v78    # "bsrtimer":Ljava/lang/String;
    .end local v79    # "call_end_reselection_timer":Ljava/lang/String;
    .end local v80    # "cdma1x_avoid_bsr_count":Ljava/lang/String;
    .end local v81    # "channel_a_primary":Ljava/lang/String;
    .end local v82    # "channel_a_secondary":Ljava/lang/String;
    .end local v83    # "channel_b_primary":Ljava/lang/String;
    .end local v84    # "channel_b_secondary":Ljava/lang/String;
    .end local v85    # "data_qnc":Ljava/lang/String;
    .end local v86    # "data_scrm":Ljava/lang/String;
    .end local v87    # "ddtm":Ljava/lang/String;
    .end local v88    # "default_packet_data_inactivity_timer":Ljava/lang/String;
    .end local v89    # "deregistration_retries":Ljava/lang/String;
    .end local v90    # "dtmf_settings":Ljava/lang/String;
    .end local v92    # "ehrpd_capability":Ljava/lang/String;
    .end local v93    # "evdo_call_end_reselection_hold_timer":Ljava/lang/String;
    .end local v94    # "evdo_redirection_timer":Ljava/lang/String;
    .end local v95    # "evdo_reselection_hold_timer":Ljava/lang/String;
    .end local v96    # "evdo_reselection_timer":Ljava/lang/String;
    .end local v97    # "evrc_enabled":Ljava/lang/String;
    .end local v98    # "evrc_home_orig":Ljava/lang/String;
    .end local v99    # "evrc_home_page":Ljava/lang/String;
    .end local v100    # "evrc_roam_orig":Ljava/lang/String;
    .end local v101    # "foreign_nid_terminated_registration":Ljava/lang/String;
    .end local v102    # "foreign_sid_terminated_registration":Ljava/lang/String;
    .end local v103    # "gpsone_capabilities_clm":Ljava/lang/String;
    .end local v104    # "hand_down_reselection_hold_timer":Ljava/lang/String;
    .end local v105    # "handoff_reselection_timer":Ljava/lang/String;
    .end local v106    # "home_sid_terminated_registration":Ljava/lang/String;
    .end local v109    # "initial_registration_retry_interval":Ljava/lang/String;
    .end local v110    # "ipv6_capability":Ljava/lang/String;
    .end local v111    # "location_privacy":Ljava/lang/String;
    .end local v113    # "max_access_probe_avoid_timer":Ljava/lang/String;
    .end local v114    # "mobile_ip_behavior":Ljava/lang/String;
    .end local v115    # "mode_preference":Ljava/lang/String;
    .end local v116    # "mrd_mode":Ljava/lang/String;
    .end local v117    # "n_attach_tries":Ljava/lang/String;
    .end local v118    # "nextltescan":Ljava/lang/String;
    .end local v119    # "number_of_avoid_bsr_count":Ljava/lang/String;
    .end local v120    # "packet_dial_string":Ljava/lang/String;
    .end local v121    # "pde_ip_address":Ljava/lang/String;
    .end local v122    # "pde_port_number":Ljava/lang/String;
    .end local v123    # "phone_number_imsi_s":Ljava/lang/String;
    .end local v124    # "ppp_authentication_retries":Ljava/lang/String;
    .end local v125    # "ppp_authentication_timeout":Ljava/lang/String;
    .end local v126    # "ppp_ipcp_compression":Ljava/lang/String;
    .end local v127    # "ppp_ipcp_config_nak_tries":Ljava/lang/String;
    .end local v128    # "ppp_ipcp_config_request_timeout":Ljava/lang/String;
    .end local v129    # "ppp_ipcp_config_request_tries":Ljava/lang/String;
    .end local v130    # "ppp_ipcp_term_timeout":Ljava/lang/String;
    .end local v131    # "ppp_ipcp_term_tries":Ljava/lang/String;
    .end local v132    # "ppp_lcp_config_request_timeout":Ljava/lang/String;
    .end local v133    # "ppp_lcp_config_request_tries":Ljava/lang/String;
    .end local v134    # "ppp_lcp_term_timeout":Ljava/lang/String;
    .end local v135    # "ppp_lcp_term_tries":Ljava/lang/String;
    .end local v136    # "pre_lifetime_expiry_re_registration":Ljava/lang/String;
    .end local v137    # "rapid_dormancy_timeout":Ljava/lang/String;
    .end local v138    # "re_register_only_if_traffic_since_last_rrq":Ljava/lang/String;
    .end local v139    # "redirection_timer":Ljava/lang/String;
    .end local v140    # "registration_retries":Ljava/lang/String;
    .end local v141    # "resume_default_dormancy_timeout":Ljava/lang/String;
    .end local v142    # "rfc2002bis_mn_ha_authenticator_calculation":Ljava/lang/String;
    .end local v143    # "rm_ipcp_keep_alive_during_pdp":Ljava/lang/String;
    .end local v144    # "rm_ppp_detect":Ljava/lang/String;
    .end local v145    # "rm_ppp_lcp_config_nak_tries":Ljava/lang/String;
    .end local v146    # "roam_preference":Ljava/lang/String;
    .end local v150    # "service_option":Ljava/lang/String;
    .end local v151    # "sim_lock":Ljava/lang/String;
    .end local v153    # "t3402":Ljava/lang/String;
    .end local v154    # "um_1xevdo":Ljava/lang/String;
    .end local v155    # "um_optimized_dormant_handoff":Ljava/lang/String;
    .end local v156    # "um_ppp_authentication_password":Ljava/lang/String;
    .end local v157    # "um_ppp_authentication_tethered_nai":Ljava/lang/String;
    .end local v158    # "um_ppp_authentication_user_id":Ljava/lang/String;
    .end local v159    # "um_primary_dns":Ljava/lang/String;
    .end local v160    # "um_secondary_dns":Ljava/lang/String;
    .end local v161    # "voice_priv":Ljava/lang/String;
    :catch_0
    move-exception v91

    .local v91, "e":Ljava/lang/Exception;
    invoke-virtual/range {v91 .. v91}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v91    # "e":Ljava/lang/Exception;
    .restart local v9    # "imsi_mcc":Ljava/lang/String;
    .restart local v13    # "imsi_11_12":Ljava/lang/String;
    .restart local v71    # "accolc":Ljava/lang/String;
    .restart local v106    # "home_sid_terminated_registration":Ljava/lang/String;
    .restart local v123    # "phone_number_imsi_s":Ljava/lang/String;
    :cond_cc
    const-string v2, "disable"

    move-object/from16 v0, v106

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    goto/16 :goto_1

    .restart local v102    # "foreign_sid_terminated_registration":Ljava/lang/String;
    :cond_cd
    const-string v2, "disable"

    move-object/from16 v0, v102

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    goto/16 :goto_2

    .restart local v101    # "foreign_nid_terminated_registration":Ljava/lang/String;
    :cond_ce
    const-string v2, "disable"

    move-object/from16 v0, v101

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    goto/16 :goto_3

    .restart local v81    # "channel_a_primary":Ljava/lang/String;
    .restart local v82    # "channel_a_secondary":Ljava/lang/String;
    .restart local v83    # "channel_b_primary":Ljava/lang/String;
    .restart local v84    # "channel_b_secondary":Ljava/lang/String;
    .restart local v97    # "evrc_enabled":Ljava/lang/String;
    :cond_cf
    const-string v2, "disable"

    move-object/from16 v0, v97

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    goto/16 :goto_4

    .restart local v33    # "home_sid_nid_1":Ljava/lang/String;
    .restart local v76    # "band_preference":Ljava/lang/String;
    .restart local v98    # "evrc_home_orig":Ljava/lang/String;
    .restart local v99    # "evrc_home_page":Ljava/lang/String;
    .restart local v100    # "evrc_roam_orig":Ljava/lang/String;
    .restart local v146    # "roam_preference":Ljava/lang/String;
    :cond_d0
    const-string v2, "0"

    move-object/from16 v0, v146

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    goto/16 :goto_5

    .restart local v161    # "voice_priv":Ljava/lang/String;
    :cond_d1
    const-string v2, "false"

    move-object/from16 v0, v161

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    goto/16 :goto_6

    .restart local v36    # "profile_enabled":Ljava/lang/String;
    .restart local v37    # "home_address":Ljava/lang/String;
    .restart local v38    # "primary_ha_address":Ljava/lang/String;
    .restart local v39    # "secondary_ha_address":Ljava/lang/String;
    .restart local v40    # "reverse_tunnel_preferred":Ljava/lang/String;
    .restart local v41    # "nai":Ljava/lang/String;
    .restart local v42    # "mn_ha_spi":Ljava/lang/String;
    .restart local v43    # "mn_aaa_spi":Ljava/lang/String;
    .restart local v44    # "ha_shared_secret":Ljava/lang/String;
    .restart local v45    # "aaa_shared_secret":Ljava/lang/String;
    .restart local v48    # "profile_enabled1":Ljava/lang/String;
    .restart local v49    # "home_address1":Ljava/lang/String;
    .restart local v50    # "primary_ha_address1":Ljava/lang/String;
    .restart local v51    # "secondary_ha_address1":Ljava/lang/String;
    .restart local v52    # "reverse_tunnel_preferred1":Ljava/lang/String;
    .restart local v53    # "nai1":Ljava/lang/String;
    .restart local v54    # "mn_ha_spi1":Ljava/lang/String;
    .restart local v55    # "mn_aaa_spi1":Ljava/lang/String;
    .restart local v56    # "ha_shared_secret1":Ljava/lang/String;
    .restart local v57    # "aaa_shared_secret1":Ljava/lang/String;
    .restart local v70    # "_1x_data_rc":Ljava/lang/String;
    .restart local v72    # "active_user":Ljava/lang/String;
    .restart local v73    # "allowed":Ljava/lang/String;
    .restart local v74    # "an_ppp_nai":Ljava/lang/String;
    .restart local v75    # "an_ppp_password":Ljava/lang/String;
    .restart local v79    # "call_end_reselection_timer":Ljava/lang/String;
    .restart local v80    # "cdma1x_avoid_bsr_count":Ljava/lang/String;
    .restart local v85    # "data_qnc":Ljava/lang/String;
    .restart local v86    # "data_scrm":Ljava/lang/String;
    .restart local v87    # "ddtm":Ljava/lang/String;
    .restart local v88    # "default_packet_data_inactivity_timer":Ljava/lang/String;
    .restart local v89    # "deregistration_retries":Ljava/lang/String;
    .restart local v90    # "dtmf_settings":Ljava/lang/String;
    .restart local v93    # "evdo_call_end_reselection_hold_timer":Ljava/lang/String;
    .restart local v94    # "evdo_redirection_timer":Ljava/lang/String;
    .restart local v95    # "evdo_reselection_hold_timer":Ljava/lang/String;
    .restart local v96    # "evdo_reselection_timer":Ljava/lang/String;
    .restart local v104    # "hand_down_reselection_hold_timer":Ljava/lang/String;
    .restart local v105    # "handoff_reselection_timer":Ljava/lang/String;
    .restart local v109    # "initial_registration_retry_interval":Ljava/lang/String;
    .restart local v113    # "max_access_probe_avoid_timer":Ljava/lang/String;
    .restart local v114    # "mobile_ip_behavior":Ljava/lang/String;
    .restart local v116    # "mrd_mode":Ljava/lang/String;
    .restart local v119    # "number_of_avoid_bsr_count":Ljava/lang/String;
    .restart local v120    # "packet_dial_string":Ljava/lang/String;
    .restart local v124    # "ppp_authentication_retries":Ljava/lang/String;
    .restart local v125    # "ppp_authentication_timeout":Ljava/lang/String;
    .restart local v126    # "ppp_ipcp_compression":Ljava/lang/String;
    .restart local v127    # "ppp_ipcp_config_nak_tries":Ljava/lang/String;
    .restart local v128    # "ppp_ipcp_config_request_timeout":Ljava/lang/String;
    .restart local v129    # "ppp_ipcp_config_request_tries":Ljava/lang/String;
    .restart local v130    # "ppp_ipcp_term_timeout":Ljava/lang/String;
    .restart local v131    # "ppp_ipcp_term_tries":Ljava/lang/String;
    .restart local v132    # "ppp_lcp_config_request_timeout":Ljava/lang/String;
    .restart local v133    # "ppp_lcp_config_request_tries":Ljava/lang/String;
    .restart local v134    # "ppp_lcp_term_timeout":Ljava/lang/String;
    .restart local v135    # "ppp_lcp_term_tries":Ljava/lang/String;
    .restart local v136    # "pre_lifetime_expiry_re_registration":Ljava/lang/String;
    .restart local v137    # "rapid_dormancy_timeout":Ljava/lang/String;
    .restart local v138    # "re_register_only_if_traffic_since_last_rrq":Ljava/lang/String;
    .restart local v139    # "redirection_timer":Ljava/lang/String;
    .restart local v140    # "registration_retries":Ljava/lang/String;
    .restart local v141    # "resume_default_dormancy_timeout":Ljava/lang/String;
    .restart local v142    # "rfc2002bis_mn_ha_authenticator_calculation":Ljava/lang/String;
    .restart local v143    # "rm_ipcp_keep_alive_during_pdp":Ljava/lang/String;
    .restart local v144    # "rm_ppp_detect":Ljava/lang/String;
    .restart local v145    # "rm_ppp_lcp_config_nak_tries":Ljava/lang/String;
    .restart local v150    # "service_option":Ljava/lang/String;
    .restart local v154    # "um_1xevdo":Ljava/lang/String;
    .restart local v155    # "um_optimized_dormant_handoff":Ljava/lang/String;
    .restart local v156    # "um_ppp_authentication_password":Ljava/lang/String;
    .restart local v157    # "um_ppp_authentication_tethered_nai":Ljava/lang/String;
    .restart local v158    # "um_ppp_authentication_user_id":Ljava/lang/String;
    .restart local v159    # "um_primary_dns":Ljava/lang/String;
    .restart local v160    # "um_secondary_dns":Ljava/lang/String;
    :cond_d2
    const-string v2, "off"

    move-object/from16 v0, v73

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    goto/16 :goto_7

    .restart local v111    # "location_privacy":Ljava/lang/String;
    .restart local v121    # "pde_ip_address":Ljava/lang/String;
    .restart local v122    # "pde_port_number":Ljava/lang/String;
    :cond_d3
    const-string v2, "off"

    move-object/from16 v0, v111

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    goto/16 :goto_8

    .restart local v103    # "gpsone_capabilities_clm":Ljava/lang/String;
    :cond_d4
    const-string v2, "off"

    move-object/from16 v0, v103

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    goto/16 :goto_9

    .restart local v60    # "pdn_label":Ljava/lang/String;
    .restart local v61    # "apn_ni":Ljava/lang/String;
    .restart local v62    # "pdn_type":Ljava/lang/String;
    .restart local v63    # "inactivity_timer":Ljava/lang/String;
    .restart local v64    # "rat_type":Ljava/lang/String;
    .restart local v65    # "authentication_type":Ljava/lang/String;
    .restart local v66    # "username":Ljava/lang/String;
    .restart local v67    # "password":Ljava/lang/String;
    .restart local v77    # "bsrmaxtimer":Ljava/lang/String;
    .restart local v78    # "bsrtimer":Ljava/lang/String;
    .restart local v92    # "ehrpd_capability":Ljava/lang/String;
    .restart local v110    # "ipv6_capability":Ljava/lang/String;
    .restart local v115    # "mode_preference":Ljava/lang/String;
    .restart local v117    # "n_attach_tries":Ljava/lang/String;
    .restart local v118    # "nextltescan":Ljava/lang/String;
    .restart local v153    # "t3402":Ljava/lang/String;
    :cond_d5
    const-string v2, "disable"

    move-object/from16 v0, v106

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "0"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x22

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_a

    :cond_d6
    const-string v2, "disable"

    move-object/from16 v0, v102

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "0"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x23

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_b

    :cond_d7
    const-string v2, "disable"

    move-object/from16 v0, v101

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x24

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "0"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x24

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_c

    :cond_d8
    const-string v2, "disable"

    move-object/from16 v0, v97

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb0

    const-string v4, "0"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x11d

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_d

    :cond_d9
    const-string v2, "0"

    move-object/from16 v0, v146

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x1ba

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    goto/16 :goto_e

    :cond_da
    const-string v2, "false"

    move-object/from16 v0, v161

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "0"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0xb3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_f

    :cond_db
    const-string v2, "off"

    move-object/from16 v0, v73

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_be

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1213

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "0"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x1213

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_10

    :cond_dc
    const-string v2, "off"

    move-object/from16 v0, v111

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1c4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "0"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x1c4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_11

    :cond_dd
    const-string v2, "off"

    move-object/from16 v0, v103

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v6, "0"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v8, 0x190

    move-object/from16 v0, p0

    iget v10, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnTag:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_12
.end method

.method private resetSctrnParams(Ljava/lang/String;I)V
    .locals 50
    .param p1, "resetType"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    const-string v2, "CPSprintPriManager"

    const-string v3, "resetSctrnParams enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v49, 0x0

    .local v49, "rtnMip1":I
    const-string v5, ""

    .local v5, "mdn":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v44

    .local v44, "mMeid":Ljava/lang/String;
    if-eqz v44, :cond_0

    const/16 v2, 0x10

    :try_start_0
    move-object/from16 v0, v44

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v42

    .local v42, "iDec":J
    invoke-static/range {v42 .. v43}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v44

    .end local v42    # "iDec":J
    :cond_0
    :goto_0
    if-eqz v44, :cond_1

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_2
    const-string v2, "access_overload_class"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, "accolc":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v31, ""

    :cond_3
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams accolc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_4
    const-string v2, "imsi_11_12"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "imsi_11_12":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams imsi_11_12:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_5
    const-string v2, "phone_number_imsi_s"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .local v47, "phone_number_imsi_s":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams phone_number_imsi_s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_6
    const-string v2, "call_end_reselection_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .local v33, "call_end_reselection_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams call_end_reselection_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_7
    const-string v2, "handoff_reselection_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .local v41, "handoff_reselection_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams handoff_reselection_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_8
    const-string v2, "redirection_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .local v48, "redirection_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams redirection_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_9
    const-string v2, "evdo_reselection_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .local v39, "evdo_reselection_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evdo_reselection_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_a
    const-string v2, "evdo_reselection_hold_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .local v38, "evdo_reselection_hold_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evdo_reselection_hold_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_b
    const-string v2, "evdo_redirection_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .local v37, "evdo_redirection_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evdo_redirection_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_c
    const-string v2, "evdo_call_end_reselection_hold_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .local v36, "evdo_call_end_reselection_hold_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams evdo_call_end_reselection_hold_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_d
    const-string v2, "hand_down_reselection_hold_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .local v40, "hand_down_reselection_hold_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams hand_down_reselection_hold_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_e
    const-string v2, "max_access_probe_avoid_timer"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .local v45, "max_access_probe_avoid_timer":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams max_access_probe_avoid_timer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_f
    const-string v2, "cdma1x_avoid_bsr_count"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .local v34, "cdma1x_avoid_bsr_count":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams cdma1x_avoid_bsr_count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_10
    const-string v2, "number_of_avoid_bsr_count"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .local v46, "number_of_avoid_bsr_count":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams number_of_avoid_bsr_count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_11
    const-string v2, "active_user"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .local v32, "active_user":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams active_user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    const-string v2, "profile_enabled1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "profile_enabled1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams profile_enabled1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_13
    const-string v2, "aaa_shared_secret1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "aaa_shared_secret1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams aaa_shared_secret1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    move/from16 v0, v49

    or-int/lit16 v0, v0, 0x200

    move/from16 v49, v0

    :cond_14
    const-string v2, "nai1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .local v25, "nai1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams nai1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    or-int/lit8 v49, v49, 0x20

    :cond_15
    const-string v2, "ha_shared_secret1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, "ha_shared_secret1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams ha_shared_secret1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move/from16 v0, v49

    or-int/lit16 v0, v0, 0x100

    move/from16 v49, v0

    :cond_16
    const-string v2, "mn_ha_spi1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, "mn_ha_spi1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mn_ha_spi1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    or-int/lit8 v49, v49, 0x40

    :cond_17
    const-string v2, "mn_aaa_spi1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .local v27, "mn_aaa_spi1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams mn_aaa_spi1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    move/from16 v0, v49

    or-int/lit16 v0, v0, 0x80

    move/from16 v49, v0

    :cond_18
    const-string v2, "reverse_tunnel_preferred1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .local v24, "reverse_tunnel_preferred1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams reverse_tunnel_preferred1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    or-int/lit8 v49, v49, 0x10

    :cond_19
    const-string v2, "home_address1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, "home_address1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams home_address1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    or-int/lit8 v49, v49, 0x2

    :cond_1a
    const-string v2, "primary_ha_address1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "primary_ha_address1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams primary_ha_address1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    or-int/lit8 v49, v49, 0x4

    :cond_1b
    const-string v2, "secondary_ha_address1"

    const-string v3, "value"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "secondary_ha_address1":Ljava/lang/String;
    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRtnParams secondary_ha_address1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    or-int/lit8 v49, v49, 0x8

    :cond_1c
    const-string v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const v3, 0x80002

    const/16 v4, 0xb2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0xb2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v2, p0

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_1d
    const-string v2, ""

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const v2, 0x9001a

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v6, 0x25

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParam(IIILandroid/os/Message;)V

    :cond_1e
    const-string v2, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const v7, 0x80002

    const/16 v8, 0xb1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0xb1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v6, p0

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_1f
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object/from16 v0, v47

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .local v13, "min2":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "min1":Ljava/lang/String;
    const v11, 0x80002

    const/16 v12, 0x21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0x21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v10, p0

    move/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    const v15, 0x80002

    const/16 v16, 0x20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v14, p0

    move/from16 v18, p2

    invoke-virtual/range {v14 .. v19}, Lcom/yulong/android/telephony/CPSprintPriManager;->setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V

    .end local v13    # "min2":Ljava/lang/String;
    .end local v17    # "min1":Ljava/lang/String;
    :cond_20
    const-string v2, ""

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "12"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0xc

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_21
    const-string v2, ""

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "16"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0x10

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_22
    const-string v2, ""

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "20"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0x14

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_23
    const-string v2, ""

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "24"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0x18

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_24
    const-string v2, ""

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "28"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0x1c

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_25
    const-string v2, ""

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "32"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0x20

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_26
    const-string v2, ""

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "36"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0x24

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_27
    const-string v2, ""

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "68"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0x44

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_28
    const-string v2, ""

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "92"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0x5c

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_29
    const-string v2, ""

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "96"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0x60

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_2a
    const-string v2, ""

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe33

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "100"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0xe33

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/16 v10, 0x64

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_2b
    const-string v2, ""

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1d0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x1d0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_2c
    new-instance v18, Lcom/yulong/android/telephony/MobileIpProfile;

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const-string v30, "1"

    invoke-direct/range {v18 .. v30}, Lcom/yulong/android/telephony/MobileIpProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v18, "mip1":Lcom/yulong/android/telephony/MobileIpProfile;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCurrentPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->mMyHandler:Landroid/os/Handler;

    const/16 v4, 0x1d1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnTag:I

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->mobileIpProfileWrite(Ljava/lang/Object;Landroid/os/Message;)V

    return-void

    .end local v9    # "imsi_11_12":Ljava/lang/String;
    .end local v18    # "mip1":Lcom/yulong/android/telephony/MobileIpProfile;
    .end local v20    # "profile_enabled1":Ljava/lang/String;
    .end local v21    # "home_address1":Ljava/lang/String;
    .end local v22    # "primary_ha_address1":Ljava/lang/String;
    .end local v23    # "secondary_ha_address1":Ljava/lang/String;
    .end local v24    # "reverse_tunnel_preferred1":Ljava/lang/String;
    .end local v25    # "nai1":Ljava/lang/String;
    .end local v26    # "mn_ha_spi1":Ljava/lang/String;
    .end local v27    # "mn_aaa_spi1":Ljava/lang/String;
    .end local v28    # "ha_shared_secret1":Ljava/lang/String;
    .end local v29    # "aaa_shared_secret1":Ljava/lang/String;
    .end local v31    # "accolc":Ljava/lang/String;
    .end local v32    # "active_user":Ljava/lang/String;
    .end local v33    # "call_end_reselection_timer":Ljava/lang/String;
    .end local v34    # "cdma1x_avoid_bsr_count":Ljava/lang/String;
    .end local v36    # "evdo_call_end_reselection_hold_timer":Ljava/lang/String;
    .end local v37    # "evdo_redirection_timer":Ljava/lang/String;
    .end local v38    # "evdo_reselection_hold_timer":Ljava/lang/String;
    .end local v39    # "evdo_reselection_timer":Ljava/lang/String;
    .end local v40    # "hand_down_reselection_hold_timer":Ljava/lang/String;
    .end local v41    # "handoff_reselection_timer":Ljava/lang/String;
    .end local v45    # "max_access_probe_avoid_timer":Ljava/lang/String;
    .end local v46    # "number_of_avoid_bsr_count":Ljava/lang/String;
    .end local v47    # "phone_number_imsi_s":Ljava/lang/String;
    .end local v48    # "redirection_timer":Ljava/lang/String;
    :catch_0
    move-exception v35

    .local v35, "e":Ljava/lang/Exception;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCarrierNameFromParamStore()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, "Carrier_Name"

    const-string v1, "value"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimLockState()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .local v0, "ret":I
    const-string v2, "sim_lock"

    const-string v3, "oemvalue"

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/yulong/android/telephony/CPSprintPriManager;->getParamFromPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "state":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CPSprintPriManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetPriParams(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "resetType"    # Ljava/lang/String;
    .param p2, "phoneType"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const-string v0, "CPSprintPriManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPriParams resetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,phoneType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RTN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "rtnResetFailedItems: "

    iput-object v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnResetFailedItems:Ljava/lang/String;

    iput-object p3, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnMsg:Landroid/os/Message;

    iput v3, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->rtnNum:I

    invoke-direct {p0, p1, p2}, Lcom/yulong/android/telephony/CPSprintPriManager;->resetRtnParams(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SCRTN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "scrtnResetFailedItems: "

    iput-object v0, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnResetFailedItems:Ljava/lang/String;

    iput v3, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnNum:I

    iput-object p3, p0, Lcom/yulong/android/telephony/CPSprintPriManager;->scrtnMsg:Landroid/os/Message;

    invoke-direct {p0, p1, p2}, Lcom/yulong/android/telephony/CPSprintPriManager;->resetSctrnParams(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setNvParam(IIILandroid/os/Message;)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "payload"    # I
    .param p3, "phoneType"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    sget v2, Lcom/yulong/android/telephony/CPSprintPriManager;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .local v1, "request":[B
    invoke-static {v1}, Lcom/yulong/android/telephony/CPSprintPriManager;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x4

    invoke-static {v0, p1, v2}, Lcom/yulong/android/telephony/CPSprintPriManager;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-string v2, "CPSprintPriManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNvParam requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/yulong/android/telephony/CPSprintPriManager;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne p3, v2, :cond_1

    sget-object v2, Lcom/yulong/android/telephony/CPSprintPriManager;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v1, p4}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/yulong/android/telephony/CPSprintPriManager;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v1, p4}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setNvParamByItem(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 30
    .param p1, "requestId"    # I
    .param p2, "nvItemId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "phoneType"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v19, 0x0

    .local v19, "request":[B
    const/16 v17, 0x0

    .local v17, "nam":B
    const/4 v9, 0x0

    .local v9, "data":[B
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v27, ","

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .local v22, "str1":[Ljava/lang/String;
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v4, v0, [B

    .local v4, "channel_primary_ab":[B
    if-eqz v22, :cond_2

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    const/16 v27, 0x0

    aget-object v27, v22, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "channel_primary_a":I
    const/16 v27, 0x1

    aget-object v27, v22, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "channel_primary_b":I
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput-byte v28, v4, v27

    const/16 v27, 0x2

    and-int/lit16 v0, v3, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v4, v27

    const/16 v27, 0x3

    shr-int/lit8 v28, v3, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v4, v27

    const/16 v27, 0x4

    and-int/lit16 v0, v5, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v4, v27

    const/16 v27, 0x5

    shr-int/lit8 v28, v5, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v4, v27

    .end local v3    # "channel_primary_a":I
    .end local v5    # "channel_primary_b":I
    :cond_2
    move-object v9, v4

    .end local v4    # "channel_primary_ab":[B
    .end local v22    # "str1":[Ljava/lang/String;
    :goto_1
    sget v27, Lcom/yulong/android/telephony/CPSprintPriManager;->mHeaderSize:I

    add-int/lit8 v27, v27, 0x4

    add-int/lit8 v27, v27, 0x4

    array-length v0, v9

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/yulong/android/telephony/CPSprintPriManager;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v18

    .local v18, "reqBuffer":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_0

    const/16 v27, 0x4

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/yulong/android/telephony/CPSprintPriManager;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v0, v9

    move/from16 v27, v0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-string v27, "CPSprintPriManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "setNvParamByItem requestId = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",request = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v27, Lcom/yulong/android/telephony/CPSprintPriManager;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v27

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    sget-object v27, Lcom/yulong/android/telephony/CPSprintPriManager;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_0

    .end local v18    # "reqBuffer":Ljava/nio/ByteBuffer;
    :sswitch_1
    const/16 v27, 0xb

    move/from16 v0, v27

    new-array v13, v0, [B

    .local v13, "mdn":[B
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput-byte v28, v13, v27

    if-eqz p3, :cond_3

    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_3

    rsub-int/lit8 v27, v10, 0xa

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    sub-int v28, v28, v10

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v13, v27

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v10    # "i":I
    :cond_3
    move-object v9, v13

    goto/16 :goto_1

    .end local v13    # "mdn":[B
    :sswitch_2
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .local v11, "mValue":I
    const/16 v27, 0xc

    move/from16 v0, v27

    new-array v14, v0, [B

    .local v14, "min1":[B
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput-byte v28, v14, v27

    const/16 v27, 0x8

    and-int/lit16 v0, v11, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v14, v27

    const/16 v27, 0x9

    shr-int/lit8 v28, v11, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v14, v27

    const/16 v27, 0xa

    shr-int/lit8 v28, v11, 0x10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v14, v27

    const/16 v27, 0xb

    shr-int/lit8 v28, v11, 0x18

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v14, v27

    move-object v9, v14

    goto/16 :goto_1

    .end local v11    # "mValue":I
    .end local v14    # "min1":[B
    :sswitch_3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .restart local v11    # "mValue":I
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v15, v0, [B

    .local v15, "min2":[B
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput-byte v28, v15, v27

    const/16 v27, 0x4

    and-int/lit16 v0, v11, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v15, v27

    const/16 v27, 0x5

    shr-int/lit8 v28, v11, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v15, v27

    move-object v9, v15

    goto/16 :goto_1

    .end local v11    # "mValue":I
    .end local v15    # "min2":[B
    :sswitch_4
    const-string v27, ","

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .local v21, "str":[Ljava/lang/String;
    const/16 v27, 0x52

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .local v20, "sidnid":[B
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput-byte v28, v20, v27

    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    const/16 v27, 0x0

    aget-object v27, v21, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .local v24, "va3":I
    const/16 v27, 0x1

    aget-object v27, v21, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .local v25, "va4":I
    const/16 v27, 0x2

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v20, v27

    const/16 v27, 0x3

    shr-int/lit8 v28, v24, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v20, v27

    const/16 v27, 0x4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v20, v27

    const/16 v27, 0x5

    shr-int/lit8 v28, v25, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v20, v27

    .end local v24    # "va3":I
    .end local v25    # "va4":I
    :cond_4
    move-object/from16 v9, v20

    goto/16 :goto_1

    .end local v20    # "sidnid":[B
    .end local v21    # "str":[Ljava/lang/String;
    :sswitch_5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .restart local v11    # "mValue":I
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v12, v0, [B

    .local v12, "mcc":[B
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput-byte v28, v12, v27

    const/16 v27, 0x2

    and-int/lit16 v0, v11, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v12, v27

    const/16 v27, 0x3

    shr-int/lit8 v28, v11, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v12, v27

    move-object v9, v12

    goto/16 :goto_1

    .end local v11    # "mValue":I
    .end local v12    # "mcc":[B
    :sswitch_6
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .restart local v11    # "mValue":I
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .local v16, "mnc":[B
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput-byte v28, v16, v27

    const/16 v27, 0x1

    and-int/lit16 v0, v11, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v16, v27

    move-object/from16 v9, v16

    goto/16 :goto_1

    .end local v11    # "mValue":I
    .end local v16    # "mnc":[B
    :sswitch_7
    const-string v27, ","

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .local v23, "str2":[Ljava/lang/String;
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v7, v0, [B

    .local v7, "channel_secondary_ab":[B
    if-eqz v23, :cond_5

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_5

    const/16 v27, 0x0

    aget-object v27, v23, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "channel_secondary_a":I
    const/16 v27, 0x1

    aget-object v27, v23, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "channel_secondary_b":I
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput-byte v28, v7, v27

    const/16 v27, 0x2

    and-int/lit16 v0, v6, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v7, v27

    const/16 v27, 0x3

    shr-int/lit8 v28, v6, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v7, v27

    const/16 v27, 0x4

    and-int/lit16 v0, v8, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v7, v27

    const/16 v27, 0x5

    shr-int/lit8 v28, v8, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v7, v27

    .end local v6    # "channel_secondary_a":I
    .end local v8    # "channel_secondary_b":I
    :cond_5
    move-object v9, v7

    goto/16 :goto_1

    .end local v7    # "channel_secondary_ab":[B
    .end local v23    # "str2":[Ljava/lang/String;
    :sswitch_8
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .restart local v11    # "mValue":I
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .local v26, "voice_priv":[B
    const/16 v27, 0x0

    and-int/lit16 v0, v11, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v26, v27

    move-object/from16 v9, v26

    goto/16 :goto_1

    .end local v11    # "mValue":I
    .end local v26    # "voice_priv":[B
    .restart local v18    # "reqBuffer":Ljava/nio/ByteBuffer;
    :cond_6
    sget-object v27, Lcom/yulong/android/telephony/CPSprintPriManager;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_7
        0x20 -> :sswitch_2
        0x21 -> :sswitch_3
        0xb0 -> :sswitch_5
        0xb1 -> :sswitch_6
        0xb2 -> :sswitch_1
        0xb3 -> :sswitch_8
        0x103 -> :sswitch_4
    .end sparse-switch
.end method

.method public setParamToPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prop"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "mSetValuesOK":Z
    :try_start_0
    const-string v4, "com.yulong.android.server.systeminterface.ParamStore"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "ParamStore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setParam"

    const/4 v5, 0x3

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

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .local v3, "setParam":Ljava/lang/reflect/Method;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "ParamStore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "setParam":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSimLockState(I)Z
    .locals 3
    .param p1, "state"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "oemvalue":Ljava/lang/String;
    const-string v1, "sim_lock"

    const-string v2, "oemvalue"

    invoke-virtual {p0, v1, v2, v0}, Lcom/yulong/android/telephony/CPSprintPriManager;->setParamToPersist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
