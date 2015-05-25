.class public abstract Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "IccPhoneBookInterfaceManager.java"


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final EVENT_LOAD_DONE:I = 0x2

.field protected static final EVENT_UPDATE_ANR_DONE:I = 0x4

.field protected static final EVENT_UPDATE_DONE:I = 0x3

.field protected static final EVENT_UPDATE_EMAIL_DONE:I = 0x6

.field protected static final EVENT_UPDATE_GROUPNAME_DONE:I = 0x8

.field protected static final EVENT_UPDATE_GROUP_INDEX_DONE:I = 0x7

.field protected static final EVENT_UPDATE_IAP_DONE:I = 0x5


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field protected mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field protected mBaseHandler:Landroid/os/Handler;

.field private mFileId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mRecordSize:[I

.field protected mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuccess:Z

.field protected successAnr:Z

.field protected successEmail:Z

.field protected successGrI:Z

.field protected successGrpName:Z

.field protected successIap:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 52
    const-string v2, "IccPhoneBookInterfaceManager"

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    .line 79
    new-instance v2, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 184
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    .line 185
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    .line 187
    .local v0, "commType":I
    packed-switch v0, :pswitch_data_0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_NO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    .line 204
    :goto_0
    return-void

    .line 189
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 192
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_T"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 195
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_W"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 198
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAnrFreeSpaceForIap(III)I
    .locals 7
    .param p1, "pbrIndex"    # I
    .param p2, "efid"    # I
    .param p3, "anrIndex"    # I

    .prologue
    .line 1150
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v2

    .line 1151
    .local v2, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    const/4 v0, 0x0

    .line 1153
    .local v0, "index":I
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecordsSize(I)I

    move-result v3

    .line 1154
    .local v3, "numAnrRecs":I
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrValidNums(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 1156
    .local v4, "validAnrRecNums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v4, :cond_1

    .line 1157
    const/4 v1, -0x1

    .line 1167
    :cond_0
    :goto_0
    return v1

    .line 1160
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    .line 1161
    add-int/lit8 v1, v0, 0x1

    .line 1162
    .local v1, "index1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAnrFreeSpaceForIap: index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1167
    .end local v1    # "index1":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getEfFileIdsForUIccType(II)Ljava/util/Map;
    .locals 4
    .param p1, "efid"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 586
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v1

    .line 587
    .local v1, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    const/16 v2, 0x6f3a

    if-ne p1, v2, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->is3GAdnSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v1

    .line 592
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrFile()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 593
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getFileIds()Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-object v0

    .line 594
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getFileIds()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileIds:Ljava/util/HashMap;

    .line 596
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 597
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method private getEmailFreeSpaceForIap(III)I
    .locals 7
    .param p1, "pbrIndex"    # I
    .param p2, "efid"    # I
    .param p3, "emailIndex"    # I

    .prologue
    .line 1171
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v2

    .line 1172
    .local v2, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    const/4 v0, 0x0

    .line 1174
    .local v0, "index":I
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecordsSize(I)I

    move-result v3

    .line 1175
    .local v3, "numEmailRecs":I
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailValidNums(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 1176
    .local v4, "validEmailRecNums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v4, :cond_0

    .line 1177
    const/4 v1, -0x1

    .line 1186
    :goto_0
    return v1

    .line 1179
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    .line 1180
    add-int/lit8 v1, v0, 0x1

    .line 1181
    .local v1, "index1":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEmailFreeSpaceForIap index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1186
    .end local v1    # "index1":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 5

    .prologue
    .line 1214
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 1225
    :goto_0
    return-object v1

    .line 1215
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    .line 1216
    .local v2, "phoneType":I
    const/4 v0, 0x0

    .line 1217
    .local v0, "family":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1218
    const/4 v0, 0x1

    .line 1222
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "family is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1223
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getDualIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1224
    .local v1, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1219
    .end local v1    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1220
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private getUpdateType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "newString"    # Ljava/lang/String;
    .param p2, "oldString"    # Ljava/lang/String;

    .prologue
    .line 1131
    const/4 v0, 0x4

    .line 1133
    .local v0, "ret":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1134
    const/4 v0, 0x0

    .line 1144
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateType ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1145
    return v0

    .line 1135
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1136
    const/4 v0, 0x2

    goto :goto_0

    .line 1137
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1139
    const/4 v0, 0x1

    goto :goto_0

    .line 1140
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private updateEfForIccType(I)I
    .locals 3
    .param p1, "efid"    # I

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_0

    .line 552
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v1

    .line 559
    :cond_0
    const/16 v2, 0x6f3a

    if-ne p1, v2, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->is3GAdnSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 561
    if-nez v1, :cond_1

    .line 562
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_1

    .line 563
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 564
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v1

    .line 576
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIsPbrPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 577
    const/16 p1, 0x4f30

    .line 581
    .end local p1    # "efid":I
    :cond_2
    return p1

    .line 568
    .restart local p1    # "efid":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 569
    .local v0, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 570
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 571
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected checkThread()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public getAdditionalNumbersSize()I
    .locals 4

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 690
    .local v0, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xl getAdditionalNumbersSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdditionalNumbersSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdditionalNumbersSize()I

    move-result v1

    return v1
.end method

.method public getAdnGrpName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 682
    .local v0, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnGrpName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAdnGrpNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 686
    .local v0, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnGrpNames()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 6
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 443
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdnRecordsInEF: efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 453
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_1

    .line 454
    const-string v4, "getAdnRecordsInEF:mPhone == null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 524
    :goto_0
    return-object v3

    .line 457
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 458
    .local v0, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_2

    .line 459
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 461
    :cond_2
    if-nez v0, :cond_3

    .line 462
    const-string v4, "getAdnRecordsInEF:ir == null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isPBMReady()Z

    move-result v4

    if-nez v4, :cond_4

    .line 467
    const-string v4, "getAdnRecordsInEF:isPBMReady() is false"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 472
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 473
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 474
    .local v2, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 475
    .local v1, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v3, :cond_5

    .line 476
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v5

    invoke-virtual {v3, p1, v5, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 477
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 481
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    goto :goto_0

    .line 479
    :cond_5
    :try_start_1
    const-string v3, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 481
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public abstract getAdnRecordsSize(I)[I
.end method

.method public getDualAdditionalNumbersSize(I)I
    .locals 1
    .param p1, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method public getDualAdnGrpName(II)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualAdnGrpNames(I)Ljava/util/List;
    .locals 1
    .param p1, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 654
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualAdnRecordsInEf(II)Ljava/util/List;
    .locals 1
    .param p1, "efid"    # I
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualAdnRecordsSize(II)[I
    .locals 1
    .param p1, "efid"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 620
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualEmailLength(I)I
    .locals 1
    .param p1, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public getDualEmailNumbers(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1205
    const/4 v0, 0x0

    return v0
.end method

.method public getDualGroupIndexSize(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public getDualGroupTagLength(I)I
    .locals 1
    .param p1, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method public getEmailLength()I
    .locals 3

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 705
    .local v0, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmailLength email Record size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailLength()I

    move-result v1

    return v1
.end method

.method public getEmailNumbers()I
    .locals 2

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 1210
    .local v0, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailNumbers()I

    move-result v1

    return v1
.end method

.method public getGroupIndexSize(I)I
    .locals 3
    .param p1, "indexInAdn"    # I

    .prologue
    .line 695
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 696
    .local v0, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v1

    .line 697
    .local v1, "pbrIndex":I
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getGroupIndexLength(I)I

    move-result v2

    return v2
.end method

.method public getGroupTagLength()I
    .locals 2

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v0

    .line 701
    .local v0, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getGroupTagLength()I

    move-result v1

    return v1
.end method

.method public is3GAdnSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1194
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return v1

    .line 1197
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 1198
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDual3GAdnSupported(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1190
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected publish()V
    .locals 1

    .prologue
    .line 219
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 220
    return-void
.end method

.method public updateAdditionalNumbers([Ljava/lang/String;ILjava/lang/String;)I
    .locals 30
    .param p1, "newAdditionalNumbers"    # [Ljava/lang/String;
    .param p2, "indexInAdn"    # I
    .param p3, "pin2"    # Ljava/lang/String;

    .prologue
    .line 742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v22

    .line 744
    .local v22, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAdditionalNumbers new AdditionalNumbers[] = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " indexInAdn = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 746
    const/16 v3, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEfFileIdsForUIccType(II)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    .line 747
    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v25

    .line 748
    .local v25, "pbrIndex":I
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrFileIds(I)Ljava/util/ArrayList;

    move-result-object v16

    .line 749
    .local v16, "anrFileId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    if-eqz v3, :cond_0

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 750
    :cond_0
    const-string v3, "ANR file id is empty, return 0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 751
    const/16 v26, 0x0

    .line 904
    :goto_0
    return v26

    .line 754
    :cond_1
    const/16 v26, 0x0

    .line 755
    .local v26, "ret":I
    const/4 v6, 0x0

    .line 756
    .local v6, "indexInAnr":I
    const/4 v4, 0x0

    .line 757
    .local v4, "anrEfid":I
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v3

    sub-int v12, p2, v3

    .line 758
    .local v12, "indexInAdnofPbrIndex":I
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v7, p2, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v24

    .line 760
    .local v24, "oldStrings":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAdditionalNumbers old AdditionalNumbers[] = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 763
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_18

    .line 764
    const/16 v23, 0x0

    .line 765
    .local v23, "oldString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 766
    .local v5, "newString":Ljava/lang/String;
    if-eqz v24, :cond_2

    move-object/from16 v0, v24

    array-length v3, v0

    move/from16 v0, v19

    if-le v3, v0, :cond_2

    .line 767
    aget-object v23, v24, v19

    .line 769
    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v3, v0

    move/from16 v0, v19

    if-le v3, v0, :cond_3

    .line 770
    aget-object v5, p1, v19

    .line 772
    :cond_3
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAdditionalNumbers: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " addnrEfid="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v5, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUpdateType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    .line 775
    .local v28, "updateType":I
    const/4 v3, 0x3

    move/from16 v0, v28

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    move/from16 v0, v28

    if-ne v0, v3, :cond_5

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAnrIapPresent(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 776
    :cond_4
    const-string v3, "updateAdditionalNumbers newString is equals to oldString"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 763
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 780
    :cond_5
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAnrIapPresent(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 781
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIaprecords(I)Ljava/util/ArrayList;

    move-result-object v15

    .line 783
    .local v15, "IapRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 784
    :cond_6
    const-string v3, "updateAdditionalNumbers addNum file is type 2 ,but IapRecords is null "

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 786
    move v6, v12

    .line 787
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecordsSize(I)I

    move-result v3

    if-le v6, v3, :cond_b

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAdditionalNumbers addNum file is type 2 ,but IapRecords is null and indexInAnr = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " > AnrRecordsSize "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 790
    const/16 v26, 0x2

    goto/16 :goto_0

    .line 793
    :cond_7
    add-int/lit8 v3, v12, -0x1

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 794
    .local v17, "data":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAdditionalNumbers data = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 795
    packed-switch v28, :pswitch_data_0

    .line 810
    :cond_8
    :goto_3
    const/4 v3, -0x1

    if-ne v6, v3, :cond_b

    .line 811
    move v6, v12

    .line 812
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecordsSize(I)I

    move-result v3

    if-le v12, v3, :cond_b

    .line 813
    const-string v3, "ANR is type1 file, but indexInAdnofPbrIndex > AnrRecordsSize"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 814
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 797
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAnrFreeSpaceForIap(III)I

    move-result v6

    .line 798
    if-nez v6, :cond_8

    .line 799
    const-string v3, "updateAdditionalNumbers no more space!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 800
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 804
    :pswitch_1
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrTagNumberInIap(I)I

    move-result v3

    aget-byte v6, v17, v3

    .line 805
    goto :goto_3

    .line 807
    :pswitch_2
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrTagNumberInIap(I)I

    move-result v3

    aget-byte v6, v17, v3

    goto :goto_3

    .line 819
    .end local v15    # "IapRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v17    # "data":[B
    :cond_9
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecordsSize(I)I

    move-result v3

    if-le v12, v3, :cond_a

    .line 820
    const-string v3, "ANR is type1 file, but indexInAdnofPbrIndex > AnrRecordsSize"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 821
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 823
    :cond_a
    move v6, v12

    .line 825
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 826
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 828
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successAnr:Z

    .line 829
    new-instance v27, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 830
    .local v27, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v3, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 831
    .local v8, "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v3, :cond_d

    .line 832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateadditionalNumberByIndex(ILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 834
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 839
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successAnr:Z

    const/4 v7, 0x1

    if-ne v3, v7, :cond_16

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAnrIapPresent(I)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    const/16 v7, 0xc1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 841
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successIap:Z

    .line 842
    new-instance v20, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 844
    .local v20, "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v3, 0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_15

    .line 845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    move-object/from16 v0, v20

    invoke-virtual {v3, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 846
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIaprecords(I)Ljava/util/ArrayList;

    move-result-object v15

    .line 849
    .restart local v15    # "IapRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_e

    .line 850
    :cond_c
    const-string v3, "updateAnr will updateIapByIndex ,Anr file is type 2 ,but IapRecords is null "

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 851
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrTagNumberInIap(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v11, v3, [B

    .line 852
    .local v11, "dataIapnew":[B
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_5
    array-length v3, v11

    move/from16 v0, v21

    if-ge v0, v3, :cond_f

    .line 853
    const/4 v3, -0x1

    aput-byte v3, v11, v21

    .line 852
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 836
    .end local v11    # "dataIapnew":[B
    .end local v15    # "IapRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v20    # "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v21    # "j":I
    :cond_d
    const-string v3, "Failure while trying to load from SIM due to uninitialised adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 896
    .end local v8    # "response":Landroid/os/Message;
    .end local v27    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 856
    .restart local v8    # "response":Landroid/os/Message;
    .restart local v15    # "IapRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v20    # "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v27    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_e
    add-int/lit8 v3, v12, -0x1

    :try_start_1
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    .line 857
    .local v18, "dataIap":[B
    move-object/from16 v0, v18

    array-length v3, v0

    new-array v11, v3, [B

    .line 858
    .restart local v11    # "dataIapnew":[B
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v18

    array-length v9, v0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v11, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    .end local v18    # "dataIap":[B
    :cond_f
    if-nez v28, :cond_13

    .line 862
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrTagNumberInIap(I)I

    move-result v3

    int-to-byte v7, v6

    aput-byte v7, v11, v3

    .line 866
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    const/16 v7, 0xc1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 867
    .local v10, "iapEfid":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-object/from16 v13, p3

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateIapByIndex(I[BILjava/lang/String;Landroid/os/Message;)V

    .line 868
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 870
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successIap:Z

    const/4 v7, 0x1

    if-ne v3, v7, :cond_14

    .line 872
    if-eqz v15, :cond_11

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 874
    add-int/lit8 v3, v12, -0x1

    invoke-virtual {v15, v3, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 876
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-virtual {v0, v6, v1, v4, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrvalidNums(IIII)V

    .line 889
    .end local v10    # "iapEfid":I
    .end local v11    # "dataIapnew":[B
    .end local v15    # "IapRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v20    # "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successAnr:Z

    const/4 v7, 0x1

    if-ne v3, v7, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successIap:Z

    const/4 v7, 0x1

    if-eq v3, v7, :cond_17

    .line 890
    :cond_12
    const/16 v26, 0x1

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAdditionalNumbers is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "while "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 892
    monitor-exit v29

    goto/16 :goto_0

    .line 863
    .restart local v11    # "dataIapnew":[B
    .restart local v15    # "IapRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v20    # "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_13
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_10

    .line 864
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrTagNumberInIap(I)I

    move-result v3

    const/4 v7, -0x1

    aput-byte v7, v11, v3

    goto/16 :goto_6

    .line 880
    .restart local v10    # "iapEfid":I
    :cond_14
    const/16 v26, 0x1

    goto :goto_7

    .line 883
    .end local v10    # "iapEfid":I
    .end local v11    # "dataIapnew":[B
    .end local v15    # "IapRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_15
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successIap:Z

    goto :goto_7

    .line 886
    .end local v20    # "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_16
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successIap:Z

    goto :goto_7

    .line 894
    :cond_17
    const/16 v26, 0x0

    .line 896
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 898
    .end local v5    # "newString":Ljava/lang/String;
    .end local v8    # "response":Landroid/os/Message;
    .end local v23    # "oldString":Ljava/lang/String;
    .end local v27    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v28    # "updateType":I
    :cond_18
    if-nez v26, :cond_19

    .line 900
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v7, p2, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdditionalNumbers([Ljava/lang/String;)V

    .line 903
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAdditionalNumbers is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateAdditionalNumbersName(ILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 738
    const/4 v0, 0x1

    return v0
.end method

.method public updateAdditionalNumbersNameIndex(III)Z
    .locals 1
    .param p1, "indexInAdn"    # I
    .param p2, "indexInAddNum"    # I
    .param p3, "indexInAddNumName"    # I

    .prologue
    .line 1086
    const/4 v0, 0x1

    return v0
.end method

.method public updateAdnGrpName(ILjava/lang/String;)Z
    .locals 9
    .param p1, "index"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xc8

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v6

    .line 710
    .local v6, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnGrpName index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " newName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 711
    const/16 v0, 0x6f3a

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEfFileIdsForUIccType(II)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    :cond_0
    const-string v0, "the card doesn\'t contain USIM_EFGSD_TAG,return"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 716
    const/4 v0, 0x1

    .line 735
    :goto_0
    return v0

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 719
    .local v1, "efid":I
    iget-object v8, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 720
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successGrpName:Z

    .line 721
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 722
    .local v7, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 723
    .local v5, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/4 v4, 0x0

    move-object v2, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnGrpName(ILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 725
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 729
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successGrpName:Z

    if-eqz v0, :cond_2

    .line 732
    invoke-virtual {v6, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateGroupName(ILjava/lang/String;)V

    .line 734
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnGrpName successGrpName"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successGrpName:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 735
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successGrpName:Z

    goto :goto_0

    .line 727
    :cond_3
    :try_start_1
    const-string v0, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 729
    .end local v5    # "response":Landroid/os/Message;
    .end local v7    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 12
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v8

    .line 311
    .local v8, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    const/4 v9, 0x0

    .line 312
    .local v9, "pbrIndex":I
    move v7, p1

    .line 313
    .local v7, "efidtmp":I
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->is3GAdnSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    move/from16 v0, p4

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEfFileIdsForUIccType(II)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 326
    move/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v9

    .line 330
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new efid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 333
    move p1, v7

    .line 335
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "updateAdnRecordsInEfByIndex adnLikeFiles is clear"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v1, 0x0

    .line 416
    :goto_0
    return v1

    .line 340
    :cond_3
    if-nez p2, :cond_4

    .line 341
    const-string p2, ""

    .line 344
    :cond_4
    if-nez p3, :cond_5

    .line 345
    const-string p3, ""

    .line 348
    :cond_5
    if-gez p4, :cond_6

    .line 349
    const/4 v1, 0x0

    goto :goto_0

    .line 352
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->is3GAdnSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 357
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v1

    sub-int p4, p4, v1

    .line 361
    :cond_7
    iget-object v11, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 363
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 364
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 365
    .local v10, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 366
    .local v6, "response":Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v3, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v1, :cond_8

    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v2, p1

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 369
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 373
    :goto_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnRecordsInEfByIndex success = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 371
    :cond_8
    :try_start_1
    const-string v1, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 373
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v6    # "response":Landroid/os/Message;
    .end local v10    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 267
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 270
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 271
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 272
    .local v5, "response":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v2, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v3, p4, p5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 276
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 280
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 278
    :cond_1
    :try_start_1
    const-string v0, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .end local v2    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateDualAdditionalNumbers([Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .param p1, "newAdditionalNumbers"    # [Ljava/lang/String;
    .param p2, "indexInAdn"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public updateDualAdditionalNumbersName(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public updateDualAdditionalNumbersNameIndex(IIII)Z
    .locals 1
    .param p1, "indexInAdn"    # I
    .param p2, "indexInAddNum"    # I
    .param p3, "indexInAddNumName"    # I
    .param p4, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public updateDualAdnGrpName(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public updateDualAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "mPhoneId"    # I

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public updateDualAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "mPhoneId"    # I

    .prologue
    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public updateDualEmail([Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .param p1, "email"    # [Ljava/lang/String;
    .param p2, "indexInAdn"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 635
    const/4 v0, 0x0

    return v0
.end method

.method public updateDualGroupIndex(I[II)Z
    .locals 1
    .param p1, "indexInAdn"    # I
    .param p2, "newGroupIndex"    # [I
    .param p3, "mPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public updateEmail([Ljava/lang/String;ILjava/lang/String;)I
    .locals 32
    .param p1, "email"    # [Ljava/lang/String;
    .param p2, "indexInAdn"    # I
    .param p3, "pin2"    # Ljava/lang/String;

    .prologue
    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v24

    .line 909
    .local v24, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    const/16 v2, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEfFileIdsForUIccType(II)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    .line 910
    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v7

    .line 911
    .local v7, "pbrIndex":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailFileIds(I)Ljava/util/ArrayList;

    move-result-object v20

    .line 912
    .local v20, "emailFileId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    const/16 v8, 0xca

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 913
    :cond_0
    const-string v2, "updateEmail mFileId == null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 914
    const/16 v27, 0x0

    .line 1082
    :goto_0
    return v27

    .line 916
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail new Emails = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", indexInAdn = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v8, p2, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v25

    .line 918
    .local v25, "oldEmail":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail old Emails = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", indexInAdn = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 920
    const/16 v27, 0x0

    .line 922
    .local v27, "ret":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v2

    sub-int v6, p2, v2

    .line 923
    .local v6, "indexInAdnofPbrIndex":I
    const/4 v5, 0x0

    .line 925
    .local v5, "indexInEmail":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_1a

    .line 926
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 927
    .local v3, "emailEfid":I
    const/16 v26, 0x0

    .line 928
    .local v26, "oldString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 929
    .local v4, "newString":Ljava/lang/String;
    if-eqz v25, :cond_2

    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v21

    if-le v2, v0, :cond_2

    .line 930
    aget-object v26, v25, v21

    .line 932
    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v21

    if-le v2, v0, :cond_3

    .line 933
    aget-object v4, p1, v21

    .line 936
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUpdateType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 937
    .local v30, "updateType":I
    const/4 v2, 0x3

    move/from16 v0, v30

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    move/from16 v0, v30

    if-ne v0, v2, :cond_5

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailIapPresent(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 938
    :cond_4
    const-string v2, "updateEmail new email is equals to old email"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 925
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 941
    :cond_5
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailIapPresent(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 942
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIaprecords(I)Ljava/util/ArrayList;

    move-result-object v16

    .line 944
    .local v16, "IapRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 945
    :cond_6
    const-string v2, "updateEmail email file is type 2 ,but updateEmail IapRecords is null "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 947
    move v5, v6

    .line 948
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecordsSize(I)I

    move-result v2

    if-le v5, v2, :cond_d

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail email file is type 2 ,but updateEmail IapRecords is null and indexInEmail = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " > EmailRecords"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 952
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 955
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v6, :cond_8

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail IapRecords.size = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "indexInAdnofPbrIndex"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 959
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 961
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail indexInAdnofPbrIndex = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 962
    const/16 v28, 0x0

    .local v28, "s":I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_9

    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail IapRecords s = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "data = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 962
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 966
    :cond_9
    add-int/lit8 v2, v6, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    .line 967
    .local v18, "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail IapRecords.get data = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 968
    packed-switch v30, :pswitch_data_0

    .line 984
    :cond_a
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "indexInEmail = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 985
    const/4 v2, -0x1

    if-ne v5, v2, :cond_d

    .line 986
    move v5, v6

    .line 987
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecordsSize(I)I

    move-result v2

    if-le v6, v2, :cond_d

    .line 988
    const-string v2, "Email is type1 file, but indexInAdnofPbrIndex > EmailRecordsSize"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 989
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 970
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v7, v3, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEmailFreeSpaceForIap(III)I

    move-result v5

    .line 971
    if-nez v5, :cond_a

    .line 972
    const-string v2, "updateEmail new no space "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 974
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 978
    :pswitch_1
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailTagNumberInIap(I)I

    move-result v2

    aget-byte v5, v18, v2

    .line 979
    goto :goto_4

    .line 981
    :pswitch_2
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailTagNumberInIap(I)I

    move-result v2

    aget-byte v5, v18, v2

    goto :goto_4

    .line 995
    .end local v16    # "IapRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v18    # "data":[B
    .end local v28    # "s":I
    :cond_b
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecordsSize(I)I

    move-result v2

    if-le v6, v2, :cond_c

    .line 996
    const-string v2, "Email is type1 file, but indexInAdnofPbrIndex > EmailRecordsSize, no update"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 997
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 999
    :cond_c
    move v5, v6

    .line 1001
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 1002
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 1003
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successEmail:Z

    .line 1004
    new-instance v29, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1006
    .local v29, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    move-object/from16 v0, v29

    invoke-virtual {v2, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1007
    .local v9, "response":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmailByIndex emailEfid = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", email = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", indexInEmail = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", pbrIndex = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_f

    .line 1010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateEmailByIndex(ILjava/lang/String;IIILjava/lang/String;Landroid/os/Message;)V

    .line 1012
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1016
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmailByIndex successEmail = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successEmail:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1017
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successEmail:Z

    const/4 v8, 0x1

    if-ne v2, v8, :cond_17

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailIapPresent(I)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    const/16 v8, 0xc1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1019
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successIap:Z

    .line 1020
    new-instance v22, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1021
    .local v22, "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_16

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v2, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1023
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIaprecords(I)Ljava/util/ArrayList;

    move-result-object v17

    .line 1026
    .local v17, "IapRecords1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_10

    .line 1027
    :cond_e
    const-string v2, "updateEmail will update Iap,email file is type 2 ,but IapRecords is null "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1028
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailTagNumberInIap(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v12, v2, [B

    .line 1029
    .local v12, "dataIapnew":[B
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_6
    array-length v2, v12

    move/from16 v0, v23

    if-ge v0, v2, :cond_11

    .line 1030
    const/4 v2, -0x1

    aput-byte v2, v12, v23

    .line 1029
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 1014
    .end local v12    # "dataIapnew":[B
    .end local v17    # "IapRecords1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v22    # "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v23    # "j":I
    :cond_f
    const-string v2, "Failure while trying to load from SIM due to uninitialised adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1076
    .end local v9    # "response":Landroid/os/Message;
    .end local v29    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1033
    .restart local v9    # "response":Landroid/os/Message;
    .restart local v17    # "IapRecords1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v22    # "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v29    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_10
    add-int/lit8 v2, v6, -0x1

    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    .line 1034
    .local v19, "dataIap":[B
    move-object/from16 v0, v19

    array-length v2, v0

    new-array v12, v2, [B

    .line 1035
    .restart local v12    # "dataIapnew":[B
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    array-length v10, v0

    move-object/from16 v0, v19

    invoke-static {v0, v2, v12, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    .end local v19    # "dataIap":[B
    :cond_11
    if-nez v30, :cond_15

    .line 1039
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailTagNumberInIap(I)I

    move-result v2

    int-to-byte v8, v5

    aput-byte v8, v12, v2

    .line 1040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail 0 IapRecords.get dataIap = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1046
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    const/16 v8, 0xc1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1047
    .local v11, "iapEfid":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v13, v6

    move-object/from16 v14, p3

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateIapByIndex(I[BILjava/lang/String;Landroid/os/Message;)V

    .line 1049
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1051
    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1052
    add-int/lit8 v2, v6, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail IapRecords.get mUsimPhoneBookManager.getIaprecords(pbrIndex) = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIaprecords(I)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1064
    .end local v11    # "iapEfid":I
    .end local v12    # "dataIapnew":[B
    .end local v17    # "IapRecords1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v22    # "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_13
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmailByIndex successIap 1111111= "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successIap:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1065
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successEmail:Z

    const/4 v8, 0x1

    if-ne v2, v8, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successIap:Z

    const/4 v8, 0x1

    if-eq v2, v8, :cond_18

    .line 1066
    :cond_14
    const/16 v27, 0x1

    .line 1067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail ret = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", i = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1068
    monitor-exit v31

    goto/16 :goto_0

    .line 1041
    .restart local v12    # "dataIapnew":[B
    .restart local v17    # "IapRecords1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v22    # "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_15
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_12

    .line 1042
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailTagNumberInIap(I)I

    move-result v2

    const/4 v8, -0x1

    aput-byte v8, v12, v2

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail 2 IapRecords.get dataIap = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1059
    .end local v12    # "dataIapnew":[B
    .end local v17    # "IapRecords1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_16
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successIap:Z

    goto/16 :goto_8

    .line 1062
    .end local v22    # "iapStatus":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successIap:Z

    goto/16 :goto_8

    .line 1070
    :cond_18
    const/16 v27, 0x0

    .line 1073
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailIapPresent(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1074
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v5, v7, v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailValidNums(IIII)V

    .line 1076
    :cond_19
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1078
    .end local v3    # "emailEfid":I
    .end local v4    # "newString":Ljava/lang/String;
    .end local v9    # "response":Landroid/os/Message;
    .end local v26    # "oldString":Ljava/lang/String;
    .end local v29    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v30    # "updateType":I
    :cond_1a
    if-nez v27, :cond_1b

    .line 1079
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v8, p2, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1081
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmail ret = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateGroupIndex(I[I)Z
    .locals 11
    .param p1, "indexInAdn"    # I
    .param p2, "newGroupIndex"    # [I

    .prologue
    const/16 v10, 0xc6

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-result-object v6

    .line 1092
    .local v6, "mUsimPhoneBookManager":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGroupIndex newGroupIndex[] = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",newGroupIndex.size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " indexInAdn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1094
    const/16 v0, 0x6f3a

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getEfFileIdsForUIccType(II)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getGroupIndexLength(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1099
    :cond_0
    const-string v0, "the card doesn\'t contain USIM_EFGRP_TAG or 3G card group is not supported,return"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v0, v9

    .line 1127
    :goto_0
    return v0

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mFileId:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1104
    .local v1, "grIEfid":I
    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v7

    .line 1105
    .local v7, "pbrIndex":I
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v0

    sub-int v3, p1, v0

    .line 1106
    .local v3, "indexInAdnofPbrIndex":I
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getGroupRecordsSize()I

    move-result v0

    if-le v3, v0, :cond_2

    .line 1107
    const-string v0, "GroupIndex is type1 file, but indexInAdnofPbrIndex > GroupRecordsSize, no update"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v0, v9

    .line 1108
    goto :goto_0

    .line 1110
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1111
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successGrI:Z

    .line 1112
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1113
    .local v8, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1114
    .local v5, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_4

    .line 1115
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/4 v4, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateGRIByIndex(I[IILjava/lang/String;Landroid/os/Message;)V

    .line 1117
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1121
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successGrI:Z

    if-ne v0, v9, :cond_3

    .line 1123
    const-string v0, "updateGroupIndex success"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGroupIndex([I)V

    .line 1126
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGroupIndex successGrI = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successGrI:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1127
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->successGrI:Z

    goto :goto_0

    .line 1119
    :cond_4
    :try_start_1
    const-string v0, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1121
    .end local v5    # "response":Landroid/os/Message;
    .end local v8    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 1
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    goto :goto_0
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "status"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 539
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by search"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
