.class public final enum Lcom/yulong/android/telephony/PPPOEInfo$Status;
.super Ljava/lang/Enum;
.source "PPPOEInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/PPPOEInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulong/android/telephony/PPPOEInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulong/android/telephony/PPPOEInfo$Status;

.field public static final enum CONNECTING:Lcom/yulong/android/telephony/PPPOEInfo$Status;

.field public static final enum OFFLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;

.field public static final enum ONLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/PPPOEInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;->OFFLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    new-instance v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/yulong/android/telephony/PPPOEInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;->CONNECTING:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    new-instance v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v4}, Lcom/yulong/android/telephony/PPPOEInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;->ONLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yulong/android/telephony/PPPOEInfo$Status;

    sget-object v1, Lcom/yulong/android/telephony/PPPOEInfo$Status;->OFFLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yulong/android/telephony/PPPOEInfo$Status;->CONNECTING:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yulong/android/telephony/PPPOEInfo$Status;->ONLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;->$VALUES:[Lcom/yulong/android/telephony/PPPOEInfo$Status;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/telephony/PPPOEInfo$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/telephony/PPPOEInfo$Status;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;->$VALUES:[Lcom/yulong/android/telephony/PPPOEInfo$Status;

    invoke-virtual {v0}, [Lcom/yulong/android/telephony/PPPOEInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/telephony/PPPOEInfo$Status;

    return-object v0
.end method
