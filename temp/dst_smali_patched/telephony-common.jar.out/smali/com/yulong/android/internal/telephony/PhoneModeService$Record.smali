.class Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
.super Ljava/lang/Object;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

.field events:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService$1;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;-><init>()V

    return-void
.end method
