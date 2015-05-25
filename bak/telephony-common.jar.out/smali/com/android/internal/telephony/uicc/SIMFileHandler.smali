.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# instance fields
.field LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 30
    const-string v0, "SIMFH"

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Looper;)V
    .locals 4
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Looper;)V

    .line 30
    const-string v2, "SIMFH"

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    .line 44
    invoke-interface {p3}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v1

    .line 45
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    .line 47
    .local v0, "commType":I
    packed-switch v0, :pswitch_data_0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_NO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    .line 64
    :goto_0
    return-void

    .line 49
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 52
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_T"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 55
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_W"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 58
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 68
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 4
    .param p1, "efid"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "flag":Z
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 88
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 89
    sparse-switch p1, :sswitch_data_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 123
    const-string v1, "3F007F105F3A"

    .line 164
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 111
    :sswitch_0
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 114
    :sswitch_1
    const-string v1, "3F007F105F3A"

    goto :goto_0

    .line 128
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1    # "path":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 162
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    .end local v1    # "path":Ljava/lang/String;
    :sswitch_2
    const-string v1, "3F007F10"

    goto :goto_0

    .line 143
    :sswitch_3
    const-string v1, "3F007F20"

    goto :goto_0

    .line 152
    :sswitch_4
    const-string v1, "3F007F20"

    goto :goto_0

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f3a -> :sswitch_1
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f15 -> :sswitch_0
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch

    .line 128
    :sswitch_data_1
    .sparse-switch
        0x6f11 -> :sswitch_4
        0x6f13 -> :sswitch_4
        0x6f14 -> :sswitch_4
        0x6f15 -> :sswitch_4
        0x6f16 -> :sswitch_4
        0x6f17 -> :sswitch_4
        0x6f18 -> :sswitch_4
        0x6f38 -> :sswitch_3
        0x6f3c -> :sswitch_2
        0x6f3e -> :sswitch_3
        0x6f46 -> :sswitch_3
        0x6fad -> :sswitch_3
        0x6fc5 -> :sswitch_3
        0x6fc7 -> :sswitch_3
        0x6fc8 -> :sswitch_3
        0x6fc9 -> :sswitch_3
        0x6fca -> :sswitch_3
        0x6fcb -> :sswitch_3
        0x6fcd -> :sswitch_3
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method
