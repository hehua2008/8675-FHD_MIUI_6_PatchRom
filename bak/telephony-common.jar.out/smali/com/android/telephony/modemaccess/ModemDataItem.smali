.class public interface abstract Lcom/android/telephony/modemaccess/ModemDataItem;
.super Ljava/lang/Object;
.source "ModemDataItem.java"


# static fields
.field public static final EVENT_CLEAR_DATA_DONE:I = 0x4

.field public static final EVENT_GET_CAPACITY_DONE:I = 0x2

.field public static final EVENT_GET_VERSION_DONE:I = 0x1

.field public static final EVENT_UPDATE_DATA_DONE:I = 0x3


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getCapacity()I
.end method

.method public abstract getVersion()I
.end method

.method public abstract update([B)V
.end method
