.class public Lcom/android/internal/telephony/cdma/sms/UserData$CMASData;
.super Ljava/lang/Object;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CMASData"
.end annotation


# instance fields
.field public CmasTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public iAlertHandling:I

.field public iCMASId:I

.field public iCategory:I

.field public iCertainty:I

.field public iCharSet:I

.field public iLanguage:I

.field public iProtocolVersion:I

.field public iResponseType:I

.field public iSeverity:I

.field public iUrgency:I

.field public sContent:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/sms/UserData;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData$CMASData;->this$0:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
