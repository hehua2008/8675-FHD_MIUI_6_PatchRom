.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
.super Ljava/lang/Object;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;
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
    .line 4295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;

    .prologue
    .line 4295
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;-><init>()V

    return-void
.end method
