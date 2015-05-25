.class public Lcom/yulong/android/videotelephony/VideoTelephonyService;
.super Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;
.source "VideoTelephonyService.java"


# static fields
.field public static final ACTION_VIDEO_TELEPHONY_SERVICE_READY:Ljava/lang/String; = "com.leadcore.intent.action.VIDEO_TELEPHONY_SERVICE_READY"

.field private static final DBG:Z = true

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x408

.field private static final LOG_TAG:Ljava/lang/String; = "VideoTelephonyService"

.field private static final PHONE_DISCONNECTED:I = 0x3

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field public static final PHONE_STATE_CHANGED_ACTIVE:I = 0x1

.field public static final PHONE_STATE_CHANGED_ALERTING:I = 0x4

.field public static final PHONE_STATE_CHANGED_DIALING:I = 0x3

.field public static final PHONE_STATE_CHANGED_DISCONNECTED:I = 0x7

.field public static final PHONE_STATE_CHANGED_DISCONNECTING:I = 0x8

.field public static final PHONE_STATE_CHANGED_HOLDING:I = 0x2

.field public static final PHONE_STATE_CHANGED_INCOMING:I = 0x5

.field public static final PHONE_STATE_CHANGED_WAITING:I = 0x6

.field public static final VT_ANSWER_EXCEPTION:I = -0x4

.field public static final VT_ANSWER_FALLBACK_EXCEPTION:I = -0x5

.field public static final VT_CALl_STATE_ACTIVE:I = 0x1

.field public static final VT_CALl_STATE_DIALING:I = 0x3

.field public static final VT_CALl_STATE_IDLE:I = 0x0

.field public static final VT_CALl_STATE_INCOMING:I = 0x5

.field protected static final VT_CODEC_OPERATION:I = 0x16

.field protected static final VT_CODEC_OPERATION_RESPONSE:I = 0x1b

.field protected static final VT_CODEC_VAULE_ERRO:I = 0x0

.field protected static final VT_CODEC_VAULE_ONE:I = 0x1

.field protected static final VT_CODEC_VAULE_THREE:I = 0x3

.field protected static final VT_CODEC_VAULE_TWO:I = 0x2

.field public static final VT_DIAL_EXCEPTION:I = -0x1

.field public static final VT_DISCONNECT_BASE:I = 0x3e8

.field public static final VT_DISCONNECT_BEARER_NOT_AUTHORIZED:I = 0x3fb

.field public static final VT_DISCONNECT_BEARER_NOT_AVAIL:I = 0x3fc

.field public static final VT_DISCONNECT_BEARER_SERVICE_NOT_IMPLEMENTED:I = 0x403

.field public static final VT_DISCONNECT_BUSY:I = 0x3f3

.field public static final VT_DISCONNECT_CONGESTION:I = 0x406

.field public static final VT_DISCONNECT_CONNECTED:I = 0x3fe

.field public static final VT_DISCONNECT_DESTINATION_OUT_OF_ORDER:I = 0x3f7

.field public static final VT_DISCONNECT_DISCONNECTED:I = 0x3ff

.field public static final VT_DISCONNECT_DISCONNECTED_INCOMING_MISSED:I = 0x407

.field public static final VT_DISCONNECT_INCOMING_REJECTED:I = 0x3f5

.field public static final VT_DISCONNECT_INCOMPATIBLE_DESTINATION:I = 0x3f9

.field public static final VT_DISCONNECT_INVALID_NUMBER:I = 0x3f4

.field public static final VT_DISCONNECT_LOST_SIGNAL:I = 0x400

.field public static final VT_DISCONNECT_NORMAL_UNSPECIFIED:I = 0x401

.field protected static final VT_DISCONNECT_NOTICE:I = 0x18

.field public static final VT_DISCONNECT_NO_USER_RESPONDING:I = 0x405

.field public static final VT_DISCONNECT_NUMBER_CHANGED:I = 0x3fd

.field public static final VT_DISCONNECT_POWER_OFF:I = 0x3f6

.field public static final VT_DISCONNECT_PROTOCOL_ERROR:I = 0x402

.field public static final VT_DISCONNECT_RESOURCES_NOT_AVAIL:I = 0x3fa

.field public static final VT_DISCONNECT_SERVICE_OR_OPTION_NOT_IMPLEMENTED:I = 0x404

.field public static final VT_DISCONNECT_UNOBTAINABLE_NUMBER:I = 0x3f8

.field public static final VT_DISCONNECT_USER_ALERTING_NO_ANSWER:I = 0x3f2

.field protected static final VT_DVTDATA_NOTICE:I = 0x17

.field public static final VT_HUNGUP_EXCEPTION:I = -0x2

.field public static final VT_HUNGUP_UDUB_EXCEPTION:I = -0x3

.field protected static final VT_NEWRING_NOTICE:I = 0x19

.field protected static final VT_OPERATION_ANSWER:I = 0x7

.field protected static final VT_OPERATION_HANGUP_OR_REJECT:I = 0x6

.field protected static final VT_OPERATION_SENDCODEC:I = 0x8

.field protected static final VT_OPERATION_SEND_STR:I = 0x1

.field protected static final VT_OPERATION_SET_LOCALMUTE:I = 0x2

.field protected static final VT_OPERATION_SET_REMOTEMUTE:I = 0x3

.field protected static final VT_OPERATION_START_RECORD:I = 0x4

.field protected static final VT_OPERATION_STOP_RECORD:I = 0x5

.field protected static final VT_RECEIVE_STR_NOTICE:I = 0x1a

.field public static serviceBuildFlag:Z

.field public static videoCallState:I


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/yulong/android/videotelephony/IVideoTelephonyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-boolean v0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->serviceBuildFlag:Z

    .line 147
    sput v0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->videoCallState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-direct {p0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;-><init>()V

    .line 122
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    .line 407
    new-instance v0, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/videotelephony/VideoTelephonyService$1;-><init>(Lcom/yulong/android/videotelephony/VideoTelephonyService;)V

    iput-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 166
    iput-object p1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 172
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVideoCodecOperation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVideoDataCanSend(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x19

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVideoNewRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVideoReceiveStrFromRemote(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    :cond_0
    sget-boolean v0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->serviceBuildFlag:Z

    if-nez v0, :cond_1

    .line 181
    sput-boolean v4, Lcom/yulong/android/videotelephony/VideoTelephonyService;->serviceBuildFlag:Z

    .line 182
    invoke-direct {p0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->publish()V

    .line 185
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/videotelephony/VideoTelephonyService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/videotelephony/VideoTelephonyService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yulong/android/videotelephony/VideoTelephonyService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/videotelephony/VideoTelephonyService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onOperationComplete(Landroid/os/Message;)V

    return-void
.end method

.method private disconnectCodeFromCause(Lcom/android/internal/telephony/Connection$DisconnectCause;)I
    .locals 3
    .param p1, "cause"    # Lcom/android/internal/telephony/Connection$DisconnectCause;

    .prologue
    .line 867
    const-string v0, "VideoTelephonyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_0

    .line 869
    const/16 v0, 0x407

    .line 931
    :goto_0
    return v0

    .line 871
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_1

    .line 872
    const/16 v0, 0x3f3

    goto :goto_0

    .line 874
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_2

    .line 875
    const/16 v0, 0x406

    goto :goto_0

    .line 877
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_3

    .line 878
    const/16 v0, 0x3f4

    goto :goto_0

    .line 880
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_4

    .line 881
    const/16 v0, 0x400

    goto :goto_0

    .line 883
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_5

    .line 884
    const/16 v0, 0x3f5

    goto :goto_0

    .line 886
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_6

    .line 887
    const/16 v0, 0x3f6

    goto :goto_0

    .line 889
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_7

    .line 890
    const/16 v0, 0x3f8

    goto :goto_0

    .line 904
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_8

    .line 905
    const/16 v0, 0x3f7

    goto :goto_0

    .line 910
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->VT_RESOURCE_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_9

    .line 911
    const/16 v0, 0x3fa

    goto :goto_0

    .line 913
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->VT_BEARER_CAP_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_a

    .line 914
    const/16 v0, 0x3fb

    goto :goto_0

    .line 916
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->VT_BEARER_CAP_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_b

    .line 917
    const/16 v0, 0x3fc

    goto :goto_0

    .line 925
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->FALLBACK_VT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v0, :cond_c

    .line 926
    const/16 v0, 0x3f9

    goto :goto_0

    .line 931
    :cond_c
    const/16 v0, 0x3ff

    goto :goto_0
.end method

.method public static getVideoCallState()I
    .locals 1

    .prologue
    .line 150
    sget v0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->videoCallState:I

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 935
    const-string v0, "VideoTelephonyService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void
.end method

.method private obtainCompleteMessage(II)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 302
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 303
    .local v0, "completeMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 304
    return-object v0
.end method

.method private onDisconnected(ILcom/yulong/android/videotelephony/VTConnectionData;)V
    .locals 0
    .param p1, "cause"    # I
    .param p2, "vtcd"    # Lcom/yulong/android/videotelephony/VTConnectionData;

    .prologue
    .line 857
    invoke-virtual {p0, p1, p2}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->callbackDisconnect(ILcom/yulong/android/videotelephony/VTConnectionData;)V

    .line 858
    return-void
.end method

.method private onError(I)V
    .locals 5
    .param p1, "exception"    # I

    .prologue
    .line 823
    iget-object v4, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 824
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 825
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 827
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    invoke-interface {v3, p1}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Error to broadcast onError"

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 834
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 833
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 834
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 835
    return-void
.end method

.method private onOperationComplete(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOperationComplete: msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg.arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 450
    iget-object v4, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 451
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 452
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 454
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v5}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onOperationComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "callback failure"

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 461
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 460
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 461
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 463
    return-void
.end method

.method private onPhoneStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPhoneStateChanged(@@@@@@@@@@@@@@state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 670
    iget-object v4, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 672
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPhoneStateChanged begin broadcast state"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 673
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 674
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 675
    const-string v3, "onPhoneStateChanged loop"

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    invoke-interface {v3, p1}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onPhoneStateChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    :catch_0
    move-exception v1

    .line 679
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "callback failure"

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 685
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 686
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "callback failure."

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 691
    return-void

    .line 683
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_4
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 689
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3
.end method

.method private publish()V
    .locals 3

    .prologue
    .line 188
    const-string v0, "videoPhoneService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    const-string v0, "videoPhoneService"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 191
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.leadcore.intent.action.VIDEO_TELEPHONY_SERVICE_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method callbackDisconnect(ILcom/yulong/android/videotelephony/VTConnectionData;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "vtcd"    # Lcom/yulong/android/videotelephony/VTConnectionData;

    .prologue
    .line 839
    const-string v3, "VideoTelephonyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call back disconnect cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v4, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 841
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 842
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 844
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    invoke-interface {v3, p1, p2}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onDisconnected(ILcom/yulong/android/videotelephony/VTConnectionData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "VideoTelephonyService"

    const-string v5, "Error to broadcast onDisconnect."

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 851
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 850
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 851
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 852
    return-void
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    return v0
.end method

.method public hasVideoCall()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 611
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 612
    .local v0, "cForeground":Lcom/android/internal/telephony/Connection;
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 614
    .local v1, "cRinging":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasVideoCall cForeground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 622
    :goto_0
    return v2

    .line 618
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasVideoCall cRinging="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCanSendDataNotice(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x0

    .line 544
    new-array v0, v7, [I

    .line 545
    .local v0, "askDataNotice":[I
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 548
    const-string v5, "onCanSendDataNotice error"

    invoke-direct {p0, v5}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 575
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 554
    const-string v5, "onCanSendDataNotice the result is null"

    invoke-direct {p0, v5}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_1
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCanSendDataNotice the result is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 560
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v4, v5

    check-cast v4, [I

    .line 562
    .local v4, "response":[I
    iget-object v6, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 563
    :try_start_0
    iget-object v5, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 564
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 566
    :try_start_1
    iget-object v5, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    const/4 v7, 0x0

    aget v7, v0, v7

    invoke-interface {v5, v7}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onAskForData(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "callback failure"

    invoke-direct {p0, v5}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 573
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 572
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 573
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onDisconnected(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v10, 0x0

    .line 765
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 767
    .local v7, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 768
    const-string v8, "onDisconnected set static state = 0"

    invoke-direct {p0, v8}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 769
    iput v10, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    .line 770
    sput v10, Lcom/yulong/android/videotelephony/VideoTelephonyService;->videoCallState:I

    .line 771
    if-nez v7, :cond_0

    .line 772
    const-string v8, "cn == null"

    invoke-direct {p0, v8}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 805
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideoCall()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 781
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v2

    .line 783
    .local v2, "isIncoming":Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCreateTime()J

    move-result-wide v3

    .line 784
    .local v3, "createTime":J
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v6

    .line 785
    .local v6, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getNumberPresentation()I

    move-result v5

    .line 786
    .local v5, "numberPresentation":I
    const-string v8, "VideoTelephonyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cn.disconnect cause: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disconnection: address="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isIncoming="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " createTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numberPresentation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cause"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 788
    new-instance v0, Lcom/yulong/android/videotelephony/VTConnectionData;

    invoke-direct/range {v0 .. v5}, Lcom/yulong/android/videotelephony/VTConnectionData;-><init>(Ljava/lang/String;ZJI)V

    .line 789
    .local v0, "vtcd":Lcom/yulong/android/videotelephony/VTConnectionData;
    const-string v8, "VideoTelephonyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect cause: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/internal/telephony/gsm/GsmConnection;->videoDisconnectCause:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget v8, v7, Lcom/android/internal/telephony/gsm/GsmConnection;->videoDisconnectCause:I

    const/16 v9, 0x1f

    if-eq v8, v9, :cond_1

    iget v8, v7, Lcom/android/internal/telephony/gsm/GsmConnection;->videoDisconnectCause:I

    const/16 v9, 0x29

    if-eq v8, v9, :cond_1

    iget v8, v7, Lcom/android/internal/telephony/gsm/GsmConnection;->videoDisconnectCause:I

    const/16 v9, 0x41

    if-eq v8, v9, :cond_1

    iget v8, v7, Lcom/android/internal/telephony/gsm/GsmConnection;->videoDisconnectCause:I

    const/16 v9, 0x6f

    if-eq v8, v9, :cond_1

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_2

    .line 793
    :cond_1
    iget v8, v7, Lcom/android/internal/telephony/gsm/GsmConnection;->videoDisconnectCause:I

    invoke-direct {p0, v8, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onDisconnected(ILcom/yulong/android/videotelephony/VTConnectionData;)V

    goto/16 :goto_0

    .line 797
    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v8

    invoke-direct {p0, v8, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onDisconnected(ILcom/yulong/android/videotelephony/VTConnectionData;)V

    goto/16 :goto_0

    .line 802
    .end local v0    # "vtcd":Lcom/yulong/android/videotelephony/VTConnectionData;
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "isIncoming":Z
    .end local v3    # "createTime":J
    .end local v5    # "numberPresentation":I
    .end local v6    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_3
    const-string v8, "Disconnect: voice call"

    invoke-direct {p0, v8}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 701
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 703
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s new video call ringing, number is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 705
    const-string v1, "onNewRingingConnection set static state = 5"

    invoke-direct {p0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 706
    const/4 v1, 0x5

    iput v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    .line 707
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onNewRingingConnection(Ljava/lang/String;)V

    .line 712
    :goto_0
    return-void

    .line 711
    :cond_0
    const-string v1, "It\'s not a new video call ringing"

    invoke-direct {p0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNewRingingConnection(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 737
    const-string v3, "onNewRingingConnection set static state = 5"

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 738
    const/4 v3, 0x5

    iput v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    .line 739
    iget-object v4, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 740
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 741
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 744
    if-eqz p1, :cond_0

    .line 745
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    invoke-interface {v3, p1}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onNewRingingConnection(Ljava/lang/String;)V

    .line 741
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    :cond_0
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    const-string v5, "unknown number"

    invoke-interface {v3, v5}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onNewRingingConnection(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 748
    :catch_0
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "callback failure"

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 754
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 753
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 754
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 755
    return-void
.end method

.method public onNewRingingVoiceConnection(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 717
    const-string v3, "onNewRingingVoiceConnection &&&&&&&......"

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 719
    iget-object v4, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 720
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 721
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 724
    if-eqz p1, :cond_0

    .line 725
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    invoke-interface {v3, p1}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onNewRingingVoiceConnection(Ljava/lang/String;)V

    .line 721
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    :cond_0
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    const-string v5, "unknown number"

    invoke-interface {v3, v5}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onNewRingingVoiceConnection(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 728
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "callback failure"

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 734
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 733
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 734
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 735
    return-void
.end method

.method public onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 633
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 634
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    const-string v1, "It\'s not video call"

    invoke-direct {p0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 661
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 643
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged set static state active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 647
    :cond_2
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 649
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged set static state incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 653
    :cond_3
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 655
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged set static state Dialing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 659
    :cond_4
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    sput v1, Lcom/yulong/android/videotelephony/VideoTelephonyService;->videoCallState:I

    .line 660
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onPhoneStateChanged(I)V

    goto/16 :goto_0
.end method

.method public onReceiveCodec(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "codec":I
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 479
    const-string v5, "onReceiveCodec error"

    invoke-direct {p0, v5}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 484
    const-string v5, "onReceiveCodec the result is null"

    invoke-direct {p0, v5}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 488
    .local v1, "codecBack":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveCodec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 490
    if-eqz v1, :cond_0

    .line 492
    iget-object v7, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 494
    :try_start_0
    iget-object v5, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 495
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 499
    :try_start_1
    iget-object v5, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onReceiveCodec(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 501
    :catch_0
    move-exception v2

    .line 504
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "callback failure"

    invoke-direct {p0, v5}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 509
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 508
    .restart local v3    # "i":I
    .restart local v4    # "n":I
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 509
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 510
    const-string v5, "3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 512
    const/4 v0, 0x3

    .line 514
    :cond_4
    const-string v5, "2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 516
    const/4 v0, 0x2

    .line 518
    :cond_5
    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 520
    const/4 v0, 0x1

    .line 523
    :cond_6
    if-nez v0, :cond_7

    .line 525
    const-string v5, "codec is 0"

    invoke-direct {p0, v5}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCodecBack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 530
    iget-object v5, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x1b

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendCodecBack(Landroid/os/Message;I)V

    goto/16 :goto_0
.end method

.method public onReceiveStrFromRemote(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveStrFromRemote: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 588
    iget-object v5, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 589
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 590
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 592
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;->onReceiveStrFromRemote(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "callback failure"

    invoke-direct {p0, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 599
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 598
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 599
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 601
    return-void
.end method

.method public register(Lcom/yulong/android/videotelephony/IVideoTelephonyListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 207
    return-void
.end method

.method public sendCodecBack(I)V
    .locals 3
    .param p1, "codec"    # I

    .prologue
    .line 384
    const-string v0, "VTCall sendCodeBack....."

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x408

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->obtainCompleteMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->sendCodecBack(Landroid/os/Message;I)V

    .line 387
    return-void
.end method

.method public setRemoteMute(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRemoteMute state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x408

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->obtainCompleteMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRemoteMute(ZLandroid/os/Message;)V

    .line 345
    return-void
.end method

.method public setSounddevice(I)V
    .locals 2
    .param p1, "sndDevice"    # I

    .prologue
    .line 399
    const-string v0, "VideoTelephonyService"

    const-string v1, "VideoTelephonyService, setSounddevice()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setSounddevice(I)V

    .line 402
    return-void
.end method

.method public startRecording()V
    .locals 3

    .prologue
    .line 356
    const-string v0, "VTCall startRecording....."

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x408

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->obtainCompleteMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->startRecording(Landroid/os/Message;)V

    .line 359
    return-void
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 370
    const-string v0, "VTCall stopRecording....."

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x408

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->obtainCompleteMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopRecording(Landroid/os/Message;)V

    .line 373
    return-void
.end method

.method public unregister(Lcom/yulong/android/videotelephony/IVideoTelephonyListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 211
    return-void
.end method

.method public vpAnswer(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "anyone_path"    # Ljava/lang/String;
    .param p2, "remot_path"    # Ljava/lang/String;
    .param p3, "displayType"    # I

    .prologue
    .line 252
    const-string v0, "vpAnswer video call"

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x408

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->obtainCompleteMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->vpAnswer(Landroid/os/Message;)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public vpAnswerForVoice()Z
    .locals 3

    .prologue
    .line 294
    const-string v0, "Fallback  vedio call"

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x408

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->obtainCompleteMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->vpAnswerForVoice(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public vpCancel()V
    .locals 3

    .prologue
    .line 280
    const-string v0, "vpCancel the vedio call"

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 281
    const-string v0, "vpCancel set static state = 0"

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x408

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->obtainCompleteMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->vpCancel(Landroid/os/Message;)V

    .line 284
    return-void
.end method

.method public vpMakeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "strTelphoneCode"    # Ljava/lang/String;
    .param p2, "anyone_path"    # Ljava/lang/String;
    .param p3, "remot_path"    # Ljava/lang/String;
    .param p4, "displayType"    # I

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpMakeCall number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    const-string v0, "Cannot VTdial: not in idle state"

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneBase;->vpMakeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public vpReject()V
    .locals 3

    .prologue
    .line 265
    const-string v0, "vpReject the vedio call"

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 266
    const-string v0, "vpReject set static state = 0"

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->state:I

    .line 268
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x408

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->obtainCompleteMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->vpReject(Landroid/os/Message;)V

    .line 269
    return-void
.end method

.method public vpSendUserNum(Ljava/lang/String;)V
    .locals 3
    .param p1, "cDigit"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpSendUserNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x408

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->obtainCompleteMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->vpSendUserNum(Ljava/lang/String;Landroid/os/Message;)V

    .line 318
    return-void
.end method

.method public vpSetMicorphone(I)Z
    .locals 4
    .param p1, "iCommand"    # I

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpSetMicorphone state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->log(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VideoTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    int-to-short v1, p1

    const/16 v2, 0x408

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->obtainCompleteMessage(II)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->vpSetMicorphone(SLandroid/os/Message;)Z

    move-result v0

    return v0
.end method
