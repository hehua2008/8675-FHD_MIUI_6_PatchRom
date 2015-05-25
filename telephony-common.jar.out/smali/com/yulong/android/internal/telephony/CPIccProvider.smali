.class public Lcom/yulong/android/internal/telephony/CPIccProvider;
.super Landroid/content/ContentProvider;
.source "CPIccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final ADN:I = 0x1

.field private static final DBG:Z = false

.field private static final FDN:I = 0x2

.field private static final SDN:I = 0x3

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "CPIccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mSimulator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 57
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    sput-object v0, Lcom/yulong/android/internal/telephony/CPIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/CPIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 86
    sget-object v0, Lcom/yulong/android/internal/telephony/CPIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/yulong/android/internal/telephony/CPIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/yulong/android/internal/telephony/CPIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addDualIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "netId"    # I

    .prologue
    .line 583
    const/4 v8, 0x0

    .line 590
    .local v8, "success":Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 594
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 595
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateDualAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 610
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v8

    .line 600
    :catch_0
    move-exception v1

    goto :goto_0

    .line 598
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteDualIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "netId"    # I

    .prologue
    .line 681
    const/4 v8, 0x0

    .line 684
    .local v8, "success":Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 688
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 689
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateDualAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 704
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v8

    .line 694
    :catch_0
    move-exception v1

    goto :goto_0

    .line 692
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private loadDualFromEf(II)Ljava/util/ArrayList;
    .locals 7
    .param p1, "efType"    # I
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .line 525
    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 529
    .local v3, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    .line 530
    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->getDualAdnRecordsInEf(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 540
    .end local v3    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 542
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 548
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 549
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v5, v4}, Lcom/yulong/android/internal/telephony/CPIccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/util/ArrayList;)V

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 553
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1
    const-string v5, "CPIccProvider"

    const-string v6, "CP_COMM: Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 561
    :cond_2
    return-object v4

    .line 534
    :catch_0
    move-exception v5

    goto :goto_0

    .line 532
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 716
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v2, "contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 719
    .local v8, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 725
    .local v5, "emails":[Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v4, "emailString":Ljava/lang/StringBuilder;
    if-eqz v5, :cond_2

    .line 731
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    .line 736
    .local v3, "email":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 740
    .end local v3    # "email":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v2    # "contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "emailString":Ljava/lang/StringBuilder;
    .end local v5    # "emails":[Ljava/lang/String;
    .end local v8    # "number":Ljava/lang/String;
    :cond_1
    return-void

    .line 742
    .restart local v0    # "alphaTag":Ljava/lang/String;
    .restart local v2    # "contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "emailString":Ljava/lang/StringBuilder;
    .restart local v5    # "emails":[Ljava/lang/String;
    .restart local v8    # "number":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 755
    const-string v0, "CPIccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: [CPIccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 318
    .local v0, "len":I
    move-object v1, p1

    .line 320
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 321
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 324
    :cond_0
    return-object v1
.end method

.method private updateDualIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "netId"    # I

    .prologue
    .line 635
    const/4 v8, 0x0

    .line 638
    .local v8, "success":Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 642
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 643
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateDualAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 658
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v8

    .line 648
    :catch_0
    move-exception v1

    goto :goto_0

    .line 646
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public deleteDual(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 17
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "netId"    # I

    .prologue
    .line 358
    sget-object v1, Lcom/yulong/android/internal/telephony/CPIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 360
    .local v9, "match":I
    packed-switch v9, :pswitch_data_0

    .line 372
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot insert into URL: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :pswitch_0
    const/16 v2, 0x6f3a

    .line 377
    .local v2, "efType":I
    :goto_0
    const/4 v3, 0x0

    .line 378
    .local v3, "tag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 379
    .local v4, "number":Ljava/lang/String;
    const/4 v5, 0x0

    .line 380
    .local v5, "emails":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 382
    .local v6, "pin2":Ljava/lang/String;
    const-string v1, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 383
    .local v14, "tokens":[Ljava/lang/String;
    array-length v10, v14

    .line 385
    .local v10, "n":I
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_5

    .line 386
    aget-object v12, v14, v10

    .line 392
    .local v12, "param":Ljava/lang/String;
    const-string v1, "="

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 394
    .local v11, "pair":[Ljava/lang/String;
    array-length v1, v11

    const/4 v7, 0x2

    if-eq v1, v7, :cond_1

    .line 395
    const-string v1, "CPIccProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CP_COMM: resolve: bad whereClause parameter: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 367
    .end local v2    # "efType":I
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "emails":[Ljava/lang/String;
    .end local v6    # "pin2":Ljava/lang/String;
    .end local v10    # "n":I
    .end local v11    # "pair":[Ljava/lang/String;
    .end local v12    # "param":Ljava/lang/String;
    .end local v14    # "tokens":[Ljava/lang/String;
    :pswitch_1
    const/16 v2, 0x6f3b

    .line 369
    .restart local v2    # "efType":I
    goto :goto_0

    .line 401
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "emails":[Ljava/lang/String;
    .restart local v6    # "pin2":Ljava/lang/String;
    .restart local v10    # "n":I
    .restart local v11    # "pair":[Ljava/lang/String;
    .restart local v12    # "param":Ljava/lang/String;
    .restart local v14    # "tokens":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 402
    .local v8, "key":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 404
    .local v15, "val":Ljava/lang/String;
    const-string v1, "tag"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/yulong/android/internal/telephony/CPIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 406
    :cond_2
    const-string v1, "number"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/yulong/android/internal/telephony/CPIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 408
    :cond_3
    const-string v1, "emails"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 410
    const/4 v5, 0x0

    goto :goto_1

    .line 411
    :cond_4
    const-string v1, "pin2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/yulong/android/internal/telephony/CPIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 416
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "pair":[Ljava/lang/String;
    .end local v12    # "param":Ljava/lang/String;
    .end local v15    # "val":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 417
    const/4 v1, 0x0

    .line 431
    :goto_2
    return v1

    .line 420
    :cond_6
    const/4 v1, 0x2

    if-ne v2, v1, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 421
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v1, p0

    move/from16 v7, p4

    .line 424
    invoke-direct/range {v1 .. v7}, Lcom/yulong/android/internal/telephony/CPIccProvider;->deleteDualIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    .line 427
    .local v13, "success":Z
    if-nez v13, :cond_8

    .line 428
    const/4 v1, 0x0

    goto :goto_2

    .line 431
    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 210
    sget-object v0, Lcom/yulong/android/internal/telephony/CPIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertDual(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 11
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "netId"    # I

    .prologue
    const/4 v4, 0x0

    .line 246
    const/4 v5, 0x0

    .line 252
    .local v5, "pin2":Ljava/lang/String;
    sget-object v0, Lcom/yulong/android/internal/telephony/CPIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 254
    .local v8, "match":I
    packed-switch v8, :pswitch_data_0

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert into URL: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :pswitch_0
    const/16 v1, 0x6f3a

    .line 271
    .local v1, "efType":I
    :goto_0
    const-string v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "tag":Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "number":Ljava/lang/String;
    move-object v0, p0

    move v6, p3

    .line 275
    invoke-direct/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/CPIccProvider;->addDualIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    .line 278
    .local v10, "success":Z
    if-nez v10, :cond_0

    .line 306
    :goto_1
    return-object v4

    .line 261
    .end local v1    # "efType":I
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    .end local v10    # "success":Z
    :pswitch_1
    const/16 v1, 0x6f3b

    .line 262
    .restart local v1    # "efType":I
    const-string v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    goto :goto_0

    .line 282
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v10    # "success":Z
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "content://icc/"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .local v7, "buf":Ljava/lang/StringBuilder;
    packed-switch v8, :pswitch_data_1

    .line 297
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .local v9, "resultUri":Landroid/net/Uri;
    move-object v4, v9

    .line 306
    goto :goto_1

    .line 286
    .end local v9    # "resultUri":Landroid/net/Uri;
    :pswitch_2
    const-string v0, "adn/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 291
    :pswitch_3
    const-string v0, "fdn/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 284
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "device":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/CPIccProvider;->mSimulator:Z

    .line 114
    :goto_0
    return v2

    .line 111
    :cond_0
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/CPIccProvider;->mSimulator:Z

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryDual(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;
    .param p6, "netId"    # I

    .prologue
    .line 150
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/CPIccProvider;->mSimulator:Z

    if-nez v2, :cond_0

    .line 151
    sget-object v2, Lcom/yulong/android/internal/telephony/CPIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 168
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :pswitch_0
    const/16 v2, 0x6f3a

    invoke-direct {p0, v2, p6}, Lcom/yulong/android/internal/telephony/CPIccProvider;->loadDualFromEf(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 158
    .end local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_1
    const/16 v2, 0x6f3b

    invoke-direct {p0, v2, p6}, Lcom/yulong/android/internal/telephony/CPIccProvider;->loadDualFromEf(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    .restart local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 163
    .end local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_2
    const/16 v2, 0x6f49

    invoke-direct {p0, v2, p6}, Lcom/yulong/android/internal/telephony/CPIccProvider;->loadDualFromEf(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 165
    .restart local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 172
    .end local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .restart local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Ron Stevens/H"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v2, "512-555-5038"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .restart local v0    # "contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Ron Stevens/M"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v2, "512-555-8305"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .restart local v0    # "contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Melissa Owens"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v2, "512-555-8305"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .restart local v0    # "contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Directory Assistence"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v2, "411"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public updateDual(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 13
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "netId"    # I

    .prologue
    .line 464
    const/4 v6, 0x0

    .line 470
    .local v6, "pin2":Ljava/lang/String;
    sget-object v0, Lcom/yulong/android/internal/telephony/CPIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 472
    .local v9, "match":I
    packed-switch v9, :pswitch_data_0

    .line 485
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot insert into URL: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :pswitch_0
    const/16 v1, 0x6f3a

    .line 489
    .local v1, "efType":I
    :goto_0
    const-string v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "tag":Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, "number":Ljava/lang/String;
    const/4 v8, 0x0

    .line 492
    .local v8, "emails":[Ljava/lang/String;
    const-string v0, "newTag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, "newTag":Ljava/lang/String;
    const-string v0, "newNumber"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, "newNumber":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "newEmails":[Ljava/lang/String;
    move-object v0, p0

    move/from16 v7, p5

    .line 497
    invoke-direct/range {v0 .. v7}, Lcom/yulong/android/internal/telephony/CPIccProvider;->updateDualIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    .line 501
    .local v11, "success":Z
    if-nez v11, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 505
    :goto_1
    return v0

    .line 479
    .end local v1    # "efType":I
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "newTag":Ljava/lang/String;
    .end local v5    # "newNumber":Ljava/lang/String;
    .end local v8    # "emails":[Ljava/lang/String;
    .end local v10    # "newEmails":[Ljava/lang/String;
    .end local v11    # "success":Z
    :pswitch_1
    const/16 v1, 0x6f3b

    .line 480
    .restart local v1    # "efType":I
    const-string v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 482
    goto :goto_0

    .line 505
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v4    # "newTag":Ljava/lang/String;
    .restart local v5    # "newNumber":Ljava/lang/String;
    .restart local v8    # "emails":[Ljava/lang/String;
    .restart local v10    # "newEmails":[Ljava/lang/String;
    .restart local v11    # "success":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
