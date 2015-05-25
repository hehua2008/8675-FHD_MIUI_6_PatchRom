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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->iccIndex:I

    iput p2, p0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    return-void
.end method
