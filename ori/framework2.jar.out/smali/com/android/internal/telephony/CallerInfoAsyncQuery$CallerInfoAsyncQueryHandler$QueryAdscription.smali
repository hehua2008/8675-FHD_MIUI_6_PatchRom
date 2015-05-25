.class Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;
.super Ljava/lang/Thread;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryAdscription"
.end annotation


# instance fields
.field private mCw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

.field private mToken:I

.field final synthetic this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;I)V
    .locals 0
    .param p2, "cw"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    .param p3, "token"    # I

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 339
    iput-object p2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mCw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 340
    iput p3, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mToken:I

    .line 341
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mCw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    iget v0, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mCw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    iget v0, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mCw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    iget v0, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->getQueryAdscriptionSign()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***  Begin to query Adscription ***"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mCw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$000(Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mCw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 352
    .local v1, "contactRefAdscription":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->setQueryAdscriptionSign(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$200(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$200(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 362
    .local v10, "cursorAdscription":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$300(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$300(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/CallerInfo;->getAdscription(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v1    # "contactRefAdscription":Landroid/net/Uri;
    .end local v10    # "cursorAdscription":Landroid/database/Cursor;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***  End to query Adscription ***"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mCw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$000(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$400(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifying listener in Thread: listeners.size()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$400(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mToken:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$300(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$000(Ljava/lang/String;)V

    .line 378
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$400(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$400(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifying listener in Thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$400(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mToken:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$000(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->listeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$400(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mToken:I

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mCw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$300(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    invoke-interface {v0, v2, v3, v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 378
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 365
    .end local v12    # "i":I
    .restart local v1    # "contactRefAdscription":Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 366
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 384
    .end local v1    # "contactRefAdscription":Landroid/net/Uri;
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listeners.get("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is null!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 389
    .end local v12    # "i":I
    :cond_3
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    :goto_3
    const-string v0, "notifying app , sleep 1 sec , EVENT_END_OF_QUEUE"

    # invokes: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$000(Ljava/lang/String;)V

    .line 396
    new-instance v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v4, v13}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .line 397
    .local v4, "endMarker":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    const/4 v0, 0x3

    iput v0, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 398
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget v3, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$QueryAdscription;->mToken:I

    move-object v5, v13

    move-object v6, v13

    move-object v7, v13

    move-object v8, v13

    move-object v9, v13

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void

    .line 390
    .end local v4    # "endMarker":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    :catch_1
    move-exception v11

    .line 392
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method
