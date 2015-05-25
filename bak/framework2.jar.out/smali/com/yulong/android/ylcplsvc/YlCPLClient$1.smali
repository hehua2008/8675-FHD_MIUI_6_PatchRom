.class final Lcom/yulong/android/ylcplsvc/YlCPLClient$1;
.super Landroid/util/Singleton;
.source "YlCPLClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/ylcplsvc/YlCPLClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/yulong/android/ylcplsvc/IYlCPL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/yulong/android/ylcplsvc/IYlCPL;
    .locals 5

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "ret":Lcom/yulong/android/ylcplsvc/IYlCPL;
    const-string v3, "ylcpl"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 42
    const-string v3, "YlCPLClinet"

    const-string v4, "can\'t get service binder: ylcpl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 52
    .end local v1    # "ret":Lcom/yulong/android/ylcplsvc/IYlCPL;
    .local v2, "ret":Lcom/yulong/android/ylcplsvc/IYlCPL;
    :goto_0
    return-object v2

    .line 46
    .end local v2    # "ret":Lcom/yulong/android/ylcplsvc/IYlCPL;
    .restart local v1    # "ret":Lcom/yulong/android/ylcplsvc/IYlCPL;
    :cond_0
    invoke-static {v0}, Lcom/yulong/android/ylcplsvc/IYlCPL$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/ylcplsvc/IYlCPL;

    move-result-object v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    const-string v3, "YlCPLClinet"

    const-string v4, "can\'t get service interface: ylcpl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v1

    .line 52
    .end local v1    # "ret":Lcom/yulong/android/ylcplsvc/IYlCPL;
    .restart local v2    # "ret":Lcom/yulong/android/ylcplsvc/IYlCPL;
    goto :goto_0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yulong/android/ylcplsvc/YlCPLClient$1;->create()Lcom/yulong/android/ylcplsvc/IYlCPL;

    move-result-object v0

    return-object v0
.end method
