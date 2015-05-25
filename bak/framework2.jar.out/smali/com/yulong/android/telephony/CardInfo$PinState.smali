.class public final enum Lcom/yulong/android/telephony/CardInfo$PinState;
.super Ljava/lang/Enum;
.source "CardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/CardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulong/android/telephony/CardInfo$PinState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_BLOCKED:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_ERRMAXNUM:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_ERROR:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_INVALID:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_PHNETPIN:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_PHUIMPIN:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_PIN1:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_PIN2:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_PUK1:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_PUK2:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_READY:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_UNKONWNERROR:Lcom/yulong/android/telephony/CardInfo$PinState;

.field public static final enum SIM_WRONG:Lcom/yulong/android/telephony/CardInfo$PinState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_ERROR:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 54
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_READY"

    invoke-direct {v0, v1, v4}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_READY:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 55
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_PIN1"

    invoke-direct {v0, v1, v5}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PIN1:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 56
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_PUK1"

    invoke-direct {v0, v1, v6}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PUK1:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 57
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_PIN2"

    invoke-direct {v0, v1, v7}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PIN2:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 58
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_PUK2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PUK2:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 59
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_PHUIMPIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PHUIMPIN:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 60
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_PHNETPIN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PHNETPIN:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 61
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_INVALID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_INVALID:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 62
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_WRONG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_WRONG:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 63
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_BLOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_BLOCKED:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 64
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_UNKONWNERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_UNKONWNERROR:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 65
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    const-string v1, "SIM_ERRMAXNUM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_ERRMAXNUM:Lcom/yulong/android/telephony/CardInfo$PinState;

    .line 52
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/yulong/android/telephony/CardInfo$PinState;

    sget-object v1, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_ERROR:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_READY:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PIN1:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PUK1:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PIN2:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PUK2:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PHUIMPIN:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_PHNETPIN:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_INVALID:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_WRONG:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_BLOCKED:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_UNKONWNERROR:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$PinState;->SIM_ERRMAXNUM:Lcom/yulong/android/telephony/CardInfo$PinState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->$VALUES:[Lcom/yulong/android/telephony/CardInfo$PinState;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/telephony/CardInfo$PinState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/telephony/CardInfo$PinState;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/telephony/CardInfo$PinState;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/yulong/android/telephony/CardInfo$PinState;->$VALUES:[Lcom/yulong/android/telephony/CardInfo$PinState;

    invoke-virtual {v0}, [Lcom/yulong/android/telephony/CardInfo$PinState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/telephony/CardInfo$PinState;

    return-object v0
.end method
