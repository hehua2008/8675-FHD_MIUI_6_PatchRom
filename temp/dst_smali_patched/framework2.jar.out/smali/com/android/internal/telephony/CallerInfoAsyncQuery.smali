.class public Lcom/android/internal/telephony/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field public static final ADSCRIPTION_CARDNAME:Ljava/lang/String; = "card_name"

.field public static final ADSCRIPTION_CARDTYPE:Ljava/lang/String; = "card_type"

.field public static final ADSCRIPTION_CITYNAME:Ljava/lang/String; = "city_name"

.field public static final ADSCRIPTION_COUNTRYNAME:Ljava/lang/String; = "country_name"

.field public static final ADSCRIPTION_ERRORTYPE:Ljava/lang/String; = "error_type"

.field public static final ADSCRIPTION_PROVINCENAME:Ljava/lang/String; = "province_name"

.field public static final AUTHORITY:Ljava/lang/String; = "com.yulong.android.providers.adscription"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z = true

.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final EVENT_NEW_QUERY_EX_CONTACTID:I = 0x7

.field private static final EVENT_NEW_QUERY_EX_QUICKDIAL:I = 0x6

.field private static final EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "CallerInfoAsyncQuery"

.field public static final MIME_TYPE_SINGLE:Ljava/lang/String; = "vnd.yulong.cursor.item/chapters"

.field public static final PATH_SINGLE:Ljava/lang/String; = "adscription"

.field public static final QUERY_ADSCRIPTION_COMPLETE:I = 0x1


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

.field mQueryAdscriptionComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.yulong.android.providers.adscription/adscription"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mQueryAdscriptionComplete:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "mHandler = new CallerInfoAsyncQueryHandler(context)"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$202(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$602(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method

.method public static getContactIDByConn(Ljava/lang/Object;)J
    .locals 6
    .param p0, "conn"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v2, -0x1

    .local v2, "result":J
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "contactID"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "mField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .end local v1    # "mField":Ljava/lang/reflect/Field;
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CallerInfoAsyncQuery"

    const-string v5, "getContactIDByConn:"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getIsQuickDialByConn(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "conn"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isQuickDial"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "mField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "mField":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CallerInfoAsyncQuery"

    const-string v4, "getIsQuickDialByConn:"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getNameByConn(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "conn"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "mField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "mField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CallerInfoAsyncQuery"

    const-string v5, "getNameByConn:"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getQueryLinkTypeByConn(Ljava/lang/Object;)I
    .locals 6
    .param p0, "conn"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .local v2, "result":I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "queryLinkType"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CallerInfoAsyncQuery"

    const-string v4, "getQueryLinkTypeByConn:"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "CallerInfoAsyncQuery"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$202(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$602(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 9
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    new-instance v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .local v8, "c":Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    invoke-direct {v8, p1, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting query 111111 for URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .local v2, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p4, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.telephony.cdma.CdmaConnection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.telephony.gsm.GsmConnection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getQueryLinkTypeByConn(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->setNetType(I)V

    :cond_1
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->setQueryAdscriptionSign(Z)V

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 18
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    new-instance v10, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v10}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .local v10, "c":Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    new-instance v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .local v4, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    const/4 v15, 0x0

    .local v15, "isQuickDial":Z
    const/16 v16, 0x0

    .local v16, "netType":I
    const/16 v17, 0x0

    .local v17, "queryWithContactID":Z
    const-wide/16 v13, -0x1

    .local v13, "contactID":J
    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.telephony.cdma.CdmaConnection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.telephony.gsm.GsmConnection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getQueryLinkTypeByConn(Ljava/lang/Object;)I

    move-result v16

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getIsQuickDialByConn(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getNameByConn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->name:Ljava/lang/String;

    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getContactIDByConn(Ljava/lang/Object;)J

    move-result-wide v11

    .local v11, "cid":J
    const-wide/16 v2, -0x1

    cmp-long v2, v11, v2

    if-eqz v2, :cond_2

    const/16 v17, 0x1

    move-wide v13, v11

    .end local v11    # "cid":J
    :cond_2
    const/4 v5, 0x0

    .local v5, "contactRef":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting query 2222222 for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",netType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isQuickDial="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",queryWithContactID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",contactID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",cw.name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    if-eqz v15, :cond_4

    const/4 v2, 0x6

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v10, v0, v5, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;)V

    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :cond_3
    :goto_1
    iget-object v2, v10, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->setNetType(I)V

    iget-object v2, v10, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->setQueryAdscriptionSign(Z)V

    iget-object v2, v10, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_4
    if-eqz v17, :cond_5

    const/4 v2, 0x7

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contacts/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 18
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;
    .param p5, "realNumber"    # Ljava/lang/String;

    .prologue
    new-instance v10, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v10}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .local v10, "c":Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    new-instance v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .local v4, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    const/4 v15, 0x0

    .local v15, "isQuickDial":Z
    const/16 v16, 0x0

    .local v16, "netType":I
    const/16 v17, 0x0

    .local v17, "queryWithContactID":Z
    const-wide/16 v13, -0x1

    .local v13, "contactID":J
    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.telephony.cdma.CdmaConnection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.telephony.gsm.GsmConnection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getQueryLinkTypeByConn(Ljava/lang/Object;)I

    move-result v16

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getIsQuickDialByConn(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getNameByConn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->name:Ljava/lang/String;

    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getContactIDByConn(Ljava/lang/Object;)J

    move-result-wide v11

    .local v11, "cid":J
    const-wide/16 v2, -0x1

    cmp-long v2, v11, v2

    if-eqz v2, :cond_2

    const/16 v17, 0x1

    move-wide v13, v11

    .end local v11    # "cid":J
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting query 333333 for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",netType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isQuickDial="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",queryWithContactID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",contactID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",cw.name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->realNumber:Ljava/lang/String;

    const/4 v5, 0x0

    .local v5, "contactRef":Landroid/net/Uri;
    if-eqz v15, :cond_4

    const/4 v2, 0x6

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v10, v0, v5, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;)V

    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :cond_3
    :goto_1
    iget-object v2, v10, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->setNetType(I)V

    iget-object v2, v10, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->setQueryAdscriptionSign(Z)V

    iget-object v2, v10, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_4
    if-eqz v17, :cond_5

    const/4 v2, 0x7

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contacts/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1
.end method


# virtual methods
.method public addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const-string v0, "adding listener to query"

    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    if-nez v0, :cond_0

    const-string v0, "adding listener to query but mHandler null, return"

    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding listener to query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$600(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .local v2, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
