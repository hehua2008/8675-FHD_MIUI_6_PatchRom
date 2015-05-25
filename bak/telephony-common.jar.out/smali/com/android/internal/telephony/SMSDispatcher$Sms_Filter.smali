.class public Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sms_Filter"
.end annotation


# instance fields
.field public addressNum:Ljava/lang/String;

.field public crcResult:I

.field public refNumber:I

.field public seqNumber:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    .prologue
    .line 2882
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
