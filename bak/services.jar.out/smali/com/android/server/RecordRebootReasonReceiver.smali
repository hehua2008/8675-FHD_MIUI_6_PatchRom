.class public Lcom/android/server/RecordRebootReasonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecordRebootReasonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RecordRebootReasonReceiver$LogcatLog;
    }
.end annotation


# static fields
.field private static final BOOT_REASON_FILE_PATH:Ljava/lang/String; = "/proc/cmdline"

.field private static final TAG:Ljava/lang/String; = "RecordRebootReasonReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/RecordRebootReasonReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/RecordRebootReasonReceiver;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/RecordRebootReasonReceiver;->writeRebootTypeLog()V

    return-void
.end method

.method private getRebootType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "rebootReason":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/RecordRebootReasonReceiver;->isZygoteProcessDied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v0, "vm"

    .line 185
    :goto_0
    return-object v0

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RecordRebootReasonReceiver;->parseBootReason()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isZygoteProcessDied()Z
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "ret":Z
    const-string v1, "ro.yulong.ylcrash"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "syscrash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 91
    :cond_0
    const-string v1, "RecordRebootReasonReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isZygoteProcessDied----ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v0
.end method

.method private parseBootReason()Ljava/lang/String;
    .locals 25

    .prologue
    .line 96
    const/16 v18, 0x0

    .line 97
    .local v18, "rebootReason":Ljava/lang/String;
    const/16 v2, 0x400

    .line 100
    .local v2, "MAX_LENGTH_CMDLINE":I
    const/16 v22, 0x400

    :try_start_0
    move/from16 v0, v22

    new-array v5, v0, [C

    .line 101
    .local v5, "buf":[C
    new-instance v8, Ljava/io/FileReader;

    const-string v22, "/proc/cmdline"

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 102
    .local v8, "fileReader":Ljava/io/FileReader;
    const/16 v22, 0x0

    const/16 v23, 0x3ff

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v5, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 103
    .local v6, "count":I
    const/16 v22, 0x3ff

    move/from16 v0, v22

    if-le v6, v0, :cond_0

    .line 104
    const/16 v6, 0x3ff

    .line 107
    :cond_0
    new-instance v20, Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-direct {v0, v5, v1, v6}, Ljava/lang/String;-><init>([CII)V

    .line 108
    .local v20, "strCmdline":Ljava/lang/String;
    const-string v22, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 109
    .local v19, "strArray":[Ljava/lang/String;
    const-string v21, "yulong.boot_reason="

    .line 110
    .local v21, "subStr":Ljava/lang/String;
    const-string v3, "yulong.boot_event="

    .line 111
    .local v3, "bootEventSubStr":Ljava/lang/String;
    const-string v17, "yulong.reboot_event="

    .line 113
    .local v17, "rebootEventSubStr":Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v13, v0

    .line 114
    .local v13, "len":I
    move v11, v13

    .line 115
    .local v11, "idexBootReason":I
    move v10, v13

    .line 116
    .local v10, "idexBootEvent":I
    move v12, v13

    .line 119
    .local v12, "idexRebootEvent":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v13, :cond_4

    .line 120
    aget-object v22, v19, v9

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 121
    move v11, v9

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 122
    :cond_2
    aget-object v22, v19, v9

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 123
    move v10, v9

    goto :goto_1

    .line 124
    :cond_3
    aget-object v22, v19, v9

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 125
    move v12, v9

    goto :goto_1

    .line 129
    :cond_4
    if-eqz v8, :cond_5

    .line 130
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 134
    :cond_5
    if-ge v11, v13, :cond_6

    if-ge v10, v13, :cond_6

    if-lt v12, v13, :cond_7

    .line 135
    :cond_6
    const-string v22, "RecordRebootReasonReceiver"

    const-string v23, "no power reason in proc/cmdline."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/16 v22, 0x0

    .line 173
    .end local v3    # "bootEventSubStr":Ljava/lang/String;
    .end local v5    # "buf":[C
    .end local v6    # "count":I
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v9    # "i":I
    .end local v10    # "idexBootEvent":I
    .end local v11    # "idexBootReason":I
    .end local v12    # "idexRebootEvent":I
    .end local v13    # "len":I
    .end local v17    # "rebootEventSubStr":Ljava/lang/String;
    .end local v19    # "strArray":[Ljava/lang/String;
    .end local v20    # "strCmdline":Ljava/lang/String;
    .end local v21    # "subStr":Ljava/lang/String;
    :goto_2
    return-object v22

    .line 139
    .restart local v3    # "bootEventSubStr":Ljava/lang/String;
    .restart local v5    # "buf":[C
    .restart local v6    # "count":I
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "i":I
    .restart local v10    # "idexBootEvent":I
    .restart local v11    # "idexBootReason":I
    .restart local v12    # "idexRebootEvent":I
    .restart local v13    # "len":I
    .restart local v17    # "rebootEventSubStr":Ljava/lang/String;
    .restart local v19    # "strArray":[Ljava/lang/String;
    .restart local v20    # "strCmdline":Ljava/lang/String;
    .restart local v21    # "subStr":Ljava/lang/String;
    :cond_7
    aget-object v22, v19, v11

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 140
    .local v15, "numberStr":Ljava/lang/String;
    aget-object v22, v19, v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "bootevent":Ljava/lang/String;
    aget-object v22, v19, v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 144
    .local v16, "rebootEvent":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 145
    .local v14, "num":I
    const-string v22, "RecordRebootReasonReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "reason: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",bootevent: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",rebootevent: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_a

    .line 151
    const-string v22, "reboot"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 152
    const-string v22, "RecordRebootReasonReceiver"

    const-string v23, "It\'s normally reboot."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v18, 0x0

    .line 164
    :goto_3
    if-eqz v18, :cond_8

    .line 165
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .end local v3    # "bootEventSubStr":Ljava/lang/String;
    .end local v4    # "bootevent":Ljava/lang/String;
    .end local v5    # "buf":[C
    .end local v6    # "count":I
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v9    # "i":I
    .end local v10    # "idexBootEvent":I
    .end local v11    # "idexBootReason":I
    .end local v12    # "idexRebootEvent":I
    .end local v13    # "len":I
    .end local v14    # "num":I
    .end local v15    # "numberStr":Ljava/lang/String;
    .end local v16    # "rebootEvent":Ljava/lang/String;
    .end local v17    # "rebootEventSubStr":Ljava/lang/String;
    .end local v19    # "strArray":[Ljava/lang/String;
    .end local v20    # "strCmdline":Ljava/lang/String;
    .end local v21    # "subStr":Ljava/lang/String;
    :cond_8
    :goto_4
    move-object/from16 v22, v18

    .line 173
    goto/16 :goto_2

    .line 158
    .restart local v3    # "bootEventSubStr":Ljava/lang/String;
    .restart local v4    # "bootevent":Ljava/lang/String;
    .restart local v5    # "buf":[C
    .restart local v6    # "count":I
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "i":I
    .restart local v10    # "idexBootEvent":I
    .restart local v11    # "idexBootReason":I
    .restart local v12    # "idexRebootEvent":I
    .restart local v13    # "len":I
    .restart local v14    # "num":I
    .restart local v15    # "numberStr":Ljava/lang/String;
    .restart local v16    # "rebootEvent":Ljava/lang/String;
    .restart local v17    # "rebootEventSubStr":Ljava/lang/String;
    .restart local v19    # "strArray":[Ljava/lang/String;
    .restart local v20    # "strCmdline":Ljava/lang/String;
    .restart local v21    # "subStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v18, v16

    goto :goto_3

    .line 161
    :cond_a
    move-object/from16 v18, v4

    goto :goto_3

    .line 167
    .end local v3    # "bootEventSubStr":Ljava/lang/String;
    .end local v4    # "bootevent":Ljava/lang/String;
    .end local v5    # "buf":[C
    .end local v6    # "count":I
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v9    # "i":I
    .end local v10    # "idexBootEvent":I
    .end local v11    # "idexBootReason":I
    .end local v12    # "idexRebootEvent":I
    .end local v13    # "len":I
    .end local v14    # "num":I
    .end local v15    # "numberStr":Ljava/lang/String;
    .end local v16    # "rebootEvent":Ljava/lang/String;
    .end local v17    # "rebootEventSubStr":Ljava/lang/String;
    .end local v19    # "strArray":[Ljava/lang/String;
    .end local v20    # "strCmdline":Ljava/lang/String;
    .end local v21    # "subStr":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Ljava/lang/Exception;
    const-string v22, "RecordRebootReasonReceiver"

    const-string v23, "Fail to parse: "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private writeRebootTypeLog()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/android/server/RecordRebootLogManager;->getInstance()Lcom/android/server/RecordRebootLogManager;

    move-result-object v0

    .line 74
    .local v0, "rebootLogManager":Lcom/android/server/RecordRebootLogManager;
    invoke-direct {p0}, Lcom/android/server/RecordRebootReasonReceiver;->getRebootType()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "strRebootType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 78
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/server/RecordRebootLogManager;->record(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method protected logcatToFile()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/RecordRebootReasonReceiver;->isZygoteProcessDied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Lcom/android/server/RecordRebootReasonReceiver$LogcatLog;

    invoke-direct {v0, p0}, Lcom/android/server/RecordRebootReasonReceiver$LogcatLog;-><init>(Lcom/android/server/RecordRebootReasonReceiver;)V

    .line 68
    .local v0, "logcatLog":Lcom/android/server/YulongRecordLog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/YulongRecordLog;->record(Ljava/lang/String;)V

    .line 70
    .end local v0    # "logcatLog":Lcom/android/server/YulongRecordLog;
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    const-string v1, "RecordRebootReasonReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartupIntentReceiver onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Lcom/android/server/RecordRebootReasonReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/RecordRebootReasonReceiver$1;-><init>(Lcom/android/server/RecordRebootReasonReceiver;)V

    invoke-virtual {v1}, Lcom/android/server/RecordRebootReasonReceiver$1;->start()V

    .line 62
    return-void
.end method
