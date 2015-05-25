.class Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsDeleteInfo"
.end annotation


# instance fields
.field public count:I

.field public destport:I

.field public networkType:I

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
