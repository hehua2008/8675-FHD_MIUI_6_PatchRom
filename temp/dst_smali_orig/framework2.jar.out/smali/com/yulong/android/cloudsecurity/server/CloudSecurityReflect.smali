.class public Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;
.super Ljava/lang/Object;
.source "CloudSecurityReflect.java"


# static fields
.field static CloudSecurity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static TAG:Ljava/lang/String;

.field static cloudSecurityInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "CloudSecurityReflect"

    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->TAG:Ljava/lang/String;

    const-string v0, "com.yulong.android.cloudsecurity.server.CloudSecurity"

    invoke-static {v0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    invoke-static {}, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity_getDefault()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CloudSecurity_csCheckActivity(Landroid/content/Intent;)Z
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckActivity"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Intent;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckBlueTooth()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckBlueTooth"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckCallPhone(I)Z
    .locals 8
    .param p0, "uid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckCallPhone"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckCamera()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckCamera"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckGPS()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckGPS"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckMms()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckMms"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckMobileData(Z)Z
    .locals 8
    .param p0, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckMobileData"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckNFC()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckNFC"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckProvider(Landroid/net/Uri;)Z
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckProvider"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckRecord()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckRecord"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckSms(I)Z
    .locals 8
    .param p0, "uid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckSms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckUpdateProvider(Landroid/net/Uri;)Z
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckUpdateProvider"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static CloudSecurity_csCheckWLAN()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckWLAN"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private static CloudSecurity_getDefault()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v3, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "getDefault"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static CloudSecurity_rebuildGPSData(Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "reBuildGPSBundle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private static Load_class(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "classPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method
