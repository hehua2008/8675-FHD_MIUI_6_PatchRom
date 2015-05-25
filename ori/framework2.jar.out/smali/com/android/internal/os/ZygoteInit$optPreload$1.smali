.class final Lcom/android/internal/os/ZygoteInit$optPreload$1;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit$optPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 840
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadClasses()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$000()V

    .line 841
    return-void
.end method
