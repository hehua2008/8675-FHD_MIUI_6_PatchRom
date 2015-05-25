.class public final Landroid/provider/Telephony$SimInfoColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimInfoColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final DEFAULT_SOURCE:I = 0x0

.field public static final DISLPAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPALY_NUMBER_NONE:I = 0x0

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final ERROR_GENERAL:I = -0x1

.field public static final ERROR_NAME_EXIST:I = -0x2

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final ICON_ID:Ljava/lang/String; = "icon_id"

.field public static final ICON_ID_1:I = 0x0

.field public static final ICON_ID_2:I = 0x1

.field public static final ICON_ID_3:I = 0x2

.field public static final ICON_ID_4:I = 0x3

.field public static final ICON_ID_DEFAULT:I = 0x0

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_SOURCE:I = 0x1

.field public static final SLOT:Ljava/lang/String; = "slot"

.field public static final SLOT_NONE:I = -0x1

.field public static final USER_INPUT:I = 0x2

.field public static final WAP_PUSH:Ljava/lang/String; = "wap_push"

.field public static final WAP_PUSH_DEFAULT:I = -0x1

.field public static final WAP_PUSH_DISABLE:I = 0x0

.field public static final WAP_PUSH_ENABLE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2824
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
