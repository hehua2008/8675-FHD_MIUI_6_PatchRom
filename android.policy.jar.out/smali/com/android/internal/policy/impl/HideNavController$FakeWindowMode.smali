.class final enum Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;
.super Ljava/lang/Enum;
.source "HideNavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HideNavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FakeWindowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

.field public static final enum EDGE:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

.field public static final enum FULL:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->FULL:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    .line 81
    new-instance v0, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    const-string v1, "EDGE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->EDGE:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    sget-object v1, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->FULL:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->EDGE:Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->$VALUES:[Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->$VALUES:[Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/HideNavController$FakeWindowMode;

    return-object v0
.end method
