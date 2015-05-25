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
    .line 10
    const-string v0, "CloudSecurityReflect"

    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->TAG:Ljava/lang/String;

    .line 14
    const-string v0, "com.yulong.android.cloudsecurity.server.CloudSecurity"

    invoke-static {v0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity_getDefault()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CloudSecurity_csCheckActivity(Landroid/content/Intent;)Z
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 102
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckActivity"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Intent;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 104
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 105
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 106
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

    .line 111
    :goto_0
    return v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 111
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckBlueTooth()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 336
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckBlueTooth"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 338
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 339
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 340
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

    .line 345
    :goto_0
    return v2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 345
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckCallPhone(I)Z
    .locals 8
    .param p0, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 124
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckCallPhone"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 126
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 127
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 128
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

    .line 133
    :goto_0
    return v2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 133
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckCamera()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 251
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckCamera"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 253
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 254
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 255
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

    .line 260
    :goto_0
    return v2

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 260
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckGPS()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 188
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckGPS"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 190
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 191
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 192
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

    .line 197
    :goto_0
    return v2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 197
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckMms()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 167
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckMms"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 169
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 170
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 171
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

    .line 176
    :goto_0
    return v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 176
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckMobileData(Z)Z
    .locals 8
    .param p0, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 315
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckMobileData"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 317
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 318
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 319
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

    .line 324
    :goto_0
    return v2

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 324
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckNFC()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 293
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckNFC"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 295
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 296
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 297
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

    .line 302
    :goto_0
    return v2

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 302
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckProvider(Landroid/net/Uri;)Z
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckProvider"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 60
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 61
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 62
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

    .line 67
    :goto_0
    return v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 67
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckRecord()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 230
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckRecord"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 232
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 233
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 234
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

    .line 239
    :goto_0
    return v2

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 239
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckSms(I)Z
    .locals 8
    .param p0, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 146
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckSms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 148
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 149
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 150
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

    .line 155
    :goto_0
    return v2

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 155
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckUpdateProvider(Landroid/net/Uri;)Z
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 80
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckUpdateProvider"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 82
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 83
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
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

    .line 89
    :goto_0
    return v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 89
    goto :goto_0
.end method

.method public static CloudSecurity_csCheckWLAN()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 272
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckWLAN"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 274
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 275
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 276
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

    .line 281
    :goto_0
    return v2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 281
    goto :goto_0
.end method

.method private static CloudSecurity_getDefault()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v3, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 36
    sget-object v3, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "getDefault"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 38
    :cond_0
    if-eqz v1, :cond_1

    .line 39
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 45
    :cond_1
    :goto_0
    return-object v2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static CloudSecurity_rebuildGPSData(Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 209
    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "reBuildGPSBundle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 211
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurityReflect;->cloudSecurityInstance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 212
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 213
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

    .line 218
    :goto_0
    return v2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 218
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
    .line 21
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 25
    :goto_0
    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 25
    const/4 v1, 0x0

    goto :goto_0
.end method
