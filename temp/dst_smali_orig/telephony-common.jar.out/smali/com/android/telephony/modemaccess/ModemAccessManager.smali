.class public Lcom/android/telephony/modemaccess/ModemAccessManager;
.super Ljava/lang/Object;
.source "ModemAccessManager.java"


# static fields
.field static CdmaModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem; = null

.field static GsmModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem; = null

.field static IccModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem; = null

.field public static final MODEM_DATA_ITEM_DEVICE_PREFERRED_PLMN:I = 0x2

.field public static final MODEM_DATA_ITEM_DEVICE_PRL:I = 0x1

.field public static final MODEM_DATA_ITEM_ICC_PRL:I = 0x3

.field public static final MODEM_DATA_ITEM_MRU_TABLE:I = 0x4

.field static MruModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

.field private static sInstance:Lcom/android/telephony/modemaccess/ModemAccessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/telephony/modemaccess/ModemAccessManager;

    invoke-direct {v0}, Lcom/android/telephony/modemaccess/ModemAccessManager;-><init>()V

    sput-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->sInstance:Lcom/android/telephony/modemaccess/ModemAccessManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/telephony/modemaccess/ModemAccessManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->sInstance:Lcom/android/telephony/modemaccess/ModemAccessManager;

    return-object v0
.end method

.method public static getModemDataItem(I)Lcom/android/telephony/modemaccess/ModemDataItem;
    .locals 2
    .param p0, "itemType"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->CdmaModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/telephony/modemaccess/YLModemDataItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/telephony/modemaccess/YLModemDataItem;-><init>(I)V

    sput-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->CdmaModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    :cond_0
    sget-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->CdmaModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->GsmModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/telephony/modemaccess/YLModemDataItem;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/telephony/modemaccess/YLModemDataItem;-><init>(I)V

    sput-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->GsmModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    :cond_1
    sget-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->GsmModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->IccModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/telephony/modemaccess/YLModemDataItem;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/telephony/modemaccess/YLModemDataItem;-><init>(I)V

    sput-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->IccModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    :cond_2
    sget-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->IccModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->MruModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/telephony/modemaccess/YLModemDataItem;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/telephony/modemaccess/YLModemDataItem;-><init>(I)V

    sput-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->MruModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    :cond_3
    sget-object v0, Lcom/android/telephony/modemaccess/ModemAccessManager;->MruModemDataItem:Lcom/android/telephony/modemaccess/YLModemDataItem;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
