.class public final enum Lcom/yulong/android/telephony/CardInfo$CardType;
.super Ljava/lang/Enum;
.source "CardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/CardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulong/android/telephony/CardInfo$CardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulong/android/telephony/CardInfo$CardType;

.field public static final enum eCardType_AllReadable_SIM:Lcom/yulong/android/telephony/CardInfo$CardType;

.field public static final enum eCardType_AllReadable_UIM:Lcom/yulong/android/telephony/CardInfo$CardType;

.field public static final enum eCardType_DualMode:Lcom/yulong/android/telephony/CardInfo$CardType;

.field public static final enum eCardType_MaxNum:Lcom/yulong/android/telephony/CardInfo$CardType;

.field public static final enum eCardType_NO:Lcom/yulong/android/telephony/CardInfo$CardType;

.field public static final enum eCardType_RUIM:Lcom/yulong/android/telephony/CardInfo$CardType;

.field public static final enum eCardType_SIM:Lcom/yulong/android/telephony/CardInfo$CardType;

.field public static final enum eCardType_USIM:Lcom/yulong/android/telephony/CardInfo$CardType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$CardType;

    const-string v1, "eCardType_NO"

    invoke-direct {v0, v1, v3}, Lcom/yulong/android/telephony/CardInfo$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_NO:Lcom/yulong/android/telephony/CardInfo$CardType;

    .line 43
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$CardType;

    const-string v1, "eCardType_SIM"

    invoke-direct {v0, v1, v4}, Lcom/yulong/android/telephony/CardInfo$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_SIM:Lcom/yulong/android/telephony/CardInfo$CardType;

    .line 44
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$CardType;

    const-string v1, "eCardType_RUIM"

    invoke-direct {v0, v1, v5}, Lcom/yulong/android/telephony/CardInfo$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_RUIM:Lcom/yulong/android/telephony/CardInfo$CardType;

    .line 45
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$CardType;

    const-string v1, "eCardType_USIM"

    invoke-direct {v0, v1, v6}, Lcom/yulong/android/telephony/CardInfo$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_USIM:Lcom/yulong/android/telephony/CardInfo$CardType;

    .line 46
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$CardType;

    const-string v1, "eCardType_DualMode"

    invoke-direct {v0, v1, v7}, Lcom/yulong/android/telephony/CardInfo$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_DualMode:Lcom/yulong/android/telephony/CardInfo$CardType;

    .line 47
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$CardType;

    const-string v1, "eCardType_AllReadable_UIM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_AllReadable_UIM:Lcom/yulong/android/telephony/CardInfo$CardType;

    .line 48
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$CardType;

    const-string v1, "eCardType_AllReadable_SIM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_AllReadable_SIM:Lcom/yulong/android/telephony/CardInfo$CardType;

    .line 49
    new-instance v0, Lcom/yulong/android/telephony/CardInfo$CardType;

    const-string v1, "eCardType_MaxNum"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CardInfo$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_MaxNum:Lcom/yulong/android/telephony/CardInfo$CardType;

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/yulong/android/telephony/CardInfo$CardType;

    sget-object v1, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_NO:Lcom/yulong/android/telephony/CardInfo$CardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_SIM:Lcom/yulong/android/telephony/CardInfo$CardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_RUIM:Lcom/yulong/android/telephony/CardInfo$CardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_USIM:Lcom/yulong/android/telephony/CardInfo$CardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_DualMode:Lcom/yulong/android/telephony/CardInfo$CardType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_AllReadable_UIM:Lcom/yulong/android/telephony/CardInfo$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_AllReadable_SIM:Lcom/yulong/android/telephony/CardInfo$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_MaxNum:Lcom/yulong/android/telephony/CardInfo$CardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yulong/android/telephony/CardInfo$CardType;->$VALUES:[Lcom/yulong/android/telephony/CardInfo$CardType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/telephony/CardInfo$CardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/yulong/android/telephony/CardInfo$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/telephony/CardInfo$CardType;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/telephony/CardInfo$CardType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/yulong/android/telephony/CardInfo$CardType;->$VALUES:[Lcom/yulong/android/telephony/CardInfo$CardType;

    invoke-virtual {v0}, [Lcom/yulong/android/telephony/CardInfo$CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/telephony/CardInfo$CardType;

    return-object v0
.end method
