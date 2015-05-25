.class final Lcom/android/internal/app/ResolverActivity$2;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/ResolverActivity$PackageUseState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$PackageUseState;Lcom/android/internal/app/ResolverActivity$PackageUseState;)I
    .locals 3
    .param p1, "p1"    # Lcom/android/internal/app/ResolverActivity$PackageUseState;
    .param p2, "p2"    # Lcom/android/internal/app/ResolverActivity$PackageUseState;

    .prologue
    .line 1157
    iget v0, p1, Lcom/android/internal/app/ResolverActivity$PackageUseState;->mUsage:I

    .line 1158
    .local v0, "v1":I
    iget v1, p2, Lcom/android/internal/app/ResolverActivity$PackageUseState;->mUsage:I

    .line 1159
    .local v1, "v2":I
    if-le v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1155
    check-cast p1, Lcom/android/internal/app/ResolverActivity$PackageUseState;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/ResolverActivity$PackageUseState;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$2;->compare(Lcom/android/internal/app/ResolverActivity$PackageUseState;Lcom/android/internal/app/ResolverActivity$PackageUseState;)I

    move-result v0

    return v0
.end method
