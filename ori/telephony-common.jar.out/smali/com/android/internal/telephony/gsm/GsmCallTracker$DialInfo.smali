.class Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;
.super Ljava/lang/Object;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialInfo"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field clirMode:I

.field result:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1804
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->address:Ljava/lang/String;

    .line 1805
    iput p3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->clirMode:I

    .line 1806
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->result:Landroid/os/Message;

    .line 1807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1808
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1810
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->address:Ljava/lang/String;

    .line 1811
    iput p3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->clirMode:I

    .line 1812
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1813
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->result:Landroid/os/Message;

    .line 1814
    return-void
.end method
