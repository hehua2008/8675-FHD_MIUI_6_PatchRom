.class public Lcom/yulong/android/feature/YulongFeatureUtils;
.super Lcom/yulong/android/feature/YulongFeature;
.source "YulongFeatureUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/feature/YulongFeature;-><init>()V

    return-void
.end method

.method public static isSupportControlFloatingWindow()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportEncryptExternalSdcard()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportFileSafeBox()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportXposed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
