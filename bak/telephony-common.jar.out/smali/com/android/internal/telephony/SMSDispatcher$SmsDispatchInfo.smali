.class public Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsDispatchInfo"
.end annotation


# instance fields
.field public destPort:I

.field public networkType:I

.field public pdus:[[B

.field public size:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    .prologue
    .line 2452
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
