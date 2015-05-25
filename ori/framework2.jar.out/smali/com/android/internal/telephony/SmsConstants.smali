.class public Lcom/android/internal/telephony/SmsConstants;
.super Ljava/lang/Object;
.source "SmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsConstants$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final FORMAT_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MAX_7BIT_USER_DATA_BYTES:I = 0xa0

.field public static final MAX_7BIT_USER_DATA_BYTES_ROAMING:I = 0x90

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_ROAMING:I = 0x7e

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER_ROAMING:I = 0x78

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_ROAMING:I = 0x90

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER_ROAMING:I = 0x89

.field public static max7bitUserDataBytes:I

.field public static maxUserDataBytes:I

.field public static maxUserDataBytesWithHeader:I

.field public static maxUserDataSeptets:I

.field public static maxUserDataSeptetsWithHeader:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa0

    .line 96
    const/16 v0, 0x8c

    sput v0, Lcom/android/internal/telephony/SmsConstants;->maxUserDataBytes:I

    .line 97
    const/16 v0, 0x86

    sput v0, Lcom/android/internal/telephony/SmsConstants;->maxUserDataBytesWithHeader:I

    .line 98
    sput v1, Lcom/android/internal/telephony/SmsConstants;->maxUserDataSeptets:I

    .line 99
    const/16 v0, 0x99

    sput v0, Lcom/android/internal/telephony/SmsConstants;->maxUserDataSeptetsWithHeader:I

    .line 100
    sput v1, Lcom/android/internal/telephony/SmsConstants;->max7bitUserDataBytes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static SetRoamingSmsLengthLimit(I)V
    .locals 9
    .param p0, "phoneId"    # I

    .prologue
    const/16 v8, 0xa0

    const/16 v7, 0x90

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "operatorId":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 110
    const-string v1, "cdma.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    :goto_0
    const-string v1, "SmsConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", operatorId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPhoneType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v1, "466"

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "450"

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-static {p0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPhoneType(I)I

    move-result v1

    if-ne v5, v1, :cond_3

    .line 120
    const/16 v1, 0x7e

    sput v1, Lcom/android/internal/telephony/SmsConstants;->maxUserDataBytes:I

    .line 121
    const/16 v1, 0x78

    sput v1, Lcom/android/internal/telephony/SmsConstants;->maxUserDataBytesWithHeader:I

    .line 122
    sput v7, Lcom/android/internal/telephony/SmsConstants;->maxUserDataSeptets:I

    .line 123
    const/16 v1, 0x89

    sput v1, Lcom/android/internal/telephony/SmsConstants;->maxUserDataSeptetsWithHeader:I

    .line 124
    sput v7, Lcom/android/internal/telephony/SmsConstants;->max7bitUserDataBytes:I

    .line 125
    const-string v1, "SmsConstants"

    const-string v2, "CDMA roaming!Set sms length limit in accordance with roaming"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_1
    return-void

    .line 111
    :cond_2
    if-ne p0, v5, :cond_0

    .line 112
    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_3
    const/16 v1, 0x8c

    sput v1, Lcom/android/internal/telephony/SmsConstants;->maxUserDataBytes:I

    .line 128
    const/16 v1, 0x86

    sput v1, Lcom/android/internal/telephony/SmsConstants;->maxUserDataBytesWithHeader:I

    .line 129
    sput v8, Lcom/android/internal/telephony/SmsConstants;->maxUserDataSeptets:I

    .line 130
    const/16 v1, 0x99

    sput v1, Lcom/android/internal/telephony/SmsConstants;->maxUserDataSeptetsWithHeader:I

    .line 131
    sput v8, Lcom/android/internal/telephony/SmsConstants;->max7bitUserDataBytes:I

    .line 132
    const-string v1, "SmsConstants"

    const-string v2, "not CDMA roaming!Set sms length limit to normal"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static initLengthLimit()V
    .locals 2

    .prologue
    const/16 v1, 0xa0

    .line 137
    const/16 v0, 0x8c

    sput v0, Lcom/android/internal/telephony/SmsConstants;->maxUserDataBytes:I

    .line 138
    const/16 v0, 0x86

    sput v0, Lcom/android/internal/telephony/SmsConstants;->maxUserDataBytesWithHeader:I

    .line 139
    sput v1, Lcom/android/internal/telephony/SmsConstants;->maxUserDataSeptets:I

    .line 140
    const/16 v0, 0x99

    sput v0, Lcom/android/internal/telephony/SmsConstants;->maxUserDataSeptetsWithHeader:I

    .line 141
    sput v1, Lcom/android/internal/telephony/SmsConstants;->max7bitUserDataBytes:I

    .line 142
    return-void
.end method
