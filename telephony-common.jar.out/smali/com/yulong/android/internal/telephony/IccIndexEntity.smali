.class public Lcom/yulong/android/internal/telephony/IccIndexEntity;
.super Ljava/lang/Object;
.source "IccIndexEntity.java"


# instance fields
.field public iccIndex:I

.field public retryCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "indexValue"    # I
    .param p2, "num"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->iccIndex:I

    .line 35
    iput p2, p0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    .line 36
    return-void
.end method
