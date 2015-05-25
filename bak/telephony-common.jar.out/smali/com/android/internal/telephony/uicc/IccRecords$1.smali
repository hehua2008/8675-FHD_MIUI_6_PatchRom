.class Lcom/android/internal/telephony/uicc/IccRecords$1;
.super Ljava/lang/Thread;
.source "IccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/IccRecords;->getCardAllPBMInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccRecords;

.field final synthetic val$efid:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccRecords;I)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/IccRecords;

    iput p2, p0, Lcom/android/internal/telephony/uicc/IccRecords$1;->val$efid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$1;->val$efid:I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords$1;->val$efid:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords$1;->this$0:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 449
    return-void
.end method
