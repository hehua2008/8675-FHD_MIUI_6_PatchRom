.class public final enum Landroid/annotation/CoolLifeHook$CoolLifeHookType;
.super Ljava/lang/Enum;
.source "CoolLifeHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/CoolLifeHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoolLifeHookType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/CoolLifeHook$CoolLifeHookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/CoolLifeHook$CoolLifeHookType;

.field public static final enum CHANGE_ACCESS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

.field public static final enum CHANGE_BASE_CLASS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

.field public static final enum CHANGE_CODE:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

.field public static final enum CHANGE_CODE_AND_ACCESS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

.field public static final enum CHANGE_PARAMETER:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

.field public static final enum CHANGE_PARAMETER_AND_ACCESS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

.field public static final enum NEW_CLASS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

.field public static final enum NEW_FIELD:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

.field public static final enum NEW_METHOD:Landroid/annotation/CoolLifeHook$CoolLifeHookType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    const-string v1, "CHANGE_ACCESS"

    invoke-direct {v0, v1, v3}, Landroid/annotation/CoolLifeHook$CoolLifeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_ACCESS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    .line 11
    new-instance v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    const-string v1, "CHANGE_CODE"

    invoke-direct {v0, v1, v4}, Landroid/annotation/CoolLifeHook$CoolLifeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_CODE:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    .line 12
    new-instance v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    const-string v1, "CHANGE_CODE_AND_ACCESS"

    invoke-direct {v0, v1, v5}, Landroid/annotation/CoolLifeHook$CoolLifeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    .line 13
    new-instance v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    const-string v1, "CHANGE_PARAMETER"

    invoke-direct {v0, v1, v6}, Landroid/annotation/CoolLifeHook$CoolLifeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_PARAMETER:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    .line 14
    new-instance v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    const-string v1, "CHANGE_PARAMETER_AND_ACCESS"

    invoke-direct {v0, v1, v7}, Landroid/annotation/CoolLifeHook$CoolLifeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_PARAMETER_AND_ACCESS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    .line 15
    new-instance v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    const-string v1, "CHANGE_BASE_CLASS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/annotation/CoolLifeHook$CoolLifeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_BASE_CLASS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    .line 16
    new-instance v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    const-string v1, "NEW_CLASS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/annotation/CoolLifeHook$CoolLifeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->NEW_CLASS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    new-instance v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    const-string v1, "NEW_FIELD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/annotation/CoolLifeHook$CoolLifeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->NEW_FIELD:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    .line 17
    new-instance v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    const-string v1, "NEW_METHOD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/annotation/CoolLifeHook$CoolLifeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->NEW_METHOD:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    sget-object v1, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_ACCESS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_CODE:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_PARAMETER:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_PARAMETER_AND_ACCESS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->CHANGE_BASE_CLASS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->NEW_CLASS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->NEW_FIELD:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->NEW_METHOD:Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->$VALUES:[Landroid/annotation/CoolLifeHook$CoolLifeHookType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/CoolLifeHook$CoolLifeHookType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    return-object v0
.end method

.method public static values()[Landroid/annotation/CoolLifeHook$CoolLifeHookType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Landroid/annotation/CoolLifeHook$CoolLifeHookType;->$VALUES:[Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    invoke-virtual {v0}, [Landroid/annotation/CoolLifeHook$CoolLifeHookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/CoolLifeHook$CoolLifeHookType;

    return-object v0
.end method
