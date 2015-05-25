.class public Lcom/yulong/android/ylcplsvc/YlAppProfiles;
.super Ljava/lang/Object;
.source "YlAppProfiles.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YlAppProfiles"

.field static mInstance:Lcom/yulong/android/ylcplsvc/YlAppProfiles;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static final getDefault()Lcom/yulong/android/ylcplsvc/YlAppProfiles;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->mInstance:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    invoke-direct {v0}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;-><init>()V

    sput-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->mInstance:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    .line 33
    :cond_0
    sget-object v0, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->mInstance:Lcom/yulong/android/ylcplsvc/YlAppProfiles;

    return-object v0
.end method


# virtual methods
.method public getAppProfilePropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/yulong/android/ylcplsvc/YlCPLClient;->getDefault()Lcom/yulong/android/ylcplsvc/IYlCPL;

    move-result-object v3

    .line 62
    .local v3, "ylCPL":Lcom/yulong/android/ylcplsvc/IYlCPL;
    if-eqz v3, :cond_0

    .line 63
    invoke-interface {v3, p1, p2}, Lcom/yulong/android/ylcplsvc/IYlCPL;->getAppProfileSettingBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    move v2, v1

    .line 69
    .end local v1    # "ret":Z
    .end local v3    # "ylCPL":Lcom/yulong/android/ylcplsvc/IYlCPL;
    .local v2, "ret":I
    :goto_0
    return v2

    .line 65
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "YlAppProfiles"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to retrieve profile. Error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 67
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v1, -0x1

    .line 46
    .local v1, "ret":I
    :try_start_0
    invoke-static {}, Lcom/yulong/android/ylcplsvc/YlCPLClient;->getDefault()Lcom/yulong/android/ylcplsvc/IYlCPL;

    move-result-object v2

    .line 47
    .local v2, "ylCPL":Lcom/yulong/android/ylcplsvc/IYlCPL;
    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v2, p1, p2}, Lcom/yulong/android/ylcplsvc/IYlCPL;->getAppProfileSettingInt(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    move v3, v1

    .line 55
    .end local v2    # "ylCPL":Lcom/yulong/android/ylcplsvc/IYlCPL;
    :goto_0
    return v3

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "YlAppProfiles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve profile. Error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/yulong/android/ylcplsvc/YlAppProfiles;->getAppProfilePropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendPowerHint(I[I)V
    .locals 5
    .param p1, "hint"    # I
    .param p2, "data"    # [I

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Lcom/yulong/android/ylcplsvc/YlCPLClient;->getDefault()Lcom/yulong/android/ylcplsvc/IYlCPL;

    move-result-object v1

    .line 75
    .local v1, "ylCPL":Lcom/yulong/android/ylcplsvc/IYlCPL;
    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v1, p1, p2}, Lcom/yulong/android/ylcplsvc/IYlCPL;->sendPowerHint(I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "ylCPL":Lcom/yulong/android/ylcplsvc/IYlCPL;
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "YlAppProfiles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to sendPowerHint. Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
