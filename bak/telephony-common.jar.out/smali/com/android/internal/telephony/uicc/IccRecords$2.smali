.class Lcom/android/internal/telephony/uicc/IccRecords$2;
.super Ljava/lang/Object;
.source "IccRecords.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/IccRecords;->fetchCardSmsAndPBM(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$2;->this$0:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$2;->this$0:Lcom/android/internal/telephony/uicc/IccRecords;

    const-string v2, "fwk delay 10s for loading sms"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 510
    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$2;->this$0:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords$2;->this$0:Lcom/android/internal/telephony/uicc/IccRecords;

    iget v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mCurReadIndex:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getAllCardSms(I)V

    .line 516
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
