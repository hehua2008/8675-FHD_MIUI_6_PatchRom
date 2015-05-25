.class public final enum Lcom/yulong/android/telephony/CPXmlParser$XmlTag;
.super Ljava/lang/Enum;
.source "CPXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/CPXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XmlTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulong/android/telephony/CPXmlParser$XmlTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

.field public static final enum COMM_FEATURE:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

.field public static final enum LOSTCARD:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

.field public static final enum LTEINFO:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

.field public static final enum PST:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    const-string v1, "PST"

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->PST:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    .line 85
    new-instance v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    const-string v1, "COMM_FEATURE"

    invoke-direct {v0, v1, v3}, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->COMM_FEATURE:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    .line 86
    new-instance v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    const-string v1, "LOSTCARD"

    invoke-direct {v0, v1, v4}, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->LOSTCARD:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    .line 87
    new-instance v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    const-string v1, "LTEINFO"

    invoke-direct {v0, v1, v5}, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->LTEINFO:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    sget-object v1, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->PST:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->COMM_FEATURE:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->LOSTCARD:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->LTEINFO:Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->$VALUES:[Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/telephony/CPXmlParser$XmlTag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/telephony/CPXmlParser$XmlTag;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->$VALUES:[Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    invoke-virtual {v0}, [Lcom/yulong/android/telephony/CPXmlParser$XmlTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/telephony/CPXmlParser$XmlTag;

    return-object v0
.end method
