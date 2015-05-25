.class Lcom/android/internal/telephony/gsm/SpnOverride$1;
.super Ljava/lang/Thread;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SpnOverride;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SpnOverride;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$1;->this$0:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 60
    :try_start_0
    # invokes: Lcom/android/internal/telephony/gsm/SpnOverride;->loadSpnOverrides(I)V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->access$000(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GSM"

    const-string v3, "SpnOverride_init:"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
