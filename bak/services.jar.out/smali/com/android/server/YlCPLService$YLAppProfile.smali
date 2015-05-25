.class Lcom/android/server/YlCPLService$YLAppProfile;
.super Ljava/lang/Object;
.source "YlCPLService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/YlCPLService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YLAppProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;
    }
.end annotation


# instance fields
.field private mAttributes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/YlCPLService;


# direct methods
.method public constructor <init>(Lcom/android/server/YlCPLService;)V
    .locals 2

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/YlCPLService$YLAppProfile;->this$0:Lcom/android/server/YlCPLService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/YlCPLService$YLAppProfile;->mAttributes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 296
    iget-object v0, p0, Lcom/android/server/YlCPLService$YLAppProfile;->mAttributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 297
    return-void
.end method


# virtual methods
.method public addAppProfileProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "lable"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    new-instance v0, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;-><init>(Lcom/android/server/YlCPLService$YLAppProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v0, "ylAppProfileProperty":Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;
    iget-object v1, p0, Lcom/android/server/YlCPLService$YLAppProfile;->mAttributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/android/server/YlCPLService$YLAppProfile;->mAttributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAppProfileValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "attr"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "ret":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v2, v1

    .line 319
    .end local v1    # "ret":Ljava/lang/String;
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 314
    .end local v2    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/YlCPLService$YLAppProfile;->mAttributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;

    .line 315
    .local v0, "prop":Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;
    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0}, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 319
    .end local v1    # "ret":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/server/YlCPLService$YLAppProfile;->mAttributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/YlCPLService$YLAppProfile;->mPkgName:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/YlCPLService$YLAppProfile;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/YlCPLService$YLAppProfile;->mAttributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/android/server/YlCPLService$YLAppProfile;->mAttributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;

    .line 350
    .local v1, "localAppProfileProperty":Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;
    invoke-virtual {v1}, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v1}, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "localAppProfileProperty":Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
