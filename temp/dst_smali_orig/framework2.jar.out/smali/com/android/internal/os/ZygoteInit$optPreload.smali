.class public Lcom/android/internal/os/ZygoteInit$optPreload;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "optPreload"
.end annotation


# static fields
.field private static pClassesThread:Ljava/lang/Thread;

.field private static pOpenGLThread:Ljava/lang/Thread;

.field private static pResourcesThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/ZygoteInit$optPreload$1;

    invoke-direct {v1}, Lcom/android/internal/os/ZygoteInit$optPreload$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/android/internal/os/ZygoteInit$optPreload;->pClassesThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/ZygoteInit$optPreload$2;

    invoke-direct {v1}, Lcom/android/internal/os/ZygoteInit$optPreload$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/android/internal/os/ZygoteInit$optPreload;->pResourcesThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/ZygoteInit$optPreload$3;

    invoke-direct {v1}, Lcom/android/internal/os/ZygoteInit$optPreload$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/android/internal/os/ZygoteInit$optPreload;->pOpenGLThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static syncPreload()V
    .locals 3

    .prologue
    const-string v1, "Zygote"

    const-string v2, "dalvik mode preload option"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/os/ZygoteInit$optPreload;->pResourcesThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, Lcom/android/internal/os/ZygoteInit$optPreload;->pClassesThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, Lcom/android/internal/os/ZygoteInit$optPreload;->pOpenGLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    sget-object v1, Lcom/android/internal/os/ZygoteInit$optPreload;->pResourcesThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    sget-object v1, Lcom/android/internal/os/ZygoteInit$optPreload;->pClassesThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    sget-object v1, Lcom/android/internal/os/ZygoteInit$optPreload;->pOpenGLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v1, "Zygote"

    const-string v2, "syncPreload failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
