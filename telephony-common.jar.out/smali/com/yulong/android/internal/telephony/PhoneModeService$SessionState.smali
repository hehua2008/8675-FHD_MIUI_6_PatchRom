.class final enum Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
.super Ljava/lang/Enum;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

.field public static final enum CHANGED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

.field public static final enum CHANGED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

.field public static final enum CHANGING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

.field public static final enum DEACTED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

.field public static final enum DEACTED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

.field public static final enum DEACTING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

.field public static final enum IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 417
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 418
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    const-string v1, "DEACTING"

    invoke-direct {v0, v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 419
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    const-string v1, "DEACTED1"

    invoke-direct {v0, v1, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 420
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    const-string v1, "DEACTED2"

    invoke-direct {v0, v1, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 421
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    const-string v1, "CHANGING"

    invoke-direct {v0, v1, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 422
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    const-string v1, "CHANGED1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 423
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    const-string v1, "CHANGED2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 416
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->$VALUES:[Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

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
    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 416
    const-class v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->$VALUES:[Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-virtual {v0}, [Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    return-object v0
.end method
