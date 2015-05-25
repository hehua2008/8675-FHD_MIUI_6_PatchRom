.class public Lcom/yulong/android/cloudsecurity/server/CloudSecurity;
.super Ljava/lang/Object;
.source "CloudSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/cloudsecurity/server/CloudSecurity$CdmaCellLocationBean;
    }
.end annotation


# static fields
.field private static APP_FLAG_BLUETOOTH:I = 0x0

.field private static APP_FLAG_CAMERA:I = 0x0

.field private static APP_FLAG_COSTMONEY:I = 0x0

.field private static APP_FLAG_DATA:I = 0x0

.field private static APP_FLAG_GPS:I = 0x0

.field private static APP_FLAG_MOBILEDATA:I = 0x0

.field private static APP_FLAG_NFC:I = 0x0

.field private static APP_FLAG_RECORD:I = 0x0

.field private static APP_FLAG_WLAN:I = 0x0

.field public static final CALENDAR_AUTH:Ljava/lang/String; = "com.android.calendar"

.field public static final CONTACTS_AUTH_CallLog:Ljava/lang/String; = "call_log"

.field public static final CONTACTS_AUTH_Contacts:Ljava/lang/String; = "contacts"

.field public static final CONTACTS_AUTH_ContactsContract:Ljava/lang/String; = "com.android.contacts"

.field public static final CONTACTS_AUTH_ICC:Ljava/lang/String; = "icc"

.field public static final CONTACTS_AUTH_VOICEMAIL:Ljava/lang/String; = "com.android.voicemail"

.field public static final DEFAULT_FLAG:I = -0x1

.field public static final DISABLEDSTR:Ljava/lang/String; = "0"

.field public static final ENABLEDSTR:Ljava/lang/String; = "1"

.field public static final FLAG_ACTIVITY_ALERT:I = -0x1

.field public static final FLAG_AllOWED:I = 0x1

.field public static final FLAG_BLUETOOTH_PERSISTEN_AllOWED:I = 0x6c

.field public static final FLAG_CAMERA_PERSISTEN_AllOWED:I = 0x6d

.field public static final FLAG_COSTMONEY_PERSISTEN_AllOWED:I = 0x66

.field public static final FLAG_DATA_PERSISTEN_AllOWED:I = 0x65

.field public static final FLAG_DENIED:I = 0x0

.field public static final FLAG_GPS_PERSISTEN_AllOWED:I = 0x67

.field public static final FLAG_MOBILEDATA_PERSISTEN_AllOWED:I = 0x6b

.field public static final FLAG_NFC_PERSISTEN_AllOWED:I = 0x69

.field public static final FLAG_RECORD_PERSISTEN_AllOWED:I = 0x68

.field public static final FLAG_SYS_APP:I = 0x64

.field public static final FLAG_WLAN_PERSISTEN_AllOWED:I = 0x6a

.field public static final MONITOR_TYPE_ALL:I = 0x0

.field public static final MONITOR_TYPE_BLUETOOTHPRO:I = 0xf

.field public static final MONITOR_TYPE_BLUETOOTHPRO_SUBTYPE_BLUETOOTH:I = 0x51

.field public static final MONITOR_TYPE_CALL_PHONE:I = 0x5

.field public static final MONITOR_TYPE_CAMERAPRO:I = 0x10

.field public static final MONITOR_TYPE_CAMERAPRO_SUBTYPE_CAMERA:I = 0x5b

.field public static final MONITOR_TYPE_COSTMONEY_SUBTYPE_DIAL:I = 0x15

.field public static final MONITOR_TYPE_COSTMONEY_SUBTYPE_SENDMMS:I = 0x17

.field public static final MONITOR_TYPE_COSTMONEY_SUBTYPE_SENDSMS:I = 0x16

.field public static final MONITOR_TYPE_DATA_SUBTYPE_CALLLOG:I = 0xd

.field public static final MONITOR_TYPE_DATA_SUBTYPE_CANLENDAR:I = 0xe

.field public static final MONITOR_TYPE_DATA_SUBTYPE_CONTACTS:I = 0xb

.field public static final MONITOR_TYPE_DATA_SUBTYPE_SMS:I = 0xc

.field public static final MONITOR_TYPE_DATA_WRITE_SUBTYPE_CALLLOG:I = 0x83

.field public static final MONITOR_TYPE_DATA_WRITE_SUBTYPE_CANLENDAR:I = 0x8d

.field public static final MONITOR_TYPE_DATA_WRITE_SUBTYPE_CONTACTS:I = 0x6f

.field public static final MONITOR_TYPE_DATA_WRITE_SUBTYPE_SMS:I = 0x79

.field public static final MONITOR_TYPE_GPS:I = 0x9

.field public static final MONITOR_TYPE_GPS_SUBTYPE_GPS:I = 0x1f

.field public static final MONITOR_TYPE_LISTENPRO:I = 0xb

.field public static final MONITOR_TYPE_LISTENPRO_SUBTYPE_LISTEN:I = 0x29

.field public static final MONITOR_TYPE_MOBILEDATAPRO:I = 0xe

.field public static final MONITOR_TYPE_MOBILEDATAPRO_SUBTYPE_MOBILEDATA:I = 0x47

.field public static final MONITOR_TYPE_NFCPRO:I = 0xd

.field public static final MONITOR_TYPE_NFCPRO_SUBTYPE_NFC:I = 0x3d

.field public static final MONITOR_TYPE_READ_CALENDAR:I = 0x4

.field public static final MONITOR_TYPE_READ_CALL_LOG:I = 0x3

.field public static final MONITOR_TYPE_READ_CONTACTS:I = 0x1

.field public static final MONITOR_TYPE_READ_SMS:I = 0x2

.field public static final MONITOR_TYPE_SEND_MMS:I = 0x8

.field public static final MONITOR_TYPE_SEND_SMS:I = 0x7

.field public static final MONITOR_TYPE_WLANPRO:I = 0xc

.field public static final MONITOR_TYPE_WLANPRO_SUBTYPE_WLAN:I = 0x33

.field public static final MONITOR_TYPE_WRITE_CALL_LOG:I = 0x13

.field public static final MONITOR_TYPE_WRITE_CONTACTS:I = 0x11

.field public static final MONITOR_TYPE_WRITE_SMS:I = 0x12

.field public static final SMS_AUTH_Mms:Ljava/lang/String; = "mms"

.field public static final SMS_AUTH_MmsSms:Ljava/lang/String; = "mms-sms"

.field public static final SMS_AUTH_Sms:Ljava/lang/String; = "sms"

.field public static final SMS_AUTH_Telephony:Ljava/lang/String; = "telephony"

.field private static cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

.field private static cloudSecuritySingleton:Lcom/yulong/android/cloudsecurity/server/CloudSecurity;

.field private static mDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 149
    sput v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_DATA:I

    .line 150
    sput v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_COSTMONEY:I

    .line 151
    sput v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_GPS:I

    .line 152
    sput v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_NFC:I

    .line 153
    sput v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_WLAN:I

    .line 154
    sput v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_MOBILEDATA:I

    .line 155
    sput v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_BLUETOOTH:I

    .line 156
    sput v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_RECORD:I

    .line 157
    sput v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_CAMERA:I

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cloudSecuritySingleton:Lcom/yulong/android/cloudsecurity/server/CloudSecurity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method static synthetic access$002(Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;)Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .prologue
    .line 22
    sput-object p0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    return-object p0
.end method

.method public static declared-synchronized getDefault()Lcom/yulong/android/cloudsecurity/server/CloudSecurity;
    .locals 2

    .prologue
    .line 171
    const-class v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cloudSecuritySingleton:Lcom/yulong/android/cloudsecurity/server/CloudSecurity;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;

    invoke-direct {v0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;-><init>()V

    sput-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cloudSecuritySingleton:Lcom/yulong/android/cloudsecurity/server/CloudSecurity;

    .line 174
    :cond_0
    sget-object v0, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cloudSecuritySingleton:Lcom/yulong/android/cloudsecurity/server/CloudSecurity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;
    .locals 4

    .prologue
    .line 183
    sget-object v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v1, :cond_0

    .line 184
    const-string v1, "cloudsecurity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v1

    sput-object v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 188
    :cond_0
    sget-object v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v1, :cond_2

    .line 190
    :try_start_0
    const-string v1, "CloudSecurity"

    const-string v2, "cSecurity linkToDeath"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez v1, :cond_1

    .line 193
    new-instance v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurity$1;

    invoke-direct {v1, p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity$1;-><init>(Lcom/yulong/android/cloudsecurity/server/CloudSecurity;)V

    sput-object v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 201
    :cond_1
    sget-object v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    invoke-interface {v1}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_2
    :goto_0
    sget-object v1, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isCTSMode()Z
    .locals 3

    .prologue
    .line 840
    const-string v1, "persist.yulong.ctstest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "CTS_flag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    const-string v1, "CloudSecurity"

    const-string v2, "cts mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v1, 0x1

    .line 845
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIntrestedIntent(Landroid/content/Intent;)I
    .locals 5
    .param p1, "pIntent"    # Landroid/content/Intent;

    .prologue
    .line 894
    const/4 v0, -0x1

    .line 896
    .local v0, "MONITOR_ACTIVITY_TYPE":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 898
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v0

    .line 920
    .end local v0    # "MONITOR_ACTIVITY_TYPE":I
    .local v1, "MONITOR_ACTIVITY_TYPE":I
    :goto_0
    return v1

    .line 902
    .end local v1    # "MONITOR_ACTIVITY_TYPE":I
    .restart local v0    # "MONITOR_ACTIVITY_TYPE":I
    :cond_1
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 906
    :cond_2
    const/16 v0, 0x15

    :cond_3
    :goto_1
    move v1, v0

    .line 920
    .end local v0    # "MONITOR_ACTIVITY_TYPE":I
    .restart local v1    # "MONITOR_ACTIVITY_TYPE":I
    goto :goto_0

    .line 907
    .end local v1    # "MONITOR_ACTIVITY_TYPE":I
    .restart local v0    # "MONITOR_ACTIVITY_TYPE":I
    :cond_4
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 911
    const/16 v0, 0x17

    goto :goto_1
.end method

.method private isIntrestedUri(Landroid/net/Uri;)I
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 858
    const/4 v0, -0x1

    .line 860
    .local v0, "MONITOR_PROVIDER_TYPE":I
    if-nez p1, :cond_0

    move v1, v0

    .line 886
    .end local v0    # "MONITOR_PROVIDER_TYPE":I
    .local v1, "MONITOR_PROVIDER_TYPE":I
    :goto_0
    return v1

    .line 864
    .end local v1    # "MONITOR_PROVIDER_TYPE":I
    .restart local v0    # "MONITOR_PROVIDER_TYPE":I
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, "realAuth":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v0

    .line 867
    .end local v0    # "MONITOR_PROVIDER_TYPE":I
    .restart local v1    # "MONITOR_PROVIDER_TYPE":I
    goto :goto_0

    .line 870
    .end local v1    # "MONITOR_PROVIDER_TYPE":I
    .restart local v0    # "MONITOR_PROVIDER_TYPE":I
    :cond_2
    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.voicemail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "icc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 874
    :cond_3
    const/16 v0, 0xb

    :cond_4
    :goto_1
    move v1, v0

    .line 886
    .end local v0    # "MONITOR_PROVIDER_TYPE":I
    .restart local v1    # "MONITOR_PROVIDER_TYPE":I
    goto :goto_0

    .line 875
    .end local v1    # "MONITOR_PROVIDER_TYPE":I
    .restart local v0    # "MONITOR_PROVIDER_TYPE":I
    :cond_5
    const-string v3, "call_log"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 876
    const/16 v0, 0xd

    .line 877
    const-string v3, "CloudSecurity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--is intrested calllog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 878
    :cond_6
    const-string v3, "sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "mms-sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 881
    :cond_7
    const/16 v0, 0xc

    goto :goto_1

    .line 882
    :cond_8
    const-string v3, "com.android.calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 883
    const/16 v0, 0xe

    goto :goto_1
.end method

.method private isNeedCheck(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 955
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isCTSMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    :cond_0
    const/4 v0, 0x0

    .line 958
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private rebuildCdmaCellLocation(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 939
    const-string v0, "CloudSecurity"

    const-string v1, "rebuildCdmaCellLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string v0, "baseStationId"

    const v1, 0x8943

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 941
    const-string v0, "baseStationLatitude"

    const v1, 0x8af70

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 942
    const-string v0, "baseStationLongitude"

    const v1, 0x45a34d

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 945
    return-void
.end method

.method private rebuildGsmCellLocation(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 948
    const-string v0, "CloudSecurity"

    const-string v1, "rebuildGsmCellLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v0, "lac"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 950
    const-string v0, "cid"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 952
    return-void
.end method


# virtual methods
.method public csCheckActivity(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "pIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 310
    const/4 v2, 0x1

    .line 312
    .local v2, "isAllowed":Z
    const/4 v0, -0x1

    .line 316
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 318
    .local v5, "uid":I
    const-string v7, "CloudSecurity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") call csCheckActivity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0, v5}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isIntrestedIntent(Landroid/content/Intent;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    move v3, v2

    .line 354
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 333
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_1
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v7, :cond_2

    .line 334
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v7

    sput-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 337
    :cond_2
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v7, :cond_3

    .line 339
    :try_start_0
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/4 v8, 0x0

    const-string v9, ""

    invoke-interface {v7, v5, v8, v0, v9}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 341
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_COSTMONEY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    if-nez v4, :cond_4

    move v2, v6

    .end local v4    # "result":I
    :cond_3
    :goto_1
    move v3, v2

    .line 354
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 342
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 347
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CloudSecurity"

    const-string v7, "call csCheckActivity method RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v2, 0x1

    .line 351
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public csCheckBlueTooth()Z
    .locals 9

    .prologue
    .line 790
    const/4 v2, 0x1

    .line 792
    .local v2, "isAllowed":Z
    const/16 v0, 0x51

    .line 796
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 798
    .local v5, "uid":I
    const-string v6, "CloudSecurity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") call csCheckBlueTooth"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-direct {p0, v5}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v2

    .line 831
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 810
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v6, :cond_1

    .line 811
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v6

    sput-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 814
    :cond_1
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v6, :cond_2

    .line 816
    :try_start_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/16 v7, 0xf

    const-string v8, ""

    invoke-interface {v6, v5, v7, v0, v8}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 818
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_BLUETOOTH:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    if-nez v4, :cond_3

    const/4 v2, 0x0

    .end local v4    # "result":I
    :cond_2
    :goto_1
    move v3, v2

    .line 831
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 819
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 824
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 825
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CloudSecurity"

    const-string v7, "call csCheckBlueTooth method RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v2, 0x1

    .line 828
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public csCheckCallPhone(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 365
    const/4 v2, 0x1

    .line 367
    .local v2, "isAllowed":Z
    const/16 v0, 0x15

    .line 379
    .local v0, "MONITOR_TYPE":I
    const-string v6, "CloudSecurity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(myuid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", callinguid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") call csCheckCallPhone"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0, p1}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v2

    .line 407
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 385
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v6, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v6

    sput-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 389
    :cond_1
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v6, :cond_2

    .line 391
    :try_start_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/4 v7, 0x0

    const-string v8, ""

    invoke-interface {v6, p1, v7, v0, v8}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 393
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_COSTMONEY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    if-nez v4, :cond_3

    move v2, v5

    .end local v4    # "result":I
    :cond_2
    :goto_1
    move v3, v2

    .line 407
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 394
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 399
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CloudSecurity"

    const-string v6, "call csCheckCostMoney method RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v2, 0x1

    .line 403
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public csCheckCamera()Z
    .locals 9

    .prologue
    .line 607
    const/4 v2, 0x1

    .line 609
    .local v2, "isAllowed":Z
    const/16 v0, 0x5b

    .line 613
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 615
    .local v5, "uid":I
    const-string v6, "CloudSecurity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") call csCheckCamera"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-direct {p0, v5}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v2

    .line 648
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 625
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v6, :cond_1

    .line 626
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v6

    sput-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 629
    :cond_1
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v6, :cond_2

    .line 631
    :try_start_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/16 v7, 0x10

    const-string v8, ""

    invoke-interface {v6, v5, v7, v0, v8}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 633
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_CAMERA:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    if-nez v4, :cond_3

    const/4 v2, 0x0

    .end local v4    # "result":I
    :cond_2
    :goto_1
    move v3, v2

    .line 648
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 635
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 640
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CloudSecurity"

    const-string v7, "call csCheckCamera method RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v2, 0x1

    .line 644
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public csCheckGPS()Z
    .locals 9

    .prologue
    .line 516
    const/4 v2, 0x1

    .line 518
    .local v2, "isAllowed":Z
    const/16 v0, 0x1f

    .line 522
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 529
    .local v5, "uid":I
    const-string v6, "CloudSecurity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") call csCheckGPS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-direct {p0, v5}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v2

    .line 555
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 535
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v6, :cond_1

    .line 536
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v6

    sput-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 539
    :cond_1
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v6, :cond_2

    .line 541
    :try_start_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/16 v7, 0x9

    const-string v8, ""

    invoke-interface {v6, v5, v7, v0, v8}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 543
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_GPS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    if-nez v4, :cond_3

    const/4 v2, 0x0

    .end local v4    # "result":I
    :cond_2
    :goto_1
    move v3, v2

    .line 555
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 544
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 549
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CloudSecurity"

    const-string v7, "call csCheckGPS method RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v2, 0x1

    .line 552
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public csCheckMms()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 469
    const/4 v2, 0x1

    .line 471
    .local v2, "isAllowed":Z
    const/16 v0, 0x17

    .line 475
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 483
    .local v5, "uid":I
    const-string v7, "CloudSecurity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") call csCheckMms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0, v5}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v7

    if-nez v7, :cond_0

    move v3, v2

    .line 511
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 489
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_0
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v7, :cond_1

    .line 490
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v7

    sput-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 493
    :cond_1
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v7, :cond_2

    .line 495
    :try_start_0
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/4 v8, 0x0

    const-string v9, ""

    invoke-interface {v7, v5, v8, v0, v9}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 497
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_COSTMONEY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    if-nez v4, :cond_3

    move v2, v6

    .end local v4    # "result":I
    :cond_2
    :goto_1
    move v3, v2

    .line 511
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 498
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 503
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CloudSecurity"

    const-string v7, "call csCheckCostMoney method RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v2, 0x1

    .line 507
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public csCheckMobileData(Z)Z
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    .line 742
    const/4 v3, 0x1

    .line 744
    .local v3, "isAllowed":Z
    const/16 v0, 0x47

    .line 748
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 750
    .local v6, "uid":I
    const-string v7, "CloudSecurity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") call csCheckMobileData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isCTSMode()Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v3

    .line 785
    .end local v3    # "isAllowed":Z
    .local v4, "isAllowed":I
    :goto_0
    return v4

    .line 762
    .end local v4    # "isAllowed":I
    .restart local v3    # "isAllowed":Z
    :cond_0
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v7, :cond_1

    .line 763
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v7

    sput-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 766
    :cond_1
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v7, :cond_2

    .line 768
    if-eqz p1, :cond_3

    :try_start_0
    const-string v2, "1"

    .line 770
    .local v2, "enabledFlag":Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/16 v8, 0xe

    invoke-interface {v7, v6, v8, v0, v2}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v5

    .line 772
    .local v5, "result":I
    sput v5, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_MOBILEDATA:I

    .line 773
    if-nez v5, :cond_4

    const/4 v3, 0x0

    .end local v2    # "enabledFlag":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_2
    move v4, v3

    .line 785
    .restart local v4    # "isAllowed":I
    goto :goto_0

    .line 768
    .end local v4    # "isAllowed":I
    :cond_3
    const-string v2, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 773
    .restart local v2    # "enabledFlag":Ljava/lang/String;
    .restart local v5    # "result":I
    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    .line 778
    .end local v2    # "enabledFlag":Ljava/lang/String;
    .end local v5    # "result":I
    :catch_0
    move-exception v1

    .line 779
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "CloudSecurity"

    const-string v8, "call csCheckMobileData method RemoteException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v3, 0x1

    .line 782
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public csCheckNFC()Z
    .locals 9

    .prologue
    .line 698
    const/4 v2, 0x1

    .line 700
    .local v2, "isAllowed":Z
    const/16 v0, 0x3d

    .line 704
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 706
    .local v5, "uid":I
    const-string v6, "CloudSecurity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") call csCheckNFC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-direct {p0, v5}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v2

    .line 737
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 717
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v6, :cond_1

    .line 718
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v6

    sput-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 721
    :cond_1
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v6, :cond_2

    .line 723
    :try_start_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/16 v7, 0xd

    const-string v8, ""

    invoke-interface {v6, v5, v7, v0, v8}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 725
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_NFC:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    if-nez v4, :cond_3

    const/4 v2, 0x0

    .end local v4    # "result":I
    :cond_2
    :goto_1
    move v3, v2

    .line 737
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 726
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 731
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 732
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CloudSecurity"

    const-string v7, "call csCheckNFC method RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v2, 0x1

    .line 734
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public csCheckProvider(Landroid/net/Uri;)Z
    .locals 10
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 212
    const/4 v2, 0x1

    .line 214
    .local v2, "isAllowed":Z
    const/4 v0, -0x1

    .line 218
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 220
    .local v5, "uid":I
    const-string v7, "CloudSecurity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") call csCheckProvider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0, v5}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isIntrestedUri(Landroid/net/Uri;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    move v3, v2

    .line 255
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 232
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_1
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v7, :cond_2

    .line 233
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v7

    sput-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 236
    :cond_2
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v7, :cond_3

    .line 238
    :try_start_0
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/4 v8, 0x0

    const-string v9, ""

    invoke-interface {v7, v5, v8, v0, v9}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 240
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_DATA:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    if-nez v4, :cond_4

    move v2, v6

    .end local v4    # "result":I
    :cond_3
    :goto_1
    move v3, v2

    .line 255
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 241
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 247
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CloudSecurity"

    const-string v7, "call csCheckProvider method RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v2, 0x1

    .line 251
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public csCheckRecord()Z
    .locals 9

    .prologue
    .line 560
    const/4 v2, 0x1

    .line 562
    .local v2, "isAllowed":Z
    const/16 v0, 0x29

    .line 566
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 573
    .local v5, "uid":I
    const-string v6, "CloudSecurity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") call csCheckRecord"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0, v5}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v2

    .line 602
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 579
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v6, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v6

    sput-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 583
    :cond_1
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v6, :cond_2

    .line 585
    :try_start_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/16 v7, 0xb

    const-string v8, ""

    invoke-interface {v6, v5, v7, v0, v8}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 587
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_RECORD:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    if-nez v4, :cond_3

    const/4 v2, 0x0

    .end local v4    # "result":I
    :cond_2
    :goto_1
    move v3, v2

    .line 602
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 589
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 594
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CloudSecurity"

    const-string v7, "call csCheckRecord method RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v2, 0x1

    .line 598
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public csCheckSms(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 418
    const/4 v2, 0x1

    .line 420
    .local v2, "isAllowed":Z
    const/16 v0, 0x16

    .line 436
    .local v0, "MONITOR_TYPE":I
    const-string v6, "CloudSecurity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(myuid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", callinguid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") call csCheckSms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0, p1}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v2

    .line 464
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 442
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v6, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v6

    sput-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 446
    :cond_1
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v6, :cond_2

    .line 448
    :try_start_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/4 v7, 0x0

    const-string v8, ""

    invoke-interface {v6, p1, v7, v0, v8}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 450
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_COSTMONEY:I

    .line 451
    if-nez v4, :cond_3

    move v2, v5

    .line 453
    :goto_1
    sget v5, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_COSTMONEY:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v5, :cond_2

    .line 454
    sget-object v5, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    invoke-interface {v5}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "result":I
    :cond_2
    :goto_2
    move v3, v2

    .line 464
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 451
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 456
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CloudSecurity"

    const-string v6, "call csCheckCostMoney method RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v2, 0x1

    .line 460
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public csCheckUpdateProvider(Landroid/net/Uri;)Z
    .locals 10
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 260
    const/4 v2, 0x1

    .line 262
    .local v2, "isAllowed":Z
    const/4 v0, -0x1

    .line 266
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 268
    .local v5, "uid":I
    const-string v7, "CloudSecurity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") call csCheckUpdateProvider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0, v5}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isIntrestedUri(Landroid/net/Uri;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    move v3, v2

    .line 305
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 280
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_1
    mul-int/lit8 v7, v0, 0xa

    add-int/lit8 v0, v7, 0x1

    .line 282
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v7, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v7

    sput-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 286
    :cond_2
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v7, :cond_3

    .line 288
    :try_start_0
    sget-object v7, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/4 v8, 0x0

    const-string v9, ""

    invoke-interface {v7, v5, v8, v0, v9}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 290
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_DATA:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    if-nez v4, :cond_4

    move v2, v6

    .end local v4    # "result":I
    :cond_3
    :goto_1
    move v3, v2

    .line 305
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 291
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 297
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CloudSecurity"

    const-string v7, "call csCheckUpdateProvider method RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v2, 0x1

    .line 301
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public csCheckWLAN()Z
    .locals 9

    .prologue
    .line 653
    const/4 v2, 0x1

    .line 655
    .local v2, "isAllowed":Z
    const/16 v0, 0x33

    .line 659
    .local v0, "MONITOR_TYPE":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 661
    .local v5, "uid":I
    const-string v6, "CloudSecurity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") call csCheckWLAN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0, v5}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->isNeedCheck(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v2

    .line 693
    .end local v2    # "isAllowed":Z
    .local v3, "isAllowed":I
    :goto_0
    return v3

    .line 672
    .end local v3    # "isAllowed":I
    .restart local v2    # "isAllowed":Z
    :cond_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-nez v6, :cond_1

    .line 673
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->getICloudSecurityProxy()Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    move-result-object v6

    sput-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    .line 676
    :cond_1
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v6, :cond_2

    .line 678
    :try_start_0
    sget-object v6, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->cSecurity:Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    const/16 v7, 0xc

    const-string v8, ""

    invoke-interface {v6, v5, v7, v0, v8}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;->checkUidPerm(IIILjava/lang/String;)I

    move-result v4

    .line 680
    .local v4, "result":I
    sput v4, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->APP_FLAG_WLAN:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    if-nez v4, :cond_3

    const/4 v2, 0x0

    .end local v4    # "result":I
    :cond_2
    :goto_1
    move v3, v2

    .line 693
    .restart local v3    # "isAllowed":I
    goto :goto_0

    .line 681
    .end local v3    # "isAllowed":I
    .restart local v4    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 686
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 687
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CloudSecurity"

    const-string v7, "call csCheckWLAN method RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v2, 0x1

    .line 690
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public reBuildGPSBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 925
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 936
    :goto_0
    return-void

    .line 927
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->rebuildCdmaCellLocation(Landroid/os/Bundle;)V

    goto :goto_0

    .line 930
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/yulong/android/cloudsecurity/server/CloudSecurity;->rebuildGsmCellLocation(Landroid/os/Bundle;)V

    goto :goto_0

    .line 925
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
