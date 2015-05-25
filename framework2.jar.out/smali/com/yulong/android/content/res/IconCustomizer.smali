.class public Lcom/yulong/android/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/content/res/IconCustomizer$IconConfig;,
        Lcom/yulong/android/content/res/IconCustomizer$CustomizedIconsListener;
    }
.end annotation


# static fields
.field private static final COOLLIFE_BUILT_IN_ICONS:Ljava/lang/String; = "/system/media/theme/coollife_ui_icons/"

.field private static final COOLLIFE_THEME_ICONS:Ljava/lang/String; = "/data/data/theme/icon/"

.field private static final DEBUG_ICONS:Z = false

.field private static final TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final defaultRunMode:Ljava/lang/String;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sCanvasForTransformBitmap:Landroid/graphics/Canvas;

.field public static sCustomizedIconHeight:I

.field public static sCustomizedIconWidth:I

.field private static sDensity:I

.field private static sIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPaintForTransformBitmap:Landroid/graphics/Paint;

.field private static final sSystemResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 52
    sput v0, Lcom/yulong/android/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 53
    sput v0, Lcom/yulong/android/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 54
    sput v0, Lcom/yulong/android/content/res/IconCustomizer;->sDensity:I

    .line 59
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    .line 60
    const-string v0, "persist.yulong.comm.runmode"

    const-string v1, "0000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/content/res/IconCustomizer;->defaultRunMode:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/yulong/android/content/res/IconCustomizer;->sDensity:I

    .line 70
    invoke-static {}, Lcom/yulong/android/content/res/IconCustomizer;->getIconSize()I

    move-result v0

    sput v0, Lcom/yulong/android/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 71
    invoke-static {}, Lcom/yulong/android/content/res/IconCustomizer;->getIconSize()I

    move-result v0

    sput v0, Lcom/yulong/android/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 72
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 73
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    .line 78
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.settings.png"

    const-string v2, "com_android_settings_settings.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.settings.wifi.png"

    const-string v2, "com_android_settings_wifi_wifisettings.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.browser.png"

    const-string v2, "com_android_browser_browseractivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.email.png"

    const-string v2, "com_android_email_activity_welcome.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.mms.png"

    const-string v2, "com_yulong_android_mms_ui_mmsmainlistformactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.contacts.png"

    const-string v2, "com_yulong_android_contacts_ui_main_contactmainactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.gallery3d.png"

    const-string v2, "com_android_gallery3d_app_gallery.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.coolwind.png"

    const-string v2, "com_funambol_android_activities_coolwinlauncheractivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.tencent.mm.png"

    const-string v2, "com_tencent_mm_ui_launcherui.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sina.weibo.png"

    const-string v2, "com_sina_weibo_splashactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.coolpad.music.png"

    const-string v2, "com_android_music_musicplayertab.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.quicinc.fmradio.png"

    const-string v2, "com_broadcom_bt_app_fm_rx_fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.nfcwrite.png"

    const-string v2, "com_yulong_nfcwrite_nfcwriteloadingactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.icoolme.android.weather.png"

    const-string v2, "com_icoolme_android_weather_activity_smartweatheractivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.callhistory.png"

    const-string v2, "com_yulong_android_recentcalls_activity_tabhostactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.filebrowser.png"

    const-string v2, "com_yulong_android_filebrowser_activity_filebrowseractivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.contacts.png"

    const-string v2, "com_yulong_android_contacts_ui_main_contactmainactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.settings.png"

    const-string v2, "com_android_settings_settings.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.bugreport.client.png"

    const-string v2, "com_yulong_android_bugreport_client_menu_bugreportfeedbackgrid.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.softmanager.png"

    const-string v2, "com_yulong_android_seccenter_tabbarmain.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.ota.png"

    const-string v2, "com_yulong_android_ota_ui_mainactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.dev.gcoption.png"

    const-string v2, "com_yulong_android_roamingsettings_internationalroamingsettingsactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.memo.png"

    const-string v2, "com_yulong_android_coolmemo_ui_coolmemoactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.videoplayer.png"

    const-string v2, "com_android_gallery3d_app_galleryforvideo.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.bluetoothpbap.png"

    const-string v2, "com_android_bluetoothpbap_bluetoothpbapvcardactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.calculator2.png"

    const-string v2, "com_android_calculator2_calculator.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.mirror.png"

    const-string v2, "com_android_mirror_mirror.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.quicksearchbox.png"

    const-string v2, "com_android_quicksearchbox_searchactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.flashlight.png"

    const-string v2, "com_android_flashlight_flashlight.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.calendar.png"

    const-string v2, "com_yulong_android_calendar_ui_base_launchactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.backup.png"

    const-string v2, "com_yulong_android_backup_ui_mainactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.contacts.dial.png"

    const-string v2, "com_yulong_android_contacts_dial_dialactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.adscription.png"

    const-string v2, "com_yulong_android_adscription_adscriptionactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.soundrecorder.png"

    const-string v2, "com_yulong_android_soundrecorder_cp_soundrecorder.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.xtime.png"

    const-string v2, "yulong_xtime_ui_main_xtimeactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.telecomservice.png"

    const-string v2, "com_yulong_android_customerservice_loadingactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.show.retailmode.png"

    const-string v2, "com_yulong_android_retailmode_choosemodeactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.appstock.png"

    const-string v2, "com_yulong_android_appstock_framework_declare_uideclareactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.quickdial.png"

    const-string v2, "com_yulong_android_quickdial_quickdialmainactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.cp_utk.png"

    const-string v2, "com_yulong_android_cp_utk_utklauncheractivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.stk.png"

    const-string v2, "com_android_stk_stklauncheractivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.coolmap.BlankActivity.png"

    const-string v2, "com_yulong_android_coolmap_blankactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.coolmap.BlankNaviActivity.png"

    const-string v2, "com_yulong_android_coolmap_blanknaviactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.coolmap.MainMapActivity.png"

    const-string v2, "com_yulong_android_coolmap_mainmapactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.wo.png"

    const-string v2, "com_yulong_android_wo.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.seccenter.png"

    const-string v2, "com_yulong_android_seccenter_tabbarmain.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.yulong.android.coolshow.png"

    const-string v2, "com_yulong_android_coolshow_app_coolshowactivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.camera.png"

    const-string v2, "com_android_camera_camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconFilter:Ljava/util/Map;

    .line 128
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconFilter:Ljava/util/Map;

    const-string v1, "com.android.gallery3d.app.Wallpaper"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconFilter:Ljava/util/Map;

    const-string v1, "com.android.gallery3d.app.KeyGuardWallpaper"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sIconFilter:Ljava/util/Map;

    const-string v1, "com.android.gallery3d.app.LauncherMenuWallpaper"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/yulong/android/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    return-void
.end method

.method public static checkModIconsTimestamp()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public static clearCache()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 0
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 405
    return-void
.end method

.method private static colorToRGB(I[I)V
    .locals 2
    .param p0, "paramInt"    # I
    .param p1, "paramArrayOfInt"    # [I

    .prologue
    .line 443
    const/4 v0, 0x0

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    aput v1, p1, v0

    .line 444
    const/4 v0, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    aput v1, p1, v0

    .line 445
    const/4 v0, 0x2

    and-int/lit16 v1, p0, 0xff

    aput v1, p1, v0

    .line 446
    return-void
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "paramBitmap1"    # Landroid/graphics/Bitmap;
    .param p1, "paramBitmap2"    # Landroid/graphics/Bitmap;
    .param p2, "paramBitmap3"    # Landroid/graphics/Bitmap;
    .param p3, "paramBitmap4"    # Landroid/graphics/Bitmap;
    .param p4, "paramBitmap5"    # Landroid/graphics/Bitmap;

    .prologue
    .line 451
    sget v1, Lcom/yulong/android/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v2, Lcom/yulong/android/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 453
    .local v0, "localBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private static composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "paramString1"    # Ljava/lang/String;
    .param p2, "paramString2"    # Ljava/lang/String;
    .param p3, "paramString3"    # Ljava/lang/String;
    .param p4, "paramString4"    # Ljava/lang/String;

    .prologue
    .line 459
    const/4 v0, 0x0

    return-object v0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "paramDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "paramFloat"    # F

    .prologue
    .line 464
    const/4 v0, 0x0

    return-object v0
.end method

.method private static ensureIconConfigLoaded()V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "paramDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yulong/android/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "paramDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "paramBitmap1"    # Landroid/graphics/Bitmap;
    .param p2, "paramBitmap2"    # Landroid/graphics/Bitmap;
    .param p3, "paramBitmap3"    # Landroid/graphics/Bitmap;
    .param p4, "paramBitmap4"    # Landroid/graphics/Bitmap;
    .param p5, "paramBoolean"    # Z

    .prologue
    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "paramDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 420
    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "paramDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getContentRatio(Landroid/graphics/drawable/Drawable;)F
    .locals 1
    .param p0, "paramDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 474
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static getCoolLifeModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 333
    const/4 v2, 0x0

    .line 334
    .local v2, "themeFile":Ljava/io/File;
    invoke-static {}, Lcom/yulong/android/content/res/IconCustomizer;->getYLThemePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 335
    new-instance v2, Ljava/io/File;

    .end local v2    # "themeFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yulong/android/content/res/IconCustomizer;->getYLThemePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/icon/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .restart local v2    # "themeFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 345
    .local v0, "bExit":Z
    const/4 v1, 0x0

    .line 346
    .local v1, "localBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/yulong/android/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 349
    :cond_1
    return-object v1
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "localArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/yulong/android/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pItemName"    # Ljava/lang/String;
    .param p3, "paramDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 185
    sget-object v1, Lcom/yulong/android/content/res/IconCustomizer;->sIconFilter:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    .line 196
    :cond_0
    invoke-static {p1, p2}, Lcom/yulong/android/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "iconNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-static {p0, v0, p3, v1}, Lcom/yulong/android/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pItemName"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p0, p1}, Lcom/yulong/android/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yulong/android/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "paramDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "paramBoolean"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Z)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 211
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Lcom/yulong/android/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 213
    .local v2, "localBitmapDrawable1":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_0

    .line 234
    .end local v2    # "localBitmapDrawable1":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v2

    .line 216
    .restart local v2    # "localBitmapDrawable1":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    const/4 v3, 0x0

    .line 218
    .local v3, "localBitmapDrawable2":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v3, :cond_2

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "localBitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    .line 221
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 222
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/yulong/android/content/res/IconCustomizer;->getCoolLifeModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    .end local v0    # "j":I
    :cond_1
    invoke-static {v1}, Lcom/yulong/android/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 228
    .end local v1    # "localBitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v3, :cond_3

    .line 229
    sget-object v6, Lcom/yulong/android/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v6

    .line 230
    :try_start_0
    sget-object v5, Lcom/yulong/android/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    monitor-exit v6

    :cond_3
    move-object v2, v3

    .line 234
    goto :goto_0

    .line 231
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private static getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-object v2, Lcom/yulong/android/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v2

    .line 244
    :try_start_0
    sget-object v1, Lcom/yulong/android/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 247
    .local v0, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/yulong/android/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    monitor-exit v2

    .line 251
    :goto_0
    return-object v1

    .line 250
    :cond_0
    monitor-exit v2

    .line 251
    const/4 v1, 0x0

    goto :goto_0

    .line 250
    .end local v0    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/customized_icons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "str":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v2, "localFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 432
    .local v0, "bool":Z
    const/4 v1, 0x0

    .line 433
    .local v1, "localBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 434
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 435
    if-nez v1, :cond_0

    .line 436
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 438
    :cond_0
    invoke-static {v1}, Lcom/yulong/android/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    return-object v4
.end method

.method private static getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p0, "paramBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 260
    if-nez p0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/yulong/android/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static getEdgePosition(Landroid/graphics/Bitmap;ZZ)I
    .locals 1
    .param p0, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "paramBoolean1"    # Z
    .param p2, "paramBoolean2"    # Z

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method private static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pItemName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    if-nez p1, :cond_0

    .line 299
    const-string v0, "%s.png"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s.png"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pItemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "localArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/yulong/android/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "str1":Ljava/lang/String;
    sget-object v3, Lcom/yulong/android/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    .local v2, "str2":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 278
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    if-eqz p1, :cond_2

    .line 283
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 284
    const-string v3, "%s.png"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_1
    const-string v3, "%s.png"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_2
    return-object v0
.end method

.method private static getIconSize()I
    .locals 2

    .prologue
    .line 141
    sget v1, Lcom/yulong/android/content/res/IconCustomizer;->sDensity:I

    sparse-switch v1, :sswitch_data_0

    .line 144
    sget v1, Lcom/yulong/android/content/res/IconCustomizer;->sDensity:I

    mul-int/lit8 v1, v1, 0x5a

    div-int/lit16 v0, v1, 0xf0

    .line 145
    .local v0, "i":I
    rem-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v0

    .line 150
    :goto_0
    return v1

    .line 147
    .end local v0    # "i":I
    :sswitch_0
    const/16 v1, 0xcc

    goto :goto_0

    .line 150
    :sswitch_1
    const/16 v1, 0x88

    goto :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_0
    .end sparse-switch
.end method

.method static getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F
    .locals 1
    .param p0, "paramDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 370
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static getYLThemePath()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 319
    const-string v2, "persist.sys.ui.theme.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 320
    .local v0, "themeAvailable":Z
    if-eqz v0, :cond_0

    .line 321
    const-string v2, "persist.sys.ui.theme.path"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    :cond_0
    return-object v1
.end method

.method private static makeIconMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 490
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 491
    .local v0, "localMatrix":Landroid/graphics/Matrix;
    return-object v0
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;)V
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yulong/android/content/res/IconCustomizer;->prepareCustomizedIcons(Landroid/content/Context;Lcom/yulong/android/content/res/IconCustomizer$CustomizedIconsListener;)V

    .line 375
    return-void
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;Lcom/yulong/android/content/res/IconCustomizer$CustomizedIconsListener;)V
    .locals 0
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramCustomizedIconsListener"    # Lcom/yulong/android/content/res/IconCustomizer$CustomizedIconsListener;

    .prologue
    .line 379
    return-void
.end method

.method private static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 0
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 383
    return-void
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;
    .param p2, "paramDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 387
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 388
    invoke-static {p0, p1}, Lcom/yulong/android/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "paramDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/yulong/android/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 390
    :cond_0
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "paramBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 358
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/yulong/android/content/res/IconCustomizer;->sCustomizedIconWidth:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/yulong/android/content/res/IconCustomizer;->sCustomizedIconHeight:I

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v0, p0

    .line 365
    :goto_0
    return-object v0

    .line 363
    :cond_1
    sget v1, Lcom/yulong/android/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v2, Lcom/yulong/android/content/res/IconCustomizer;->sCustomizedIconHeight:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 364
    .local v0, "localBitmap":Landroid/graphics/Bitmap;
    sget v1, Lcom/yulong/android/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method

.method private static setHue(IF[I)I
    .locals 1
    .param p0, "paramInt"    # I
    .param p1, "paramFloat"    # F
    .param p2, "paramArrayOfInt"    # [I

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method private static setSaturation(IF[I)I
    .locals 1
    .param p0, "paramInt"    # I
    .param p1, "paramFloat"    # F
    .param p2, "paramArrayOfInt"    # [I

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method private static setValue(IF[I)I
    .locals 1
    .param p0, "paramInt"    # I
    .param p1, "paramFloat"    # F
    .param p2, "paramArrayOfInt"    # [I

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method private static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "paramMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 513
    .local v0, "localBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 514
    sget-object v1, Lcom/yulong/android/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 515
    sget-object v1, Lcom/yulong/android/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    sget-object v2, Lcom/yulong/android/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 516
    return-object v0
.end method
