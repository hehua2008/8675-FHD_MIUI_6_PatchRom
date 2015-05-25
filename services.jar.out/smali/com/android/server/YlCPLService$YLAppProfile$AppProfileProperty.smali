.class Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;
.super Ljava/lang/Object;
.source "YlCPLService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/YlCPLService$YLAppProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppProfileProperty"
.end annotation


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/YlCPLService$YLAppProfile;


# direct methods
.method public constructor <init>(Lcom/android/server/YlCPLService$YLAppProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 366
    iput-object p1, p0, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;->this$1:Lcom/android/server/YlCPLService$YLAppProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object v0, p0, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;->mLabel:Ljava/lang/String;

    .line 364
    iput-object v0, p0, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;->mValue:Ljava/lang/String;

    .line 367
    iput-object p2, p0, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;->mLabel:Ljava/lang/String;

    .line 368
    iput-object p3, p0, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;->mValue:Ljava/lang/String;

    .line 369
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/YlCPLService$YLAppProfile$AppProfileProperty;->mValue:Ljava/lang/String;

    return-object v0
.end method
