.class public Landroid/net/wifi/WifiStatusBar;
.super Ljava/lang/Object;
.source "WifiStatusBar.java"


# static fields
.field private static final ACTION_UW_STATE_CHANGE:Ljava/lang/String; = "yulong.intent.action.UW_STATE_CHANGE"

.field public static final ACTION_WIFI_STATUSBAR:Ljava/lang/String; = "com.yulong.android.action.WifiStatusBar"

.field public static final FLAG_WIFI_STATUSBAR_ICONID:Ljava/lang/String; = "iconid"

.field public static final FLAG_WIFI_STATUSBAR_TYPEID:Ljava/lang/String; = "typeid"

.field public static final UW_CONNECTED:I = 0x5

.field public static final UW_CONNECTING:I = 0x4

.field public static final UW_DEREGISTING:I = 0x7

.field public static final UW_DISCONNECTING:I = 0x6

.field public static final UW_IDLE:I = 0x1

.field public static final UW_REGISTED:I = 0x3

.field public static final UW_REGISTING:I = 0x2

.field public static final UW_STATE_KEY:Ljava/lang/String; = "state"

.field private static final WIFI_ICON_COMMON:I = 0x0

.field private static final WIFI_ICON_CONNETCTED:I = 0x2

.field private static final WIFI_ICON_CONNETCTING:I = 0x4

.field private static final WIFI_ICON_DOWNLOAD:I = 0x5

.field private static final WIFI_ICON_REGISTED:I = 0x1

.field private static final WIFI_ICON_REGISTING:I = 0x3

.field private static final WIFI_ICON_TRANSFER:I = 0x7

.field private static final WIFI_ICON_UPLOAD:I = 0x6

.field private static final WIFI_STATE_DISABLED:I = -0x2

.field private static final WIFI_STATE_ENABLED:I = -0x1


# instance fields
.field final TAG:Ljava/lang/String;

.field private final UW_CONNECT_FAILED:I

.field private final UW_REGIST_FAILED:I

.field private curTotalRx:J

.field private curTotalTx:J

.field private iconId:I

.field mContext:Landroid/content/Context;

.field private mIsWifiConnected:Z

.field private mWifiEnabled:Z

.field private preTotalRx:J

.field private preTotalTx:J

.field private totalRxRate:J

.field private totalTxRate:J

.field private wifiIconType:I

.field private wifiLevelCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v1, "WifiStatusBar"

    iput-object v1, p0, Landroid/net/wifi/WifiStatusBar;->TAG:Ljava/lang/String;

    .line 25
    const/4 v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStatusBar;->UW_REGIST_FAILED:I

    .line 26
    const/4 v1, 0x2

    iput v1, p0, Landroid/net/wifi/WifiStatusBar;->UW_CONNECT_FAILED:I

    .line 70
    iput-object p1, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    .line 71
    const-string v1, "WifiStatusBar"

    const-string v2, "construct WifiStatusBar"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/wifi/WifiStatusBar$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiStatusBar$1;-><init>(Landroid/net/wifi/WifiStatusBar;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    .line 90
    return-void
.end method

.method private emmit_quoted_string(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "myString"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    const-string p1, ""

    .line 253
    .end local p1    # "myString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 248
    .restart local p1    # "myString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 249
    .local v0, "lastPos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 250
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method updateWifi(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WifiStatusBar: action = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v11, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 102
    const-string/jumbo v11, "wifi_state"

    const/4 v12, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 103
    .local v10, "wifiStatus":I
    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    const/4 v2, 0x1

    .line 104
    .local v2, "enabled":Z
    :goto_1
    if-nez v2, :cond_4

    .line 106
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    .line 107
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/net/wifi/WifiStatusBar;->mWifiEnabled:Z

    .line 108
    const/4 v11, -0x2

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 114
    :goto_2
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WifiStatusBar iconId ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v2    # "enabled":Z
    .end local v10    # "wifiStatus":I
    :cond_2
    :goto_3
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.yulong.android.action.WifiStatusBar"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v3, "intent2":Landroid/content/Intent;
    const/high16 v11, 0x4000000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    const-string v11, "iconid"

    move-object/from16 v0, p0

    iget v12, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string/jumbo v11, "typeid"

    move-object/from16 v0, p0

    iget v12, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 103
    .end local v3    # "intent2":Landroid/content/Intent;
    .restart local v10    # "wifiStatus":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 110
    .restart local v2    # "enabled":Z
    :cond_4
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/net/wifi/WifiStatusBar;->mWifiEnabled:Z

    .line 111
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    goto :goto_2

    .line 115
    .end local v2    # "enabled":Z
    .end local v10    # "wifiStatus":I
    :cond_5
    const-string v11, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 116
    const-string v11, "connected"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 121
    .restart local v2    # "enabled":Z
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WifiStatusBar iconId ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 122
    .end local v2    # "enabled":Z
    :cond_6
    const-string v11, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 123
    const-string/jumbo v11, "networkInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 126
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/net/wifi/WifiStatusBar;->mWifiEnabled:Z

    if-eqz v11, :cond_7

    .line 127
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 128
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    .line 129
    move-object/from16 v0, p0

    iget v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiLevelCount:I

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 136
    :cond_7
    :goto_4
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WifiStatusBar iconId ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 131
    :cond_8
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    .line 132
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 133
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_4

    .line 137
    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_9
    const-string v11, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 139
    const-string/jumbo v11, "newRssi"

    const/16 v12, -0xc8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 140
    .local v7, "newRssi":I
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WifiStatusBar: mRssi = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v11, 0x4

    invoke-static {v7, v11}, Landroid/net/wifi/WifiManager;->YLcalculateSignalLevel(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiLevelCount:I

    .line 144
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    if-eqz v11, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiLevelCount:I

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    .line 146
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WifiStatusBar iconId ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->curTotalRx:J

    .line 149
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->curTotalTx:J

    .line 150
    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->curTotalRx:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiStatusBar;->preTotalRx:J

    sub-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->totalRxRate:J

    .line 151
    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->curTotalTx:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiStatusBar;->preTotalTx:J

    sub-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->totalTxRate:J

    .line 152
    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->curTotalRx:J

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->preTotalRx:J

    .line 153
    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->curTotalTx:J

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->preTotalTx:J

    .line 154
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "totalRxRate="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiStatusBar;->totalRxRate:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",totalTxRate="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiStatusBar;->totalTxRate:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->totalRxRate:J

    const-wide/16 v13, 0x3

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/net/wifi/WifiStatusBar;->totalTxRate:J

    mul-long/2addr v13, v15

    cmp-long v11, v11, v13

    if-lez v11, :cond_a

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->totalTxRate:J

    const-wide/16 v13, 0x1f4

    cmp-long v11, v11, v13

    if-lez v11, :cond_a

    .line 156
    const/4 v11, 0x5

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto/16 :goto_3

    .line 157
    :cond_a
    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->totalTxRate:J

    const-wide/16 v13, 0x3

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/net/wifi/WifiStatusBar;->totalRxRate:J

    mul-long/2addr v13, v15

    cmp-long v11, v11, v13

    if-lez v11, :cond_b

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->totalRxRate:J

    const-wide/16 v13, 0x1f4

    cmp-long v11, v11, v13

    if-lez v11, :cond_b

    .line 158
    const/4 v11, 0x6

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto/16 :goto_3

    .line 159
    :cond_b
    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->totalTxRate:J

    const-wide/16 v13, 0x1f4

    cmp-long v11, v11, v13

    if-lez v11, :cond_c

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/net/wifi/WifiStatusBar;->totalRxRate:J

    const-wide/16 v13, 0x1f4

    cmp-long v11, v11, v13

    if-lez v11, :cond_c

    .line 160
    const/4 v11, 0x7

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto/16 :goto_3

    .line 162
    :cond_c
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto/16 :goto_3

    .line 167
    .end local v7    # "newRssi":I
    :cond_d
    const-string/jumbo v11, "yulong.intent.action.UW_STATE_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/net/wifi/WifiStatusBar;->mIsWifiConnected:Z

    if-eqz v11, :cond_13

    .line 169
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 170
    .local v4, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "mySsid":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 172
    const-wide/16 v11, 0xc8

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 173
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 175
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/net/wifi/WifiStatusBar;->emmit_quoted_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "current primary ap ssid is:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v11, "ChinaNet_HomeCW"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "ChinaNet_CW"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "ChinaNet"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 178
    :cond_f
    const-string/jumbo v11, "state"

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 179
    .local v9, "uwState":I
    const-string/jumbo v11, "state_reason"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 180
    .local v8, "uwErrorCode":I
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CPUWDManager.UW_STATE_KEY:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",uwErrorCode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v11, 0x1

    if-eq v11, v8, :cond_10

    const/4 v11, 0x2

    if-ne v11, v8, :cond_12

    .line 182
    :cond_10
    const/4 v11, 0x1

    if-ne v11, v8, :cond_11

    .line 183
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto/16 :goto_0

    .line 184
    :cond_11
    const/4 v11, 0x2

    if-ne v11, v8, :cond_0

    .line 185
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto/16 :goto_0

    .line 189
    :cond_12
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "uwState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    packed-switch v9, :pswitch_data_0

    .line 226
    const-string v11, "WifiStatusBar"

    const-string v12, "c+w default"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    .line 233
    .end local v4    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v5    # "mySsid":Ljava/lang/String;
    .end local v8    # "uwErrorCode":I
    .end local v9    # "uwState":I
    :cond_13
    :goto_5
    const-string v11, "WifiStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WifiStatusBar iconId ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiStatusBar;->iconId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; wifiIconType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 192
    .restart local v4    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .restart local v5    # "mySsid":Ljava/lang/String;
    .restart local v8    # "uwErrorCode":I
    .restart local v9    # "uwState":I
    :pswitch_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 196
    :pswitch_1
    const-string v11, "WifiStatusBar"

    const-string v12, "C+W UW_REGISTING"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v11, 0x3

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 201
    :pswitch_2
    const-string v11, "WifiStatusBar"

    const-string v12, "C+W UW_REGISTED"

    invoke-static {v11, v12}, Landroid/util/Log;->d1(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 206
    :pswitch_3
    const-string v11, "WifiStatusBar"

    const-string v12, "C+W UW_CONNECTING"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v11, 0x4

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 211
    :pswitch_4
    const-string v11, "WifiStatusBar"

    const-string v12, "C+W UW_CONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 216
    :pswitch_5
    const-string v11, "WifiStatusBar"

    const-string v12, "C+W UW_DISCONNECTING"

    invoke-static {v11, v12}, Landroid/util/Log;->d1(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 221
    :pswitch_6
    const-string v11, "WifiStatusBar"

    const-string v12, "C+W UW_DEREGISTING"

    invoke-static {v11, v12}, Landroid/util/Log;->d1(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStatusBar;->wifiIconType:I

    goto :goto_5

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
