.class Lcom/yulong/android/cloudsecurity/server/CloudSecurity$1;
.super Ljava/lang/Object;
.source "CloudSecurity.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/cloudsecurity/server/CloudSecurity;


# direct methods
.method constructor <init>(Lcom/yulong/android/cloudsecurity/server/CloudSecurity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity$1;->this$0:Lcom/yulong/android/cloudsecurity/server/CloudSecurity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "CloudSecurity"

    const-string v1, "cSecurity native has died "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    # setter for: Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;
    invoke-static {v0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->access$002(Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;)Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 198
    return-void
.end method
