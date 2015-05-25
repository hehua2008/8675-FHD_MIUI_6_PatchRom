.class Lcom/android/internal/widget/FingerScreenshotView$1;
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
    iput-object p1, p0, Lcom/android/internal/widget/FingerScreenshotView$1;->this$0:Lcom/android/internal/widget/FingerScreenshotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.android.intent.action.ShotChord"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/widget/FingerScreenshotView$1;->this$0:Lcom/android/internal/widget/FingerScreenshotView;

    # getter for: Lcom/android/internal/widget/FingerScreenshotView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/widget/FingerScreenshotView;->access$400(Lcom/android/internal/widget/FingerScreenshotView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "PointerScreenshotChordView"

    const-string v2, "PointerScreenshotChordView  PointerScreenshotChord "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
