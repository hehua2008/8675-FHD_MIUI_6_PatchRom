.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PbrFile"
.end annotation


# instance fields
.field private mCurrentPbrNum:I

.field mFileIds:Ljava/util/HashMap;
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

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    .line 1168
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1166
    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCurrentPbrNum:I

    .line 1169
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    .line 1171
    const/4 v1, 0x0

    .line 1172
    .local v1, "recNum":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1173
    .local v3, "record":[B
    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_1

    .line 1178
    .end local v3    # "record":[B
    :cond_0
    return-void

    .line 1174
    .restart local v3    # "record":[B
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v4, v3

    invoke-direct {v2, v3, v5, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1175
    .local v2, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFileIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    return-object v0
.end method

.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V
    .locals 10
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p3, "parentTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1209
    .local p2, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3G phonebook parseEf parentTag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1210
    const/4 v6, 0x0

    .line 1212
    .local v6, "tagNumberWithinParentTag":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    .line 1213
    .local v5, "tag":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseEf tag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", IndexWithinParentTag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1215
    packed-switch v5, :pswitch_data_0

    .line 1272
    :goto_0
    add-int/lit8 v6, v6, 0x1

    .line 1273
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1274
    return-void

    .line 1228
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 1229
    .local v2, "data":[B
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    or-int v3, v7, v8

    .line 1231
    .local v3, "efid":I
    const/16 v7, 0xc4

    if-ne v5, v7, :cond_4

    .line 1233
    const/16 v7, 0xa9

    if-ne p3, v7, :cond_2

    .line 1234
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    :goto_1
    const/16 v7, 0xc4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .local v0, "anrFileIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileIds:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCurrentPbrNum:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    .end local v0    # "anrFileIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1237
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1246
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileIds:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCurrentPbrNum:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1247
    .local v1, "anrTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileIds:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCurrentPbrNum:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1250
    .end local v1    # "anrTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    const/16 v7, 0xca

    if-ne v5, v7, :cond_1

    .line 1251
    const/16 v7, 0xa9

    if-ne p3, v7, :cond_5

    .line 1252
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    :goto_3
    const/16 v7, 0xca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1260
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    .local v4, "emailFileIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileIds:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$600(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCurrentPbrNum:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1255
    .end local v4    # "emailFileIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1264
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileIds:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$600(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCurrentPbrNum:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1265
    .restart local v4    # "emailFileIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    # getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileIds:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$600(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCurrentPbrNum:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1215
    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 6
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "recNum"    # I

    .prologue
    .line 1188
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1190
    .local v3, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCurrentPbrNum:I

    .line 1192
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 1193
    .local v1, "tag":I
    packed-switch v1, :pswitch_data_0

    .line 1202
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1203
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    return-void

    .line 1197
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1198
    .local v0, "data":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1199
    .local v2, "tlvEf":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V

    goto :goto_0

    .line 1193
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
