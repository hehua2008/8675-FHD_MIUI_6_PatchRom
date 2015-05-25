.class Lcom/yulong/android/internal/telephony/SidNidOverride$1;
.super Ljava/lang/Thread;
.source "SidNidOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/internal/telephony/SidNidOverride;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/SidNidOverride;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/SidNidOverride;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SidNidOverride$1;->this$0:Lcom/yulong/android/internal/telephony/SidNidOverride;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 61
    :try_start_0
    # invokes: Lcom/yulong/android/internal/telephony/SidNidOverride;->loadSpnOverrides(I)V
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/SidNidOverride;->access$000(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GSM"

    const-string v3, "SidNidOverride_init:"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
