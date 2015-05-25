.class public Lcom/yulong/android/internal/telephony/PhoneModeListener;
.super Ljava/lang/Object;
.source "PhoneModeListener.java"


# static fields
.field public static final LISTEN_PIN_LEFT_STATE:I = 0x1

.field public static final LISTEN_PUK_LEFT_STATE:I = 0x2

.field public static final LISTEN_SELECT_NET_RESULT:I = 0x4


# instance fields
.field callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeListener$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/PhoneModeListener$1;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeListener;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeListener;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    .line 63
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeListener$2;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/PhoneModeListener$2;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeListener;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onQueryPinResult(IILjava/lang/String;)V
    .locals 0
    .param p1, "pinLeft"    # I
    .param p2, "slotId"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    .line 100
    return-void
.end method

.method public onQueryPukResult(IILjava/lang/String;)V
    .locals 0
    .param p1, "pukLeft"    # I
    .param p2, "slotId"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    .line 110
    return-void
.end method

.method public onSelectNetResult(IILjava/lang/String;)V
    .locals 0
    .param p1, "cdmaRadio"    # I
    .param p2, "gsmRadio"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    .line 120
    return-void
.end method
