.class public final enum Lcom/android/telephony/modemaccess/ModemItemException$Error;
.super Ljava/lang/Enum;
.source "ModemItemException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/telephony/modemaccess/ModemItemException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/telephony/modemaccess/ModemItemException$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/telephony/modemaccess/ModemItemException$Error;

.field public static final enum GENERIC_FAILURE:Lcom/android/telephony/modemaccess/ModemItemException$Error;

.field public static final enum INVALID_RESPONSE:Lcom/android/telephony/modemaccess/ModemItemException$Error;

.field public static final enum NO_UIM_CARD:Lcom/android/telephony/modemaccess/ModemItemException$Error;

.field public static final enum NO_VALID_DATA:Lcom/android/telephony/modemaccess/ModemItemException$Error;

.field public static final enum OPERATION_NOT_SUPPORTED:Lcom/android/telephony/modemaccess/ModemItemException$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;

    const-string v1, "INVALID_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/android/telephony/modemaccess/ModemItemException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;->INVALID_RESPONSE:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    .line 22
    new-instance v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;

    const-string v1, "GENERIC_FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/android/telephony/modemaccess/ModemItemException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;->GENERIC_FAILURE:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    .line 23
    new-instance v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;

    const-string v1, "NO_UIM_CARD"

    invoke-direct {v0, v1, v4}, Lcom/android/telephony/modemaccess/ModemItemException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;->NO_UIM_CARD:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    .line 24
    new-instance v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;

    const-string v1, "NO_VALID_DATA"

    invoke-direct {v0, v1, v5}, Lcom/android/telephony/modemaccess/ModemItemException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;->NO_VALID_DATA:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    .line 25
    new-instance v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;

    const-string v1, "OPERATION_NOT_SUPPORTED"

    invoke-direct {v0, v1, v6}, Lcom/android/telephony/modemaccess/ModemItemException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;->OPERATION_NOT_SUPPORTED:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/telephony/modemaccess/ModemItemException$Error;

    sget-object v1, Lcom/android/telephony/modemaccess/ModemItemException$Error;->INVALID_RESPONSE:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/telephony/modemaccess/ModemItemException$Error;->GENERIC_FAILURE:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/telephony/modemaccess/ModemItemException$Error;->NO_UIM_CARD:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/telephony/modemaccess/ModemItemException$Error;->NO_VALID_DATA:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/telephony/modemaccess/ModemItemException$Error;->OPERATION_NOT_SUPPORTED:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;->$VALUES:[Lcom/android/telephony/modemaccess/ModemItemException$Error;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/telephony/modemaccess/ModemItemException$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;

    return-object v0
.end method

.method public static values()[Lcom/android/telephony/modemaccess/ModemItemException$Error;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/telephony/modemaccess/ModemItemException$Error;->$VALUES:[Lcom/android/telephony/modemaccess/ModemItemException$Error;

    invoke-virtual {v0}, [Lcom/android/telephony/modemaccess/ModemItemException$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/telephony/modemaccess/ModemItemException$Error;

    return-object v0
.end method
