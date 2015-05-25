.class public Lcom/yulong/android/uitechno/service/UitechnoService;
.super Landroid/os/Binder;
.source "UitechnoService.java"


# static fields
.field public static final CODE_COPY_FILE:I = 0x8

.field public static final CODE_COPY_FILE_TO_DIR:I = 0x6

.field public static final CODE_DELETE_FILE:I = 0x4

.field public static final CODE_GET_PARCELFILEDESCRIPTOR:I = 0x3

.field public static final CODE_PROPERTYSERVICE_GETPROPERTY:I = 0x301

.field public static final CODE_SET_FONT:I = 0x7

.field public static final CODE_SYSTEMPROPERTIES_SET:I = 0x2

.field public static final CODE_THEMESERVICE_CLEARPROPERTY:I = 0x103

.field public static final CODE_THEMESERVICE_GETPROPERTY:I = 0x101

.field public static final CODE_THEMESERVICE_LOADPROPERTY:I = 0x102

.field public static final CODE_THEMESERVICE_PRELOADZYGOTERESOURCE:I = 0x106

.field public static final CODE_THEMESERVICE_THEMECHANGED:I = 0x105

.field public static final CODE_THEMESERVICE_USERTHEME_BEGIN:I = 0x107

.field public static final CODE_THEMESERVICE_USERTHEME_END:I = 0x108

.field public static final CODE_THEMESERVICE_USERTHEME_GET_THEME_PROPERTY:I = 0x111

.field public static final CODE_THEMESERVICE_USERTHEME_SET_BITMAPDRAWABLE:I = 0x109

.field public static final CODE_THEMESERVICE_USERTHEME_SET_STRING:I = 0x10a

.field public static final CODE_UNZIP_FILE:I = 0x5

.field public static final CODE_WATCHSERVICE_INTENT:I = 0x201

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.uitechno.service.UitechnoService"

.field public static final SERVICE_NAME:Ljava/lang/String; = "uitechnoService"

.field static final TAG:Ljava/lang/String; = "uitechnoService"

.field public static final THEME_ICON_PROPERTY_PATH:Ljava/lang/String; = "persist.sys.ui.theme.icon.path"

.field public static final THEME_PROPERTY_ENABLE:Ljava/lang/String; = "persist.sys.ui.theme.enable"

.field public static final THEME_PROPERTY_PATH:Ljava/lang/String; = "persist.sys.ui.theme.path"

.field public static final THEME_PROPERTY_USERTHEME_PATH:Ljava/lang/String; = "persist.sys.ui.usertheme.path"


# instance fields
.field mContext:Landroid/content/Context;

.field mServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/uitechno/service/BService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    .line 135
    const-string v0, "uitechnoService"

    const-string v1, "UitechnoService.UitechnoService() start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-object p1, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mContext:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIPropertyService;

    invoke-direct {v1, p1}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIThemeService;

    invoke-direct {v1, p1}, Lcom/yulong/android/uitechno/service/YLUIThemeService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIWatchService;

    invoke-direct {v1, p1}, Lcom/yulong/android/uitechno/service/YLUIWatchService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIBroadcastService;

    invoke-direct {v1, p1}, Lcom/yulong/android/uitechno/service/YLUIBroadcastService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v0, "uitechnoService"

    const-string v1, "UitechnoService.UitechnoService() end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method private static SystemProperties_set(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 6
    .param p0, "code"    # I
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .prologue
    .line 210
    const-string v3, "uitechnoService"

    const-string v4, "UitechnoService.SystemProperties_set() start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "key":Ljava/lang/String;
    const-string v3, "uitechnoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "value":Ljava/lang/String;
    const-string v3, "uitechnoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    const-string v3, "uitechnoService"

    const-string v4, "UitechnoService.SystemProperties_set() end"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "uitechnoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " itechnoService.SystemProperties_set() error == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static copyFile(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 8
    .param p0, "code"    # I
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .prologue
    .line 547
    const-string v5, "uitechnoService"

    const-string v6, "UitechnoService.copyFile() start"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "file":Ljava/lang/String;
    const-string v5, "uitechnoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "dstFile":Ljava/lang/String;
    const-string v5, "uitechnoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dstFile == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "permissionMode":Ljava/lang/String;
    const-string v5, "uitechnoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "permissionMode == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v4, 0x0

    .line 556
    .local v4, "result":Z
    if-eqz v3, :cond_0

    .line 557
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile(Ljava/io/File;Ljava/io/File;I)Z

    move-result v4

    .line 561
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v0    # "dstFile":Ljava/lang/String;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "permissionMode":Ljava/lang/String;
    .end local v4    # "result":Z
    :goto_1
    const-string v5, "uitechnoService"

    const-string v6, "UitechnoService.copyFile() end"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void

    .line 559
    .restart local v0    # "dstFile":Ljava/lang/String;
    .restart local v2    # "file":Ljava/lang/String;
    .restart local v3    # "permissionMode":Ljava/lang/String;
    .restart local v4    # "result":Z
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0

    .line 562
    .end local v0    # "dstFile":Ljava/lang/String;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "permissionMode":Ljava/lang/String;
    .end local v4    # "result":Z
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "uitechnoService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " itechnoService.copyFile() error == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 574
    const/16 v0, 0x1ed

    invoke-static {p0, p1, v0}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile(Ljava/io/File;Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;I)Z
    .locals 11
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "permissionMode"    # I

    .prologue
    .line 583
    const/4 v9, 0x1

    .line 586
    .local v9, "result":Z
    :try_start_0
    invoke-static {p1, p2}, Lcom/yulong/android/uitechno/service/UitechnoService;->mkDirForFile(Ljava/io/File;I)V

    .line 587
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 590
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 591
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v1, p2, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, "in":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 602
    .local v5, "out":Ljava/nio/channels/FileChannel;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 603
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 604
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v6

    .line 605
    .local v6, "count":J
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_1

    .line 606
    const/4 v9, 0x0

    .line 616
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 620
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    move v10, v9

    .line 624
    .end local v0    # "in":Ljava/nio/channels/FileChannel;
    .end local v5    # "out":Ljava/nio/channels/FileChannel;
    .end local v6    # "count":J
    .end local v9    # "result":Z
    .local v10, "result":I
    :goto_2
    return v10

    .line 592
    .end local v10    # "result":I
    .restart local v9    # "result":Z
    :catch_0
    move-exception v8

    .line 593
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 594
    const/4 v9, 0x0

    move v10, v9

    .line 595
    .restart local v10    # "result":I
    goto :goto_2

    .line 609
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "result":I
    .restart local v0    # "in":Ljava/nio/channels/FileChannel;
    .restart local v5    # "out":Ljava/nio/channels/FileChannel;
    .restart local v6    # "count":J
    :cond_1
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v5, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 616
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 620
    :goto_3
    :try_start_6
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_4
    move v10, v9

    .line 624
    .restart local v10    # "result":I
    goto :goto_2

    .line 610
    .end local v6    # "count":J
    .end local v10    # "result":I
    :catch_1
    move-exception v8

    .line 611
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 612
    const/4 v9, 0x0

    .line 616
    :try_start_8
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 620
    :goto_5
    :try_start_9
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :goto_6
    move v10, v9

    .line 622
    .restart local v10    # "result":I
    goto :goto_2

    .line 615
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "result":I
    :catchall_0
    move-exception v1

    .line 616
    :try_start_a
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 620
    :goto_7
    :try_start_b
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 622
    :goto_8
    throw v1

    .line 617
    .restart local v6    # "count":J
    :catch_2
    move-exception v1

    goto :goto_0

    .line 621
    :catch_3
    move-exception v1

    goto :goto_1

    .line 617
    :catch_4
    move-exception v1

    goto :goto_3

    .line 621
    :catch_5
    move-exception v1

    goto :goto_4

    .line 617
    .end local v6    # "count":J
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    goto :goto_5

    .line 621
    :catch_7
    move-exception v1

    goto :goto_6

    .line 617
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v2

    goto :goto_7

    .line 621
    :catch_9
    move-exception v2

    goto :goto_8
.end method

.method private static copyFile2Dir(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 12
    .param p0, "code"    # I
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .prologue
    .line 312
    const-string v7, "uitechnoService"

    const-string v8, "UitechnoService.copyFile2Dir() start"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "file":Ljava/lang/String;
    const-string v7, "uitechnoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "dstFile":Ljava/lang/String;
    const-string v7, "uitechnoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dstFile == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "ifOverride":Ljava/lang/String;
    const-string v7, "uitechnoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ifOverride == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "ifContainRootDir":Ljava/lang/String;
    const-string v7, "uitechnoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ifContainRootDir == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "permissionMode":Ljava/lang/String;
    const-string v7, "uitechnoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "permissionMode == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v6, 0x0

    .line 325
    .local v6, "result":Z
    if-eqz v5, :cond_0

    .line 326
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile2Dir(Ljava/io/File;Ljava/io/File;ZZI)Z

    move-result v6

    .line 330
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v0    # "dstFile":Ljava/lang/String;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "ifContainRootDir":Ljava/lang/String;
    .end local v4    # "ifOverride":Ljava/lang/String;
    .end local v5    # "permissionMode":Ljava/lang/String;
    .end local v6    # "result":Z
    :goto_1
    const-string v7, "uitechnoService"

    const-string v8, "UitechnoService.copyFile2Dir() end"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void

    .line 328
    .restart local v0    # "dstFile":Ljava/lang/String;
    .restart local v2    # "file":Ljava/lang/String;
    .restart local v3    # "ifContainRootDir":Ljava/lang/String;
    .restart local v4    # "ifOverride":Ljava/lang/String;
    .restart local v5    # "permissionMode":Ljava/lang/String;
    .restart local v6    # "result":Z
    :cond_0
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile2Dir(Ljava/io/File;Ljava/io/File;ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_0

    .line 331
    .end local v0    # "dstFile":Ljava/lang/String;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "ifContainRootDir":Ljava/lang/String;
    .end local v4    # "ifOverride":Ljava/lang/String;
    .end local v5    # "permissionMode":Ljava/lang/String;
    .end local v6    # "result":Z
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "uitechnoService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " itechnoService.copyFile2Dir() error == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static copyFile2Dir(Ljava/io/File;Ljava/io/File;ZZ)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "dstPath"    # Ljava/io/File;
    .param p2, "ifOverride"    # Z
    .param p3, "ifContainRootDir"    # Z

    .prologue
    .line 488
    const/16 v0, 0x1ed

    invoke-static {p0, p1, p2, p3, v0}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile2Dir(Ljava/io/File;Ljava/io/File;ZZI)Z

    move-result v0

    return v0
.end method

.method public static copyFile2Dir(Ljava/io/File;Ljava/io/File;ZZI)Z
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "dstPath"    # Ljava/io/File;
    .param p2, "ifOverride"    # Z
    .param p3, "ifContainRootDir"    # Z
    .param p4, "permissionMode"    # I

    .prologue
    .line 499
    const/4 v6, 0x1

    .line 501
    .local v6, "result":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 502
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 503
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v7, p4, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 506
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 507
    const/4 v7, 0x0

    .line 543
    :goto_0
    return v7

    .line 510
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v2, "dstFile":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    .line 513
    if-nez p2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 515
    const/4 v7, 0x1

    goto :goto_0

    .line 517
    :cond_2
    invoke-static {p0, v2, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile(Ljava/io/File;Ljava/io/File;I)Z

    move-result v6

    move v7, v6

    .line 518
    goto :goto_0

    .line 522
    :cond_3
    if-eqz p3, :cond_6

    .line 524
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 525
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v6

    .line 526
    if-nez v6, :cond_4

    .line 527
    const/4 v7, 0x0

    goto :goto_0

    .line 529
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v7, p4, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 536
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 537
    .local v3, "fileArray":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_8

    aget-object v1, v0, v4

    .line 538
    .local v1, "childFile":Ljava/io/File;
    const/4 v7, 0x1

    invoke-static {v1, v2, p2, v7, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile2Dir(Ljava/io/File;Ljava/io/File;ZZI)Z

    move-result v6

    .line 539
    if-nez v6, :cond_7

    .line 540
    const/4 v7, 0x0

    goto :goto_0

    .line 533
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "childFile":Ljava/io/File;
    .end local v3    # "fileArray":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_6
    move-object v2, p1

    goto :goto_1

    .line 537
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "childFile":Ljava/io/File;
    .restart local v3    # "fileArray":[Ljava/io/File;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1    # "childFile":Ljava/io/File;
    :cond_8
    move v7, v6

    .line 543
    goto :goto_0
.end method

.method private static deleteFile(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 5
    .param p0, "code"    # I
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .prologue
    .line 260
    const-string v2, "uitechnoService"

    const-string v3, "UitechnoService.deleteFile() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "file":Ljava/lang/String;
    const-string v2, "uitechnoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/yulong/android/uitechno/service/UitechnoService;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "file":Ljava/lang/String;
    :goto_0
    const-string v2, "uitechnoService"

    const-string v3, "UitechnoService.deleteFile() end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "uitechnoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " itechnoService.deleteFile() error == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 467
    const-string v5, "uitechnoService"

    const-string v6, "UitechnoService.deleteFile(1) start"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 469
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 477
    :goto_0
    const-string v5, "uitechnoService"

    const-string v6, "UitechnoService.deleteFile(1) end"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void

    .line 471
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 472
    .local v4, "subFiles":[Ljava/io/File;
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 473
    .local v3, "subFile":Ljava/io/File;
    invoke-static {v3}, Lcom/yulong/android/uitechno/service/UitechnoService;->deleteFile(Ljava/io/File;)V

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 475
    .end local v3    # "subFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static getParcelFileDescriptor(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 7
    .param p0, "code"    # I
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .prologue
    .line 232
    const-string v4, "uitechnoService"

    const-string v5, "UitechnoService.getParcelFileDescriptor() start"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "path":Ljava/lang/String;
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 249
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 240
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_0
    const/high16 v4, 0x38000000

    invoke-static {v2, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 241
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 242
    const-string v4, "uitechnoService"

    const-string v5, "ParcelFileDescriptor != null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v4, 0x1

    invoke-virtual {p2, v1, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v4, "uitechnoService"

    const-string v5, "UitechnoService.getParcelFileDescriptor() end"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " itechnoService.getParcelFileDescriptor() error == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static mkDirForFile(Ljava/io/File;I)V
    .locals 7
    .param p0, "destFile"    # Ljava/io/File;
    .param p1, "permissionMode"    # I

    .prologue
    .line 634
    move-object v3, p0

    .line 635
    .local v3, "parentFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 637
    .local v2, "needCreateparentFileList":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 638
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 643
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 644
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 645
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 646
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v4, p1, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 649
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "needCreateparentFileList":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 652
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 641
    .restart local v2    # "needCreateparentFileList":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static setFont(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 5
    .param p0, "code"    # I
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .prologue
    .line 351
    const-string v2, "uitechnoService"

    const-string v3, "UitechnoService.setFont() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "fontPath":Ljava/lang/String;
    const-string v2, "uitechnoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fontPath == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {v0}, Lcom/yulong/android/uitechno/service/UitechnoService;->setFont(Ljava/lang/String;)Z

    move-result v1

    .line 355
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    const-string v2, "uitechnoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UitechnoService.setFont() end result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method public static setFont(Ljava/lang/String;)Z
    .locals 8
    .param p0, "fontPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 361
    :try_start_0
    const-string v3, "com.yulong.android.font.FontUtil"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 362
    .local v0, "classObject":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setDefaultFontAndRefresh"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 363
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 367
    .end local v0    # "classObject":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFont e == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 367
    goto :goto_0
.end method

.method private static unzipFile(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 7
    .param p0, "code"    # I
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .prologue
    .line 281
    const-string v4, "uitechnoService"

    const-string v5, "UitechnoService.unZipFile() start"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "zip":Ljava/lang/String;
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zip == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "dstPath":Ljava/lang/String;
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dstPath == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/yulong/android/uitechno/service/UitechnoService;->unzipFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 288
    .local v2, "result":Z
    if-eqz v2, :cond_0

    .line 289
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "dstPath":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "zip":Ljava/lang/String;
    :goto_0
    const-string v4, "uitechnoService"

    const-string v5, "UitechnoService.unZipFile() end"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 291
    .restart local v0    # "dstPath":Ljava/lang/String;
    .restart local v2    # "result":Z
    .restart local v3    # "zip":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 293
    .end local v0    # "dstPath":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "zip":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 298
    :goto_1
    const-string v4, "uitechnoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " itechnoService.unZipFile() error == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "dstPath"    # Ljava/io/File;

    .prologue
    .line 377
    const/16 v0, 0x1ed

    invoke-static {p0, p1, v0}, Lcom/yulong/android/uitechno/service/UitechnoService;->unzipFile(Ljava/io/File;Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;I)Z
    .locals 16
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "dstPath"    # Ljava/io/File;
    .param p2, "permissionMode"    # I

    .prologue
    .line 388
    const-string v13, "uitechnoService"

    const-string v14, "UitechnoService.unZipFile(2) start"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v13, "uitechnoService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "zip == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v13, "uitechnoService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dstPath == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v11, 0x0

    .line 392
    .local v11, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v5, 0x0

    .line 393
    .local v5, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 395
    .local v6, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 396
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdirs()Z

    .line 398
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    const/4 v15, -0x1

    move/from16 v0, p2

    invoke-static {v13, v0, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 399
    new-instance v12, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v9

    .line 401
    .local v9, "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const/4 v10, 0x0

    .line 402
    .local v10, "zipEntry":Ljava/util/zip/ZipEntry;
    const/16 v13, 0x5000

    new-array v1, v13, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v1, "buffer":[B
    move-object v7, v6

    .line 403
    .end local v6    # "os":Ljava/io/OutputStream;
    .local v7, "os":Ljava/lang/Object;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 404
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    check-cast v10, Ljava/util/zip/ZipEntry;

    .line 405
    .restart local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    new-instance v4, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 407
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 408
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    const/4 v15, -0x1

    move/from16 v0, p2

    invoke-static {v13, v0, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 434
    .end local v4    # "file":Ljava/io/File;
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    move-object v6, v7

    .restart local v6    # "os":Ljava/io/OutputStream;
    move-object v11, v12

    .line 435
    .end local v1    # "buffer":[B
    .end local v7    # "os":Ljava/lang/Object;
    .end local v9    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_3
    const-string v13, "uitechnoService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " itechnoService.unZipFile(2) error == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    const/4 v13, 0x0

    .line 438
    if-eqz v5, :cond_1

    .line 440
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 444
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 446
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 450
    :cond_2
    :goto_3
    if-eqz v11, :cond_3

    .line 452
    :try_start_6
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 458
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    return v13

    .line 411
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "buffer":[B
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "os":Ljava/lang/Object;
    .restart local v9    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 412
    .local v8, "parentFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_5

    .line 413
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 414
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    const/4 v15, -0x1

    move/from16 v0, p2

    invoke-static {v13, v0, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 417
    :cond_5
    invoke-virtual {v12, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 418
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 419
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    const/4 v15, -0x1

    move/from16 v0, p2

    invoke-static {v13, v0, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 420
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 422
    .end local v7    # "os":Ljava/lang/Object;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :goto_5
    :try_start_8
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 423
    .local v2, "count":I
    if-gtz v2, :cond_6

    .line 429
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 430
    const/4 v5, 0x0

    .line 431
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 432
    const/4 v6, 0x0

    move-object v7, v6

    .line 433
    .restart local v7    # "os":Ljava/lang/Object;
    goto/16 :goto_0

    .line 426
    .end local v7    # "os":Ljava/lang/Object;
    :cond_6
    const/4 v13, 0x0

    invoke-virtual {v6, v1, v13, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 427
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 434
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "parentFile":Ljava/io/File;
    .end local v9    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v3

    move-object v11, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 438
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "buffer":[B
    .restart local v7    # "os":Ljava/lang/Object;
    .restart local v9    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_7
    if-eqz v5, :cond_8

    .line 440
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 444
    :cond_8
    :goto_6
    if-eqz v7, :cond_9

    .line 446
    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 450
    :cond_9
    :goto_7
    if-eqz v12, :cond_a

    .line 452
    :try_start_b
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 457
    :cond_a
    :goto_8
    const-string v13, "uitechnoService"

    const-string v14, "UitechnoService.unZipFile(2) end"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v13, 0x1

    move-object v6, v7

    .restart local v6    # "os":Ljava/io/OutputStream;
    move-object v11, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 438
    .end local v1    # "buffer":[B
    .end local v7    # "os":Ljava/lang/Object;
    .end local v9    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v13

    :goto_9
    if-eqz v5, :cond_b

    .line 440
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 444
    :cond_b
    :goto_a
    if-eqz v6, :cond_c

    .line 446
    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 450
    :cond_c
    :goto_b
    if-eqz v11, :cond_d

    .line 452
    :try_start_e
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 454
    :cond_d
    :goto_c
    throw v13

    .line 441
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "buffer":[B
    .restart local v7    # "os":Ljava/lang/Object;
    .restart local v9    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v13

    goto :goto_6

    .line 447
    :catch_3
    move-exception v13

    goto :goto_7

    .line 453
    :catch_4
    move-exception v13

    goto :goto_8

    .line 441
    .end local v1    # "buffer":[B
    .end local v7    # "os":Ljava/lang/Object;
    .end local v9    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v14

    goto/16 :goto_2

    .line 447
    :catch_6
    move-exception v14

    goto/16 :goto_3

    .line 453
    :catch_7
    move-exception v14

    goto/16 :goto_4

    .line 441
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v14

    goto :goto_a

    .line 447
    :catch_9
    move-exception v14

    goto :goto_b

    .line 453
    :catch_a
    move-exception v14

    goto :goto_c

    .line 438
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_9

    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "buffer":[B
    .restart local v7    # "os":Ljava/lang/Object;
    .restart local v9    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v13

    move-object v6, v7

    .restart local v6    # "os":Ljava/io/OutputStream;
    move-object v11, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_9

    .line 434
    .end local v1    # "buffer":[B
    .end local v7    # "os":Ljava/lang/Object;
    .end local v9    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catch_b
    move-exception v3

    goto/16 :goto_1
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 163
    sparse-switch p1, :sswitch_data_0

    .line 189
    :try_start_0
    iget-object v4, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/uitechno/service/BService;

    .line 190
    .local v2, "service":Lcom/yulong/android/uitechno/service/BService;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/BService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "service":Lcom/yulong/android/uitechno/service/BService;
    :goto_0
    return v3

    .line 165
    :sswitch_0
    const-string v4, "com.yulong.android.uitechno.service.UitechnoService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "uitechnoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTransact() error == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_0

    .line 168
    :sswitch_1
    :try_start_1
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->SystemProperties_set(ILandroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 171
    :sswitch_2
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->getParcelFileDescriptor(ILandroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 174
    :sswitch_3
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->deleteFile(ILandroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 177
    :sswitch_4
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->unzipFile(ILandroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 180
    :sswitch_5
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile2Dir(ILandroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 183
    :sswitch_6
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->setFont(ILandroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 186
    :sswitch_7
    invoke-static {p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/UitechnoService;->copyFile(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 149
    const-string v2, "uitechnoService"

    const-string v3, "UitechnoService.systemReady() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/yulong/android/uitechno/service/UitechnoService;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/uitechno/service/BService;

    .line 151
    .local v1, "service":Lcom/yulong/android/uitechno/service/BService;
    invoke-virtual {v1}, Lcom/yulong/android/uitechno/service/BService;->systemReady()V

    goto :goto_0

    .line 153
    .end local v1    # "service":Lcom/yulong/android/uitechno/service/BService;
    :cond_0
    const-string v2, "uitechnoService"

    const-string v3, "UitechnoService.systemReady() end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method
