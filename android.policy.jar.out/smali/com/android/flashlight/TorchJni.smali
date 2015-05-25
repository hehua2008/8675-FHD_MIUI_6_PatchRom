.class public Lcom/android/flashlight/TorchJni;
.super Ljava/lang/Object;
.source "TorchJni.java"


# static fields
.field public static final ACTION_TORCH_OFF:Ljava/lang/String; = "com.android.intent.action.FlashLight_Close_Flag"

.field public static final ACTION_TORCH_ON:Ljava/lang/String; = "com.android.intent.action.FlashLight_On_Flag"

.field public static final OPEN_CAMERA:Ljava/lang/String; = "com.android.intent.aciton.Open_Camera"

.field public static final SYS_ACTION_CLOSE:Ljava/lang/String; = "com.android.intent.action.Close_FlashLight"

.field public static final SYS_ACTION_OPEN:Ljava/lang/String; = "com.android.intent.action.Open_FlashLight"

.field public static flashLightIsOpen:Z

.field public static hasLibTorch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    sput-boolean v2, Lcom/android/flashlight/TorchJni;->flashLightIsOpen:Z

    .line 31
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/flashlight/TorchJni;->hasLibTorch:Z

    .line 41
    :try_start_0
    const-string v1, "Torch"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 42
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 43
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 44
    sput-boolean v2, Lcom/android/flashlight/TorchJni;->hasLibTorch:Z

    .line 45
    const-string v1, "TorchJni"

    const-string v2, "there is no libTorch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native yl_close()Z
.end method

.method public native yl_flash_process(I)I
.end method

.method public native yl_open()Z
.end method
