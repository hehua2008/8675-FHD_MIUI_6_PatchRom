.class public Lcom/yulong/android/telephony/CardInfo;
.super Ljava/lang/Object;
.source "CardInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/telephony/CardInfo$PinState;,
        Lcom/yulong/android/telephony/CardInfo$CardType;
    }
.end annotation


# instance fields
.field public mActive:Z

.field public mCardCarrierName:Ljava/lang/String;

.field public mCardType:Lcom/yulong/android/telephony/CardInfo$CardType;

.field public mModemId:I

.field public mPin1:Ljava/lang/String;

.field public mPinNumLeft:B

.field public mPukNumLeft:B

.field public mUniversalPinState:Lcom/yulong/android/telephony/CardInfo$PinState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method
