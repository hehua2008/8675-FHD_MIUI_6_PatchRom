.class public final enum Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;
.super Ljava/lang/Enum;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriptionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

.field public static final enum SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

.field public static final enum SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

.field public static final enum SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

.field public static final enum SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

.field public static final enum SUB_INVALID:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v1, "SUB_DEACTIVATE"

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 36
    new-instance v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v1, "SUB_ACTIVATE"

    invoke-direct {v0, v1, v3}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 37
    new-instance v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v1, "SUB_ACTIVATED"

    invoke-direct {v0, v1, v4}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 38
    new-instance v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v1, "SUB_DEACTIVATED"

    invoke-direct {v0, v1, v5}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 39
    new-instance v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v1, "SUB_INVALID"

    invoke-direct {v0, v1, v6}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->$VALUES:[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->$VALUES:[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v0}, [Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    return-object v0
.end method
