.class Lcom/android/internal/telephony/SMSDispatcher$2;
.super Ljava/lang/Thread;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 717
    # getter for: Lcom/android/internal/telephony/SMSDispatcher;->mObjeCheckTimeoutLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->processMultipartMessage()V

    .line 719
    monitor-exit v1

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
