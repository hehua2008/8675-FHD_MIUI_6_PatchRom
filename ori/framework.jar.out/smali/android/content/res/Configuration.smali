.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration;

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final MNC_ZERO:I = 0xffff

.field public static final NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final NATIVE_CONFIG_MCC:I = 0x1

.field public static final NATIVE_CONFIG_MNC:I = 0x2

.field public static final NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final NATIVE_CONFIG_VERSION:I = 0x400

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final ROOT_DIR:Ljava/lang/String; = "/system"

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Configuration"

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I


# instance fields
.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public defaultFontName:Ljava/lang/String;

.field public densityDpi:I

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public smallestScreenWidthDp:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1282
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 613
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 614
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "o"    # Landroid/content/res/Configuration;

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this.defaultFontName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 625
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 626
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1297
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 1298
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/res/Configuration$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 1
    .param p0, "screenLayout"    # I

    .prologue
    .line 1458
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static needNewResources(II)Z
    .locals 1
    .param p0, "configChanges"    # I
    .param p1, "interestingChanges"    # I

    .prologue
    .line 1162
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v0, p1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reduceScreenLayout(III)I
    .locals 6
    .param p0, "curLayout"    # I
    .param p1, "longSizeDp"    # I
    .param p2, "shortSizeDp"    # I

    .prologue
    .line 223
    const/16 v4, 0x1d6

    if-ge p1, v4, :cond_3

    .line 226
    const/4 v3, 0x1

    .line 227
    .local v3, "screenLayoutSize":I
    const/4 v2, 0x0

    .line 228
    .local v2, "screenLayoutLong":Z
    const/4 v1, 0x0

    .line 263
    .local v1, "screenLayoutCompatNeeded":Z
    :goto_0
    if-nez v2, :cond_0

    .line 264
    and-int/lit8 v4, p0, -0x31

    or-int/lit8 p0, v4, 0x10

    .line 266
    :cond_0
    if-eqz v1, :cond_1

    .line 267
    const/high16 v4, 0x10000000

    or-int/2addr p0, v4

    .line 269
    :cond_1
    and-int/lit8 v0, p0, 0xf

    .line 270
    .local v0, "curSize":I
    if-ge v3, v0, :cond_2

    .line 271
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v3

    .line 273
    :cond_2
    return p0

    .line 231
    .end local v0    # "curSize":I
    .end local v1    # "screenLayoutCompatNeeded":Z
    .end local v2    # "screenLayoutLong":Z
    .end local v3    # "screenLayoutSize":I
    :cond_3
    const/16 v4, 0x3c0

    if-lt p1, v4, :cond_5

    const/16 v4, 0x2d0

    if-lt p2, v4, :cond_5

    .line 234
    const/4 v3, 0x4

    .line 246
    .restart local v3    # "screenLayoutSize":I
    :goto_1
    const/16 v4, 0x141

    if-gt p2, v4, :cond_4

    const/16 v4, 0x23a

    if-le p1, v4, :cond_7

    .line 247
    :cond_4
    const/4 v1, 0x1

    .line 253
    .restart local v1    # "screenLayoutCompatNeeded":Z
    :goto_2
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, p2, -0x1

    if-lt v4, v5, :cond_8

    .line 255
    const/4 v2, 0x1

    .restart local v2    # "screenLayoutLong":Z
    goto :goto_0

    .line 235
    .end local v1    # "screenLayoutCompatNeeded":Z
    .end local v2    # "screenLayoutLong":Z
    .end local v3    # "screenLayoutSize":I
    :cond_5
    const/16 v4, 0x280

    if-lt p1, v4, :cond_6

    const/16 v4, 0x1e0

    if-lt p2, v4, :cond_6

    .line 238
    const/4 v3, 0x3

    .restart local v3    # "screenLayoutSize":I
    goto :goto_1

    .line 240
    .end local v3    # "screenLayoutSize":I
    :cond_6
    const/4 v3, 0x2

    .restart local v3    # "screenLayoutSize":I
    goto :goto_1

    .line 249
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "screenLayoutCompatNeeded":Z
    goto :goto_2

    .line 257
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "screenLayoutLong":Z
    goto :goto_0
.end method

.method public static resetScreenLayout(I)I
    .locals 1
    .param p0, "curLayout"    # I

    .prologue
    .line 208
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 9
    .param p1, "that"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1302
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1303
    .local v0, "a":F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1307
    .local v1, "b":F
    iget-object v2, p1, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 1308
    .local v2, "fontA":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 1309
    .local v3, "fontB":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, "/system"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1310
    const/4 v2, 0x0

    .line 1312
    :cond_0
    if-eqz v3, :cond_1

    const-string v7, "/system"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1313
    const/4 v3, 0x0

    .line 1315
    :cond_1
    if-eq v2, v3, :cond_5

    .line 1316
    if-nez v2, :cond_3

    move v4, v5

    .line 1372
    :cond_2
    :goto_0
    return v4

    .line 1319
    :cond_3
    if-nez v3, :cond_4

    move v4, v6

    .line 1320
    goto :goto_0

    .line 1322
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1323
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1328
    :cond_5
    cmpg-float v7, v0, v1

    if-gez v7, :cond_6

    move v4, v5

    goto :goto_0

    .line 1329
    :cond_6
    cmpl-float v7, v0, v1

    if-lez v7, :cond_7

    move v4, v6

    goto :goto_0

    .line 1330
    :cond_7
    iget v7, p0, Landroid/content/res/Configuration;->mcc:I

    iget v8, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int v4, v7, v8

    .line 1331
    .local v4, "n":I
    if-nez v4, :cond_2

    .line 1332
    iget v7, p0, Landroid/content/res/Configuration;->mnc:I

    iget v8, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int v4, v7, v8

    .line 1333
    if-nez v4, :cond_2

    .line 1334
    iget-object v7, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v7, :cond_8

    .line 1335
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v5, :cond_a

    move v4, v6

    goto :goto_0

    .line 1336
    :cond_8
    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v6, :cond_9

    move v4, v5

    .line 1337
    goto :goto_0

    .line 1339
    :cond_9
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 1340
    if-nez v4, :cond_2

    .line 1341
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 1342
    if-nez v4, :cond_2

    .line 1343
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 1344
    if-nez v4, :cond_2

    .line 1346
    :cond_a
    iget v5, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int v4, v5, v6

    .line 1347
    if-nez v4, :cond_2

    .line 1348
    iget v5, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int v4, v5, v6

    .line 1349
    if-nez v4, :cond_2

    .line 1350
    iget v5, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int v4, v5, v6

    .line 1351
    if-nez v4, :cond_2

    .line 1352
    iget v5, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int v4, v5, v6

    .line 1353
    if-nez v4, :cond_2

    .line 1354
    iget v5, p0, Landroid/content/res/Configuration;->navigation:I

    iget v6, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int v4, v5, v6

    .line 1355
    if-nez v4, :cond_2

    .line 1356
    iget v5, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int v4, v5, v6

    .line 1357
    if-nez v4, :cond_2

    .line 1358
    iget v5, p0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int v4, v5, v6

    .line 1359
    if-nez v4, :cond_2

    .line 1360
    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int v4, v5, v6

    .line 1361
    if-nez v4, :cond_2

    .line 1362
    iget v5, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int v4, v5, v6

    .line 1363
    if-nez v4, :cond_2

    .line 1364
    iget v5, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int v4, v5, v6

    .line 1365
    if-nez v4, :cond_2

    .line 1366
    iget v5, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int v4, v5, v6

    .line 1367
    if-nez v4, :cond_2

    .line 1368
    iget v5, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int v4, v5, v6

    .line 1369
    if-nez v4, :cond_2

    .line 1370
    iget v5, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int v4, v5, v6

    .line 1372
    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 6
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .prologue
    .line 1054
    const/4 v0, 0x0

    .line 1057
    .local v0, "changed":I
    iget-object v2, p1, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 1058
    .local v2, "fontDelta":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 1059
    .local v3, "fontOrg":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "/system"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1060
    const/4 v2, 0x0

    .line 1062
    :cond_0
    if-eqz v3, :cond_1

    const-string v4, "/system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1063
    const/4 v3, 0x0

    .line 1065
    :cond_1
    if-eq v3, v2, :cond_3

    .line 1066
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1068
    :cond_2
    const/high16 v4, -0x80000000

    or-int/2addr v0, v4

    .line 1073
    :cond_3
    iget v4, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    iget v4, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v5, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 1074
    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v0, v4

    .line 1076
    :cond_4
    iget v4, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/content/res/Configuration;->mcc:I

    iget v5, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v4, v5, :cond_5

    .line 1077
    or-int/lit8 v0, v0, 0x1

    .line 1079
    :cond_5
    iget v4, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v4, :cond_6

    iget v4, p0, Landroid/content/res/Configuration;->mnc:I

    iget v5, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v4, v5, :cond_6

    .line 1080
    or-int/lit8 v0, v0, 0x2

    .line 1082
    :cond_6
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1084
    :cond_7
    or-int/lit8 v0, v0, 0x4

    .line 1085
    or-int/lit16 v0, v0, 0x2000

    .line 1087
    :cond_8
    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v4, 0xc0

    .line 1088
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_9

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0xc0

    if-eq v1, v4, :cond_9

    .line 1090
    or-int/lit16 v0, v0, 0x2000

    .line 1092
    :cond_9
    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v4, :cond_a

    iget v4, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v5, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v4, v5, :cond_a

    .line 1094
    or-int/lit8 v0, v0, 0x8

    .line 1096
    :cond_a
    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v4, :cond_b

    iget v4, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v5, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v5, :cond_b

    .line 1098
    or-int/lit8 v0, v0, 0x10

    .line 1100
    :cond_b
    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v4, :cond_c

    iget v4, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v5, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v4, v5, :cond_c

    .line 1102
    or-int/lit8 v0, v0, 0x20

    .line 1104
    :cond_c
    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v4, :cond_d

    iget v4, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v5, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v4, v5, :cond_d

    .line 1106
    or-int/lit8 v0, v0, 0x20

    .line 1108
    :cond_d
    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v4, :cond_e

    iget v4, p0, Landroid/content/res/Configuration;->navigation:I

    iget v5, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v4, v5, :cond_e

    .line 1110
    or-int/lit8 v0, v0, 0x40

    .line 1112
    :cond_e
    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v4, :cond_f

    iget v4, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v5, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v4, v5, :cond_f

    .line 1114
    or-int/lit8 v0, v0, 0x20

    .line 1116
    :cond_f
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v4, :cond_10

    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_10

    .line 1118
    or-int/lit16 v0, v0, 0x80

    .line 1120
    :cond_10
    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v4}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v4

    if-eqz v4, :cond_11

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v4}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v4

    iget v5, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v5}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v5

    if-eq v4, v5, :cond_11

    .line 1124
    or-int/lit16 v0, v0, 0x100

    .line 1126
    :cond_11
    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v4, :cond_12

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v5, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v4, v5, :cond_12

    .line 1128
    or-int/lit16 v0, v0, 0x200

    .line 1130
    :cond_12
    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v4, :cond_13

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v5, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v5, :cond_13

    .line 1132
    or-int/lit16 v0, v0, 0x400

    .line 1134
    :cond_13
    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v4, :cond_14

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v5, :cond_14

    .line 1136
    or-int/lit16 v0, v0, 0x400

    .line 1138
    :cond_14
    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v4, :cond_15

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v5, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v5, :cond_15

    .line 1140
    or-int/lit16 v0, v0, 0x800

    .line 1142
    :cond_15
    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v4, :cond_16

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v5, :cond_16

    .line 1144
    or-int/lit16 v0, v0, 0x1000

    .line 1147
    :cond_16
    return v0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p1, "that"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1376
    if-nez p1, :cond_1

    move v0, v1

    .line 1378
    :cond_0
    :goto_0
    return v0

    .line 1377
    :cond_1
    if-eq p1, p0, :cond_0

    .line 1378
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 1383
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1386
    :goto_0
    return v0

    .line 1384
    :catch_0
    move-exception v0

    .line 1386
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutDirection()I
    .locals 2

    .prologue
    .line 1436
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1390
    const/16 v0, 0x11

    .line 1391
    .local v0, "result":I
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1392
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    add-int v0, v1, v3

    .line 1393
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    add-int v0, v1, v3

    .line 1394
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 1395
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int v0, v1, v3

    .line 1396
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int v0, v1, v3

    .line 1397
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int v0, v1, v3

    .line 1398
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int v0, v1, v3

    .line 1399
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    add-int v0, v1, v3

    .line 1400
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int v0, v1, v3

    .line 1401
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    add-int v0, v1, v3

    .line 1402
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int v0, v1, v3

    .line 1403
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int v0, v1, v3

    .line 1404
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int v0, v1, v3

    .line 1405
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int v0, v1, v3

    .line 1406
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int v0, v1, v3

    .line 1407
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int v0, v1, v3

    .line 1410
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 1412
    return v0

    :cond_1
    move v1, v2

    .line 1394
    goto :goto_0
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 287
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    .line 288
    .local v0, "cur":I
    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "other"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1171
    if-nez p1, :cond_1

    move v1, v2

    .line 1191
    :cond_0
    :goto_0
    return v1

    .line 1175
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1180
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1185
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    sub-int v0, v3, v4

    .line 1186
    .local v0, "diff":I
    const/high16 v3, 0x10000

    if-le v0, v3, :cond_2

    move v1, v2

    .line 1189
    goto :goto_0

    .line 1191
    :cond_2
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 866
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 867
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 1247
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1254
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 1280
    :goto_1
    return-void

    .line 1254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1277
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    goto :goto_1
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1452
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1453
    .local v0, "layoutDirection":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1455
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 1423
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1424
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1425
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1426
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "o"    # Landroid/content/res/Configuration;

    .prologue
    .line 631
    if-nez p1, :cond_0

    .line 632
    const-string v0, "Configuration"

    const-string/jumbo v1, "o is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_0
    return-void

    .line 635
    :cond_0
    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "o.defaultFontName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p1, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    const-string v1, "/system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 643
    :goto_1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 644
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 645
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 646
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 649
    :cond_1
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 650
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 651
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 652
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 653
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 654
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 655
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 656
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 657
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 658
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 659
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 660
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 661
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 662
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 663
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 664
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 665
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 666
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    goto/16 :goto_0

    .line 640
    :cond_2
    iget-object v0, p1, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    goto :goto_1
.end method

.method public setToDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 836
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 842
    iput-object v2, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 845
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 846
    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 847
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 848
    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 849
    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 850
    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 851
    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 852
    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 853
    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 854
    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 855
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 856
    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 857
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 858
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 859
    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 860
    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 861
    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    .line 862
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 671
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    iget-object v2, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 675
    iget-object v2, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :goto_0
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 682
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_2

    .line 684
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :goto_1
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_3

    .line 690
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 691
    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :goto_2
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_4

    .line 696
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 701
    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v2, 0xc0

    .line 702
    .local v0, "layoutDir":I
    sparse-switch v0, :sswitch_data_0

    .line 706
    const-string v2, " layoutDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    shr-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 709
    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_5

    .line 710
    const-string v2, " sw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_6

    .line 715
    const-string v2, " w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_7

    .line 720
    const-string v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :goto_7
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_8

    .line 725
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    .line 735
    const-string v2, " layoutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 738
    :goto_9
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_1

    .line 742
    const-string v2, " layoutLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    :goto_a
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_1

    .line 749
    const-string v2, " orien="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    :goto_b
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_2

    .line 758
    const-string v2, " uimode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 760
    :goto_c
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_2

    .line 764
    const-string v2, " night="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 766
    :goto_d
    :sswitch_1
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_3

    .line 771
    const-string v2, " touch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    :goto_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_4

    .line 778
    const-string v2, " keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    :goto_f
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_5

    .line 785
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    :goto_10
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v2, :pswitch_data_6

    .line 791
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 793
    :goto_11
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_7

    .line 799
    const-string v2, " nav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 801
    :goto_12
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_8

    .line 805
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 807
    :goto_13
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_0

    .line 808
    const-string v2, " s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 811
    :cond_0
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 677
    .end local v0    # "layoutDir":I
    :cond_1
    const-string v2, "(default font)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 687
    :cond_2
    const-string v2, "?mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 693
    :cond_3
    const-string v2, "?mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 699
    :cond_4
    const-string v2, " ?locale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 703
    .restart local v0    # "layoutDir":I
    :sswitch_2
    const-string v2, " ?layoutDir"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 704
    :sswitch_3
    const-string v2, " ldltr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 705
    :sswitch_4
    const-string v2, " ldrtl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 712
    :cond_5
    const-string v2, " ?swdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 717
    :cond_6
    const-string v2, " ?wdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 722
    :cond_7
    const-string v2, " ?hdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 727
    :cond_8
    const-string v2, " ?density"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 730
    :pswitch_1
    const-string v2, " ?lsize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 731
    :pswitch_2
    const-string v2, " smll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 732
    :pswitch_3
    const-string v2, " nrml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 733
    :pswitch_4
    const-string v2, " lrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 734
    :pswitch_5
    const-string v2, " xlrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 739
    :sswitch_5
    const-string v2, " ?long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 741
    :sswitch_6
    const-string v2, " long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 746
    :pswitch_6
    const-string v2, " ?orien"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 747
    :pswitch_7
    const-string v2, " land"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 748
    :pswitch_8
    const-string v2, " port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 752
    :pswitch_9
    const-string v2, " ?uimode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 754
    :pswitch_a
    const-string v2, " desk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 755
    :pswitch_b
    const-string v2, " car"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 756
    :pswitch_c
    const-string v2, " television"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 757
    :pswitch_d
    const-string v2, " appliance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 761
    :sswitch_7
    const-string v2, " ?night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 763
    :sswitch_8
    const-string v2, " night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 767
    :pswitch_e
    const-string v2, " ?touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 768
    :pswitch_f
    const-string v2, " -touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 769
    :pswitch_10
    const-string v2, " stylus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 770
    :pswitch_11
    const-string v2, " finger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 774
    :pswitch_12
    const-string v2, " ?keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 775
    :pswitch_13
    const-string v2, " -keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 776
    :pswitch_14
    const-string v2, " qwerty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 777
    :pswitch_15
    const-string v2, " 12key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 781
    :pswitch_16
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 782
    :pswitch_17
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 783
    :pswitch_18
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 784
    :pswitch_19
    const-string v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 788
    :pswitch_1a
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 789
    :pswitch_1b
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 790
    :pswitch_1c
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 794
    :pswitch_1d
    const-string v2, " ?nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 795
    :pswitch_1e
    const-string v2, " -nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 796
    :pswitch_1f
    const-string v2, " dpad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 797
    :pswitch_20
    const-string v2, " tball"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 798
    :pswitch_21
    const-string v2, " wheel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 802
    :pswitch_22
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    .line 803
    :pswitch_23
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    .line 804
    :pswitch_24
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    .line 702
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    .line 729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 738
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 745
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 751
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 760
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x10 -> :sswitch_1
        0x20 -> :sswitch_8
    .end sparse-switch

    .line 766
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 773
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 780
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 787
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 793
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 801
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 5
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 881
    .local v0, "changed":I
    iget-object v2, p1, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 882
    .local v2, "fontDelta":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "/system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    const/4 v2, 0x0

    .line 885
    :cond_0
    iget-object v3, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    .line 886
    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 888
    :cond_1
    const/high16 v3, -0x80000000

    or-int/2addr v0, v3

    .line 889
    iput-object v2, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    .line 893
    :cond_2
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 894
    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v0, v3

    .line 895
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 897
    :cond_3
    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    iget v4, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v3, v4, :cond_4

    .line 898
    or-int/lit8 v0, v0, 0x1

    .line 899
    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    iput v3, p0, Landroid/content/res/Configuration;->mcc:I

    .line 901
    :cond_4
    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    iget v4, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v3, v4, :cond_5

    .line 902
    or-int/lit8 v0, v0, 0x2

    .line 903
    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    iput v3, p0, Landroid/content/res/Configuration;->mnc:I

    .line 905
    :cond_5
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 907
    :cond_6
    or-int/lit8 v0, v0, 0x4

    .line 908
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_1d

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    :goto_0
    iput-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 911
    or-int/lit16 v0, v0, 0x2000

    .line 914
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 916
    :cond_7
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v3, 0xc0

    .line 917
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_8

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-eq v1, v3, :cond_8

    .line 919
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, -0xc1

    or-int/2addr v3, v1

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 920
    or-int/lit16 v0, v0, 0x2000

    .line 922
    :cond_8
    iget-boolean v3, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v3, :cond_9

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_a

    .line 924
    :cond_9
    or-int/lit8 v0, v0, 0x4

    .line 925
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 927
    :cond_a
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v3, :cond_b

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v4, :cond_b

    .line 929
    or-int/lit8 v0, v0, 0x8

    .line 930
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 932
    :cond_b
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v4, :cond_c

    .line 934
    or-int/lit8 v0, v0, 0x10

    .line 935
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v3, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 937
    :cond_c
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v3, :cond_d

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v4, :cond_d

    .line 939
    or-int/lit8 v0, v0, 0x20

    .line 940
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 942
    :cond_d
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v3, :cond_e

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v4, :cond_e

    .line 944
    or-int/lit8 v0, v0, 0x20

    .line 945
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 947
    :cond_e
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v3, :cond_f

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v4, :cond_f

    .line 949
    or-int/lit8 v0, v0, 0x40

    .line 950
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    iput v3, p0, Landroid/content/res/Configuration;->navigation:I

    .line 952
    :cond_f
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v3, :cond_10

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v4, :cond_10

    .line 954
    or-int/lit8 v0, v0, 0x20

    .line 955
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 957
    :cond_10
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_11

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_11

    .line 959
    or-int/lit16 v0, v0, 0x80

    .line 960
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    .line 962
    :cond_11
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eqz v3, :cond_12

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v4}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v4

    if-eq v3, v4, :cond_12

    .line 966
    or-int/lit16 v0, v0, 0x100

    .line 968
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-nez v3, :cond_1e

    .line 969
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 974
    :cond_12
    :goto_1
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v3, :cond_14

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v3, v4, :cond_14

    .line 976
    or-int/lit16 v0, v0, 0x200

    .line 977
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_13

    .line 978
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x10

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 981
    :cond_13
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    if-eqz v3, :cond_14

    .line 982
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x31

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 986
    :cond_14
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_15

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v3, v4, :cond_15

    .line 988
    or-int/lit16 v0, v0, 0x400

    .line 989
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 991
    :cond_15
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_16

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v4, :cond_16

    .line 993
    or-int/lit16 v0, v0, 0x400

    .line 994
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 996
    :cond_16
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v3, :cond_17

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v3, v4, :cond_17

    .line 998
    or-int/lit16 v0, v0, 0x800

    .line 999
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1001
    :cond_17
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_18

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v4, :cond_18

    .line 1003
    or-int/lit16 v0, v0, 0x1000

    .line 1004
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1006
    :cond_18
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v3, :cond_19

    .line 1007
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1009
    :cond_19
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v3, :cond_1a

    .line 1010
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1012
    :cond_1a
    iget v3, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v3, :cond_1b

    .line 1013
    iget v3, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1015
    :cond_1b
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_1c

    .line 1016
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iput v3, p0, Landroid/content/res/Configuration;->seq:I

    .line 1019
    :cond_1c
    return v0

    .line 908
    .end local v1    # "deltaScreenLayoutDir":I
    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 971
    .restart local v1    # "deltaScreenLayoutDir":I
    :cond_1e
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1202
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1203
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 1206
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    :goto_0
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_1

    .line 1214
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    iget-object v0, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1238
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    :goto_2
    return-void

    .line 1208
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1216
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1240
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1241
    iget-object v0, p0, Landroid/content/res/Configuration;->defaultFontName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
