.class final Lcom/android/server/power/YlShutdown$4;
.super Ljava/lang/Object;
.source "YlShutdown.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/YlShutdown;->shutTelephony(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ITelephony:Ljava/lang/Object;

.field final synthetic val$inData:Landroid/os/Bundle;

.field final synthetic val$outData:Landroid/os/Bundle;

.field final synthetic val$powercontrol:I


# direct methods
.method constructor <init>(Ljava/lang/Object;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/server/power/YlShutdown$4;->val$ITelephony:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/power/YlShutdown$4;->val$powercontrol:I

    iput-object p3, p0, Lcom/android/server/power/YlShutdown$4;->val$inData:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/power/YlShutdown$4;->val$outData:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 343
    const-string v1, "ShutdownThread"

    const-string v2, "come to shutdown gsm !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/android/server/power/YlShutdown$4;->val$ITelephony:Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/power/YlShutdown$4;->val$powercontrol:I

    iget-object v3, p0, Lcom/android/server/power/YlShutdown$4;->val$inData:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/server/power/YlShutdown$4;->val$outData:Landroid/os/Bundle;

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_telephonyDualIoControl(Ljava/lang/Object;ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v0

    .line 347
    .local v0, "gsm_radioOff":Z
    if-eqz v0, :cond_0

    .line 348
    const-string v1, "ShutdownThread"

    const-string v2, "Turning off gsm modem successful!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v1, "ShutdownThread"

    const-string v2, "Turning off gsm modem fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
