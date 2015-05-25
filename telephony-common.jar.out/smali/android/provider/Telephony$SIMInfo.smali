.class public Landroid/provider/Telephony$SIMInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$SIMInfo$ErrorCode;
    }
.end annotation


# instance fields
.field private dataRoaming:I

.field private dispalyNumberFormat:I

.field private displayName:Ljava/lang/String;

.field private iccId:Ljava/lang/String;

.field private iconId:I

.field private nameSource:I

.field private number:Ljava/lang/String;

.field private simId:J

.field private slot:I

.field private wapPush:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2904
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->displayName:Ljava/lang/String;

    .line 2906
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->number:Ljava/lang/String;

    .line 2907
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->dispalyNumberFormat:I

    .line 2908
    iput v2, p0, Landroid/provider/Telephony$SIMInfo;->iconId:I

    .line 2909
    iput v2, p0, Landroid/provider/Telephony$SIMInfo;->dataRoaming:I

    .line 2910
    iput v1, p0, Landroid/provider/Telephony$SIMInfo;->slot:I

    .line 2911
    iput v1, p0, Landroid/provider/Telephony$SIMInfo;->wapPush:I

    .line 2994
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 3001
    new-instance v0, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {v0}, Landroid/provider/Telephony$SIMInfo;-><init>()V

    .line 3002
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->simId:J

    .line 3003
    const-string v1, "icc_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/Telephony$SIMInfo;->iccId:Ljava/lang/String;

    .line 3004
    const-string v1, "display_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/Telephony$SIMInfo;->displayName:Ljava/lang/String;

    .line 3005
    const-string v1, "name_source"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->nameSource:I

    .line 3006
    const-string v1, "number"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/Telephony$SIMInfo;->number:Ljava/lang/String;

    .line 3007
    const-string v1, "display_number_format"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->dispalyNumberFormat:I

    .line 3008
    const-string v1, "icon_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->iconId:I

    .line 3009
    const-string v1, "data_roaming"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->dataRoaming:I

    .line 3010
    const-string v1, "slot"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->slot:I

    .line 3011
    const-string v1, "wap_push"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->wapPush:I

    .line 3012
    return-object v0
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3240
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3241
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3244
    if-eqz v6, :cond_0

    .line 3245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3248
    :cond_0
    :goto_0
    return v0

    .line 3244
    :cond_1
    if-eqz v6, :cond_2

    .line 3245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3248
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3244
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getAllSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3044
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3045
    .local v7, "simList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3048
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3049
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3050
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3054
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 3055
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 3054
    :cond_1
    if-eqz v6, :cond_2

    .line 3055
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3058
    :cond_2
    return-object v7
.end method

.method public static getIdBySlot(Landroid/content/Context;I)J
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 3184
    invoke-static {p0, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 3185
    .local v0, "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 3186
    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->simId:J

    .line 3187
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInsertedSIMCount(Landroid/content/Context;)I
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3218
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3221
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3222
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3225
    if-eqz v6, :cond_0

    .line 3226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3229
    :cond_0
    :goto_0
    return v0

    .line 3225
    :cond_1
    if-eqz v6, :cond_2

    .line 3226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3229
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3225
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3021
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3022
    .local v7, "simList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3025
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3026
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3027
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3031
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 3032
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 3031
    :cond_1
    if-eqz v6, :cond_2

    .line 3032
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3035
    :cond_2
    return-object v7
.end method

.method public static getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3138
    if-nez p1, :cond_1

    .line 3152
    :cond_0
    :goto_0
    return-object v2

    .line 3139
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "icc_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3142
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3143
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3144
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3148
    if-eqz v6, :cond_0

    .line 3149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3148
    :cond_2
    if-eqz v6, :cond_0

    .line 3149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3148
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMId"    # J

    .prologue
    const/4 v2, 0x0

    .line 3068
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 3082
    :cond_0
    :goto_0
    return-object v2

    .line 3069
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3072
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3073
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3074
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3078
    if-eqz v6, :cond_0

    .line 3079
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3078
    :cond_2
    if-eqz v6, :cond_0

    .line 3079
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3078
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3079
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3092
    if-nez p1, :cond_1

    .line 3106
    :cond_0
    :goto_0
    return-object v2

    .line 3093
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3096
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3097
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3098
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3102
    if-eqz v6, :cond_0

    .line 3103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3102
    :cond_2
    if-eqz v6, :cond_0

    .line 3103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3102
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cardSlot"    # I

    .prologue
    const/4 v2, 0x0

    .line 3115
    if-gez p1, :cond_1

    .line 3129
    :cond_0
    :goto_0
    return-object v2

    .line 3116
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3119
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3120
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3121
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3125
    if-eqz v6, :cond_0

    .line 3126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3125
    :cond_2
    if-eqz v6, :cond_0

    .line 3126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3125
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 3161
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v7

    .line 3175
    :cond_0
    :goto_0
    return v0

    .line 3162
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "slot"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3165
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3166
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3167
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3171
    if-eqz v6, :cond_0

    .line 3172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3171
    :cond_2
    if-eqz v6, :cond_3

    .line 3172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 3175
    goto :goto_0

    .line 3171
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 3172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSlotByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "SIMName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 3196
    if-nez p1, :cond_1

    move v0, v7

    .line 3210
    :cond_0
    :goto_0
    return v0

    .line 3197
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "slot"

    aput-object v3, v2, v5

    const-string v3, "display_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3200
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3201
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3202
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3206
    if-eqz v6, :cond_0

    .line 3207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3206
    :cond_2
    if-eqz v6, :cond_3

    .line 3207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 3210
    goto :goto_0

    .line 3206
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 3207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static insertDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "defaultIconId"    # Ljava/lang/String;
    .param p3, "defaultName"    # Ljava/lang/String;
    .param p4, "slot"    # I

    .prologue
    .line 3425
    if-nez p1, :cond_0

    .line 3426
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ICCId should not null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3429
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3430
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "icc_id=?"

    .line 3431
    .local v4, "selection":Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "slot"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3437
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3438
    :cond_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 3439
    .local v12, "values":Landroid/content/ContentValues;
    const-string v2, "icc_id"

    invoke-virtual {v12, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3440
    const-string v2, "icon_id"

    invoke-virtual {v12, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    const-string v2, "display_name"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3442
    const-string v2, "name_source"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3443
    const-string v2, "slot"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3444
    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 3456
    .end local v12    # "values":Landroid/content/ContentValues;
    .local v11, "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 3457
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3461
    :cond_3
    return-object v11

    .line 3446
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3447
    .local v9, "simId":J
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3448
    .local v8, "oldSlot":I
    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 3449
    .restart local v11    # "uri":Landroid/net/Uri;
    move/from16 v0, p4

    if-eq v0, v8, :cond_2

    .line 3450
    new-instance v12, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3451
    .restart local v12    # "values":Landroid/content/ContentValues;
    const-string v2, "slot"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3452
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v11, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3456
    .end local v8    # "oldSlot":I
    .end local v9    # "simId":J
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 3457
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public static insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ICCId"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    .line 3390
    if-nez p1, :cond_0

    .line 3391
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ICCId should not null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3394
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3395
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "icc_id=?"

    .line 3396
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "slot"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3398
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3399
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3400
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "icc_id"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    const-string v1, "icon_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3402
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3403
    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 3416
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v10, "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 3417
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3421
    :cond_3
    return-object v10

    .line 3406
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3407
    .local v8, "simId":J
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3408
    .local v7, "oldSlot":I
    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 3409
    .restart local v10    # "uri":Landroid/net/Uri;
    if-eq p2, v7, :cond_2

    .line 3410
    new-instance v11, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3411
    .restart local v11    # "values":Landroid/content/ContentValues;
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3412
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3416
    .end local v7    # "oldSlot":I
    .end local v8    # "simId":J
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 3417
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public static resetSlot(Landroid/content/Context;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 3464
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3465
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "slot"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static resetSlot(Landroid/content/Context;I)I
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 3470
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3471
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "slot"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3472
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static updateDataRoaming(Landroid/content/Context;IJ)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "roaming"    # I
    .param p2, "SIMId"    # J

    .prologue
    const/4 v3, 0x0

    .line 3362
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 3365
    :goto_0
    return v1

    .line 3363
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3364
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "data_roaming"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3365
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static updateDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "format"    # I
    .param p2, "SIMId"    # J

    .prologue
    const/4 v3, 0x0

    .line 3347
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 3350
    :goto_0
    return v1

    .line 3348
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3349
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "display_number_format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static updateDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "SIMId"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 3259
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    .line 3275
    :cond_1
    :goto_0
    return v0

    .line 3260
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "display_name=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3263
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 3264
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    .line 3265
    const/4 v0, -0x2

    .line 3269
    if-eqz v6, :cond_1

    .line 3270
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3269
    :cond_3
    if-eqz v6, :cond_4

    .line 3270
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3273
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 3274
    .local v7, "value":Landroid/content/ContentValues;
    const-string v0, "display_name"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3269
    .end local v7    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 3270
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static updateDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "SIMId"    # J
    .param p4, "Source"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 3288
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayNameEx SIMId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "displayName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    .line 3306
    :cond_1
    :goto_0
    return v0

    .line 3290
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "display_name=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3293
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 3294
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    .line 3295
    const/4 v0, -0x2

    .line 3299
    if-eqz v6, :cond_1

    .line 3300
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3299
    :cond_3
    if-eqz v6, :cond_4

    .line 3300
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3303
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 3304
    .local v7, "value":Landroid/content/ContentValues;
    const-string v0, "display_name"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3305
    const-string v0, "name_source"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3299
    .end local v7    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 3300
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static updateIconId(Landroid/content/Context;IJ)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "SIMId"    # J

    .prologue
    const/4 v3, 0x0

    .line 3332
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 3335
    :goto_0
    return v1

    .line 3333
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3334
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "icon_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static updateNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SIMId"    # J

    .prologue
    const/4 v3, 0x0

    .line 3317
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 3320
    :goto_0
    return v1

    .line 3318
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3319
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static updateWAPPush(Landroid/content/Context;IJ)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # I
    .param p2, "SIMId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 3374
    if-gt p1, v4, :cond_0

    if-lt p1, v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 3379
    :cond_0
    :goto_0
    return v1

    .line 3377
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 3378
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "wap_push"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3379
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getDataRoaming()I
    .locals 1

    .prologue
    .line 2970
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->dataRoaming:I

    return v0
.end method

.method public getDispalyNumberFormat()I
    .locals 1

    .prologue
    .line 2954
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->dispalyNumberFormat:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2930
    iget-object v0, p0, Landroid/provider/Telephony$SIMInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2922
    iget-object v0, p0, Landroid/provider/Telephony$SIMInfo;->iccId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 2962
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->iconId:I

    return v0
.end method

.method public getNameSource()I
    .locals 1

    .prologue
    .line 2938
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->nameSource:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2946
    iget-object v0, p0, Landroid/provider/Telephony$SIMInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()J
    .locals 2

    .prologue
    .line 2914
    iget-wide v0, p0, Landroid/provider/Telephony$SIMInfo;->simId:J

    return-wide v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 2978
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->slot:I

    return v0
.end method

.method public getWapPush()I
    .locals 1

    .prologue
    .line 2986
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->wapPush:I

    return v0
.end method

.method public setDataRoaming(I)V
    .locals 0
    .param p1, "dataRoaming"    # I

    .prologue
    .line 2974
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->dataRoaming:I

    .line 2975
    return-void
.end method

.method public setDispalyNumberFormat(I)V
    .locals 0
    .param p1, "dispalyNumberFormat"    # I

    .prologue
    .line 2958
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->dispalyNumberFormat:I

    .line 2959
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 2934
    iput-object p1, p0, Landroid/provider/Telephony$SIMInfo;->displayName:Ljava/lang/String;

    .line 2935
    return-void
.end method

.method public setIccId(Ljava/lang/String;)V
    .locals 0
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 2926
    iput-object p1, p0, Landroid/provider/Telephony$SIMInfo;->iccId:Ljava/lang/String;

    .line 2927
    return-void
.end method

.method public setIconId(I)V
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 2966
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->iconId:I

    .line 2967
    return-void
.end method

.method public setNameSource(I)V
    .locals 0
    .param p1, "nameSource"    # I

    .prologue
    .line 2942
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->nameSource:I

    .line 2943
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2950
    iput-object p1, p0, Landroid/provider/Telephony$SIMInfo;->number:Ljava/lang/String;

    .line 2951
    return-void
.end method

.method public setSimId(J)V
    .locals 0
    .param p1, "simId"    # J

    .prologue
    .line 2918
    iput-wide p1, p0, Landroid/provider/Telephony$SIMInfo;->simId:J

    .line 2919
    return-void
.end method

.method public setSlot(I)V
    .locals 0
    .param p1, "slot"    # I

    .prologue
    .line 2982
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->slot:I

    .line 2983
    return-void
.end method

.method public setWapPush(I)V
    .locals 0
    .param p1, "wapPush"    # I

    .prologue
    .line 2990
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->wapPush:I

    .line 2991
    return-void
.end method
