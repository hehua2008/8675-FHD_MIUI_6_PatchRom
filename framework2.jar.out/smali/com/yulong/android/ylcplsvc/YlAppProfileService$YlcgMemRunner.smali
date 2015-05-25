.class Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;
.super Ljava/lang/Object;
.source "YlAppProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/ylcplsvc/YlAppProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YlcgMemRunner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner$Accessor;
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lcom/yulong/android/ylcplsvc/YlAppProfileService;


# direct methods
.method public constructor <init>(Lcom/yulong/android/ylcplsvc/YlAppProfileService;)V
    .locals 1

    .prologue
    .line 369
    iput-object p1, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;->this$0:Lcom/yulong/android/ylcplsvc/YlAppProfileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;->executor:Ljava/util/concurrent/ExecutorService;

    .line 370
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 374
    new-instance v0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner$Accessor;

    invoke-direct {v0, p0}, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner$Accessor;-><init>(Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;)V

    .line 375
    .local v0, "a":Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner$Accessor;
    iget-object v1, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMemRunner;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method
