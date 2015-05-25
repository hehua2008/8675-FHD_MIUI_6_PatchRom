.class public Lcom/yulong/android/ylcplsvc/YlCPLClient;
.super Ljava/lang/Object;
.source "YlCPLClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YlCPLClinet"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/yulong/android/ylcplsvc/IYlCPL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/yulong/android/ylcplsvc/YlCPLClient$1;

    invoke-direct {v0}, Lcom/yulong/android/ylcplsvc/YlCPLClient$1;-><init>()V

    sput-object v0, Lcom/yulong/android/ylcplsvc/YlCPLClient;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/yulong/android/ylcplsvc/IYlCPL;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/yulong/android/ylcplsvc/YlCPLClient;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/ylcplsvc/IYlCPL;

    return-object v0
.end method
