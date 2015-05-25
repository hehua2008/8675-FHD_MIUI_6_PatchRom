.class Lcom/android/internal/widget/FingerScreenshotView$2;
.super Ljava/lang/Object;
.source "FingerScreenshotView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FingerScreenshotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FingerScreenshotView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FingerScreenshotView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FingerScreenshotView$2;->this$0:Lcom/android/internal/widget/FingerScreenshotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "PointerScreenshotChordView"

    const-string v1, "PointerScreenshotChordView  SystemProperties 0 "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "yulong.sys.screen.shotchord"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
