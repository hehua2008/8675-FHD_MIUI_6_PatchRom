.class public final Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;
.super Ljava/lang/Object;
.source "CdmaSmsSendStruct.java"


# static fields
.field public static final BACKGROUND_MESSAGE:I = 0x1

.field public static final NORMAL_MESSAGE:I


# instance fields
.field public Id:I

.field public SN:I

.field public bIsEms:B

.field public content:[B

.field public deliveryAckReq:B

.field public encoding:B

.field public maxNum:I

.field public msgLen:I

.field public pduContent:[B

.field public pduContentLen:I

.field public pid:B

.field public refNum:I

.field public serviceID:I

.field public telLen:I

.field public telNum:[B

.field public type:I

.field public validityPeriodRelativeSet:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
