.class final enum Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;
.super Ljava/lang/Enum;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "exState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

.field public static final enum IDLE:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

.field public static final enum INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

.field public static final enum PROCESSING:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->IDLE:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    new-instance v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->PROCESSING:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    new-instance v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    const-string v1, "INTERRUPT"

    invoke-direct {v0, v1, v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    .line 137
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    sget-object v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->IDLE:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->PROCESSING:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->INTERRUPT:Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->$VALUES:[Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

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
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    const-class v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->$VALUES:[Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    invoke-virtual {v0}, [Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/internal/telephony/SubscriptionManager$exState;

    return-object v0
.end method
