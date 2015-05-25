.class public Lcom/yulong/android/modemservice/CPSetMtu;
.super Ljava/lang/Object;
.source "CPSetMtu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;
    }
.end annotation


# static fields
.field static LOG_TAG:Ljava/lang/String;

.field static mtu_operator1:Ljava/lang/String;

.field static mtu_operator2:Ljava/lang/String;

.field static mtu_value1:[Ljava/lang/String;

.field static mtu_value2:[Ljava/lang/String;

.field static mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 60
    const-string v0, "CPSetMtu"

    sput-object v0, Lcom/yulong/android/modemservice/CPSetMtu;->LOG_TAG:Ljava/lang/String;

    .line 66
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    .line 67
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "phoneid"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static GetMtu(II)Ljava/lang/String;
    .locals 9
    .param p0, "PhoneId"    # I
    .param p1, "NetworkType"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "mtu":Ljava/lang/String;
    if-ne p0, v4, :cond_8

    .line 78
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator1:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator1:Ljava/lang/String;

    const-string v3, "cdma.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_loadXmlFileToMem(I)V

    .line 81
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkType(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    .line 82
    .local v1, "num":I
    if-ne p1, v5, :cond_4

    .line 83
    if-le v1, v4, :cond_3

    .line 84
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    aget-object v0, v2, v7

    .line 101
    :goto_0
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtu_operator1= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mtu= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_1
    if-nez v0, :cond_2

    .line 130
    const-string v0, "1460"

    .line 133
    :cond_2
    return-object v0

    .line 86
    :cond_3
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    aget-object v0, v2, v5

    goto :goto_0

    .line 88
    :cond_4
    if-nez p1, :cond_6

    .line 89
    if-le v1, v4, :cond_5

    .line 90
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    aget-object v0, v2, v4

    goto :goto_0

    .line 92
    :cond_5
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    aget-object v0, v2, v6

    goto :goto_0

    .line 95
    :cond_6
    if-le v1, v4, :cond_7

    .line 96
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v0, v2, v3

    goto :goto_0

    .line 98
    :cond_7
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    aget-object v0, v2, v8

    goto :goto_0

    .line 103
    .end local v1    # "num":I
    :cond_8
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator2:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator2:Ljava/lang/String;

    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 104
    :cond_9
    invoke-static {p0}, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_loadXmlFileToMem(I)V

    .line 106
    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkType(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    .line 107
    .restart local v1    # "num":I
    if-ne p1, v5, :cond_c

    .line 108
    if-le v1, v4, :cond_b

    .line 109
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    aget-object v0, v2, v7

    .line 126
    :goto_2
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtu_operator2= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mtu= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 111
    :cond_b
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    aget-object v0, v2, v5

    goto :goto_2

    .line 113
    :cond_c
    if-nez p1, :cond_e

    .line 114
    if-le v1, v4, :cond_d

    .line 115
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    aget-object v0, v2, v4

    goto :goto_2

    .line 117
    :cond_d
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    aget-object v0, v2, v6

    goto :goto_2

    .line 120
    :cond_e
    if-le v1, v4, :cond_f

    .line 121
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v0, v2, v3

    goto :goto_2

    .line 123
    :cond_f
    sget-object v2, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    aget-object v0, v2, v8

    goto :goto_2
.end method

.method public static mtu_loadXmlFileToMem(I)V
    .locals 2
    .param p0, "PhoneId"    # I

    .prologue
    .line 136
    new-instance v0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v1, "etc/mtu-conf.xml"

    invoke-direct {v0, v1}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    .line 137
    sget-object v0, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    invoke-virtual {v0, p0}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->Find_OperatorByProperties(I)V

    .line 138
    return-void
.end method
