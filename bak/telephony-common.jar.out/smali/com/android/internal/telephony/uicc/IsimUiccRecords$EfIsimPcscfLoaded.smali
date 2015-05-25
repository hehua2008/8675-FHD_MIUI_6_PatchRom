.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimPcscfLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-string v0, "EF_ISIM_PCSCF"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 222
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 223
    .local v4, "pcscfList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EF_PCSCF record count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 224
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v9, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:Ljava/util/Map;
    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1002(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/util/Map;)Ljava/util/Map;

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 227
    .local v5, "record":[B
    new-instance v6, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v8, v5

    invoke-direct {v6, v5, v11, v8}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 229
    .local v6, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v8

    const/16 v9, 0x80

    if-ne v8, v9, :cond_2

    .line 230
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    .line 231
    .local v1, "data":[B
    aget-byte v7, v1, v11

    .line 232
    .local v7, "type":I
    const/4 v0, 0x0

    .line 233
    .local v0, "addr":Ljava/lang/String;
    aget-byte v8, v1, v11

    if-nez v8, :cond_1

    .line 234
    new-instance v0, Ljava/lang/String;

    .end local v0    # "addr":Ljava/lang/String;
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v0, v1, v12, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 238
    .restart local v0    # "addr":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:Ljava/util/Map;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1000(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EF_PCSCF["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]: type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", address = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_1
    new-instance v0, Ljava/lang/String;

    .end local v0    # "addr":Ljava/lang/String;
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v0, v1, v12, v8}, Ljava/lang/String;-><init>([BII)V

    .restart local v0    # "addr":Ljava/lang/String;
    goto :goto_1

    .line 242
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "data":[B
    .end local v7    # "type":I
    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 244
    .end local v5    # "record":[B
    .end local v6    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_3
    return-void
.end method
