.class final enum Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;
.super Ljava/lang/Enum;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SubscriptionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

.field public static final enum ACTIVATED:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

.field public static final enum DEACTIVATED:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    const-string v1, "DEACTIVATED"

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;->DEACTIVATED:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    new-instance v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    const-string v1, "ACTIVATED"

    invoke-direct {v0, v1, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;->ACTIVATED:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    sget-object v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;->DEACTIVATED:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;->ACTIVATED:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;->$VALUES:[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    const-class v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;->$VALUES:[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    invoke-virtual {v0}, [Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionState;

    return-object v0
.end method
