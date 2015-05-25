.class final enum Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
.super Ljava/lang/Enum;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SubscriptionId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

.field public static final enum SUB0:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

.field public static final enum SUB1:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    const-string v1, "SUB0"

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->SUB0:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    new-instance v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    const-string v1, "SUB1"

    invoke-direct {v0, v1, v3}, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->SUB1:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    sget-object v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->SUB0:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->SUB1:Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->$VALUES:[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    const-class v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->$VALUES:[Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    invoke-virtual {v0}, [Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/internal/telephony/SubscriptionManager$SubscriptionId;

    return-object v0
.end method
