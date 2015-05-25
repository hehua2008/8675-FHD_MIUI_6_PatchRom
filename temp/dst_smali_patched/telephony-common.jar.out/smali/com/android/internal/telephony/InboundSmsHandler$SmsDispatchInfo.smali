.class Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsDispatchInfo"
.end annotation


# instance fields
.field public delay:J

.field public destPort:I

.field public displayTimeout:J

.field public networkType:I

.field public pdus:[[B

.field public size:I

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
