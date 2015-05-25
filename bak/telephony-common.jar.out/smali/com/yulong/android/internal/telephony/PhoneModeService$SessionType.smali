.class public final enum Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;
.super Ljava/lang/Enum;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_CARD_SLOT_1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_CARD_SLOT_2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_CARD_SLOT_3:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_NON_PROV_SLOT_1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_NON_PROV_SLOT_2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_NON_PROV_SLOT_3:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_PRI_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_PRI_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_SEC_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_SEC_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_TER_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

.field public static final enum SESSION_TYPE_TER_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 429
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_PRI_GW_PROV"

    invoke-direct {v0, v1, v4, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_PRI_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 430
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_PRI_1X_PROV"

    invoke-direct {v0, v1, v5, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_PRI_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 431
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_SEC_GW_PROV"

    invoke-direct {v0, v1, v6, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_SEC_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 432
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_SEC_1X_PROV"

    invoke-direct {v0, v1, v7, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_SEC_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 433
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_NON_PROV_SLOT_1"

    invoke-direct {v0, v1, v8, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_NON_PROV_SLOT_1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 434
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_NON_PROV_SLOT_2"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_NON_PROV_SLOT_2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 435
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_CARD_SLOT_1"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_CARD_SLOT_1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 436
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_CARD_SLOT_2"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_CARD_SLOT_2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 437
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_TER_GW_PROV"

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_TER_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 438
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_TER_1X_PROV"

    const/16 v2, 0x9

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_TER_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 439
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_NON_PROV_SLOT_3"

    const/16 v2, 0xa

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_NON_PROV_SLOT_3:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 440
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    const-string v1, "SESSION_TYPE_CARD_SLOT_3"

    const/16 v2, 0xb

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_CARD_SLOT_3:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .line 428
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_PRI_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_PRI_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_SEC_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_SEC_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_NON_PROV_SLOT_1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_NON_PROV_SLOT_2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_CARD_SLOT_1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_CARD_SLOT_2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_TER_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_TER_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_NON_PROV_SLOT_3:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_CARD_SLOT_3:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->$VALUES:[Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 445
    iput p3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I

    .line 446
    return-void
.end method

.method static synthetic access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    .prologue
    .line 428
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 428
    const-class v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->$VALUES:[Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    invoke-virtual {v0}, [Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    return-object v0
.end method
