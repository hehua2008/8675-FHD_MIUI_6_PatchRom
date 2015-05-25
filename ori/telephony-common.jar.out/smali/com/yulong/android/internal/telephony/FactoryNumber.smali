.class public Lcom/yulong/android/internal/telephony/FactoryNumber;
.super Ljava/lang/Object;
.source "FactoryNumber.java"


# instance fields
.field private key:I

.field private operate:I

.field private resultString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/FactoryNumber;->setKey(I)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/FactoryNumber;->setOperate(I)V

    .line 11
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/FactoryNumber;->setResultString(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/yulong/android/internal/telephony/FactoryNumber;->key:I

    return v0
.end method

.method public getOperate()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yulong/android/internal/telephony/FactoryNumber;->operate:I

    return v0
.end method

.method public getResultString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/FactoryNumber;->resultString:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/yulong/android/internal/telephony/FactoryNumber;->key:I

    .line 16
    return-void
.end method

.method public setOperate(I)V
    .locals 0
    .param p1, "operate"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/yulong/android/internal/telephony/FactoryNumber;->operate:I

    .line 24
    return-void
.end method

.method public setResultString(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultString"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/FactoryNumber;->resultString:Ljava/lang/String;

    .line 32
    return-void
.end method
