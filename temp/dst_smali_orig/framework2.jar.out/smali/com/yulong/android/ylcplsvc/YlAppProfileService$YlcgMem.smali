.class Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;
.super Ljava/lang/Object;
.source "YlAppProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/ylcplsvc/YlAppProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YlcgMem"
.end annotation


# instance fields
.field public mAdj:I

.field public mHint:I

.field public mName:Ljava/lang/String;

.field public mPid:I

.field final synthetic this$0:Lcom/yulong/android/ylcplsvc/YlAppProfileService;


# direct methods
.method public constructor <init>(Lcom/yulong/android/ylcplsvc/YlAppProfileService;Ljava/lang/String;III)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "adj"    # I
    .param p5, "hint"    # I

    .prologue
    iput-object p1, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;->this$0:Lcom/yulong/android/ylcplsvc/YlAppProfileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;->mPid:I

    iput p4, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;->mAdj:I

    iput p5, p0, Lcom/yulong/android/ylcplsvc/YlAppProfileService$YlcgMem;->mHint:I

    return-void
.end method
