.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field protected static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F


# instance fields
.field private mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 362
    return-void
.end method

.method public static getAltitude(FF)F
    .locals 7
    .param p0, "p0"    # F
    .param p1, "p"    # F

    .prologue
    .line 1283
    const v0, 0x3e42dcae

    .line 1284
    .local v0, "coef":F
    const v1, 0x472d2a00    # 44330.0f

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p1, p0

    float-to-double v3, v3

    const-wide v5, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 30
    .param p0, "angleChange"    # [F
    .param p1, "R"    # [F
    .param p2, "prevR"    # [F

    .prologue
    .line 1314
    const/4 v11, 0x0

    .local v11, "rd1":F
    const/4 v12, 0x0

    .local v12, "rd4":F
    const/4 v13, 0x0

    .local v13, "rd6":F
    const/4 v14, 0x0

    .local v14, "rd7":F
    const/4 v15, 0x0

    .line 1315
    .local v15, "rd8":F
    const/16 v16, 0x0

    .local v16, "ri0":F
    const/16 v17, 0x0

    .local v17, "ri1":F
    const/16 v18, 0x0

    .local v18, "ri2":F
    const/16 v19, 0x0

    .local v19, "ri3":F
    const/16 v20, 0x0

    .local v20, "ri4":F
    const/16 v21, 0x0

    .local v21, "ri5":F
    const/16 v22, 0x0

    .local v22, "ri6":F
    const/16 v23, 0x0

    .local v23, "ri7":F
    const/16 v24, 0x0

    .line 1316
    .local v24, "ri8":F
    const/4 v2, 0x0

    .local v2, "pri0":F
    const/4 v3, 0x0

    .local v3, "pri1":F
    const/4 v4, 0x0

    .local v4, "pri2":F
    const/4 v5, 0x0

    .local v5, "pri3":F
    const/4 v6, 0x0

    .local v6, "pri4":F
    const/4 v7, 0x0

    .local v7, "pri5":F
    const/4 v8, 0x0

    .local v8, "pri6":F
    const/4 v9, 0x0

    .local v9, "pri7":F
    const/4 v10, 0x0

    .line 1318
    .local v10, "pri8":F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 1319
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 1320
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 1321
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 1322
    const/16 v25, 0x3

    aget v19, p1, v25

    .line 1323
    const/16 v25, 0x4

    aget v20, p1, v25

    .line 1324
    const/16 v25, 0x5

    aget v21, p1, v25

    .line 1325
    const/16 v25, 0x6

    aget v22, p1, v25

    .line 1326
    const/16 v25, 0x7

    aget v23, p1, v25

    .line 1327
    const/16 v25, 0x8

    aget v24, p1, v25

    .line 1340
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 1341
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 1342
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 1343
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 1344
    const/16 v25, 0x3

    aget v5, p2, v25

    .line 1345
    const/16 v25, 0x4

    aget v6, p2, v25

    .line 1346
    const/16 v25, 0x5

    aget v7, p2, v25

    .line 1347
    const/16 v25, 0x6

    aget v8, p2, v25

    .line 1348
    const/16 v25, 0x7

    aget v9, p2, v25

    .line 1349
    const/16 v25, 0x8

    aget v10, p2, v25

    .line 1365
    :cond_1
    :goto_1
    mul-float v25, v2, v17

    mul-float v26, v5, v20

    add-float v25, v25, v26

    mul-float v26, v8, v23

    add-float v11, v25, v26

    .line 1366
    mul-float v25, v3, v17

    mul-float v26, v6, v20

    add-float v25, v25, v26

    mul-float v26, v9, v23

    add-float v12, v25, v26

    .line 1367
    mul-float v25, v4, v16

    mul-float v26, v7, v19

    add-float v25, v25, v26

    mul-float v26, v10, v22

    add-float v13, v25, v26

    .line 1368
    mul-float v25, v4, v17

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v10, v23

    add-float v14, v25, v26

    .line 1369
    mul-float v25, v4, v18

    mul-float v26, v7, v21

    add-float v25, v25, v26

    mul-float v26, v10, v24

    add-float v15, v25, v26

    .line 1371
    const/16 v25, 0x0

    float-to-double v0, v11

    move-wide/from16 v26, v0

    float-to-double v0, v12

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1372
    const/16 v25, 0x1

    neg-float v0, v14

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1373
    const/16 v25, 0x2

    neg-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v15

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1375
    return-void

    .line 1328
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1329
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 1330
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 1331
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 1332
    const/16 v25, 0x4

    aget v19, p1, v25

    .line 1333
    const/16 v25, 0x5

    aget v20, p1, v25

    .line 1334
    const/16 v25, 0x6

    aget v21, p1, v25

    .line 1335
    const/16 v25, 0x8

    aget v22, p1, v25

    .line 1336
    const/16 v25, 0x9

    aget v23, p1, v25

    .line 1337
    const/16 v25, 0xa

    aget v24, p1, v25

    goto/16 :goto_0

    .line 1350
    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 1351
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 1352
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 1353
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 1354
    const/16 v25, 0x4

    aget v5, p2, v25

    .line 1355
    const/16 v25, 0x5

    aget v6, p2, v25

    .line 1356
    const/16 v25, 0x6

    aget v7, p2, v25

    .line 1357
    const/16 v25, 0x8

    aget v8, p2, v25

    .line 1358
    const/16 v25, 0x9

    aget v9, p2, v25

    .line 1359
    const/16 v25, 0xa

    aget v10, p2, v25

    goto/16 :goto_1
.end method

.method private static getDelay(I)I
    .locals 1
    .param p0, "rate"    # I

    .prologue
    .line 1545
    const/4 v0, -0x1

    .line 1546
    .local v0, "delay":I
    packed-switch p0, :pswitch_data_0

    .line 1560
    move v0, p0

    .line 1563
    :goto_0
    return v0

    .line 1548
    :pswitch_0
    const/4 v0, 0x0

    .line 1549
    goto :goto_0

    .line 1551
    :pswitch_1
    const/16 v0, 0x4e20

    .line 1552
    goto :goto_0

    .line 1554
    :pswitch_2
    const v0, 0x1046b

    .line 1555
    goto :goto_0

    .line 1557
    :pswitch_3
    const v0, 0x30d40

    .line 1558
    goto :goto_0

    .line 1546
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getInclination([F)F
    .locals 4
    .param p0, "I"    # [F

    .prologue
    const/4 v2, 0x5

    .line 1028
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1029
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1031
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    .prologue
    .line 1534
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1535
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v0, :cond_0

    .line 1536
    const-string v0, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    new-instance v0, Landroid/hardware/LegacySensorManager;

    invoke-direct {v0, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 1540
    :cond_0
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v1

    return-object v0

    .line 1541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getOrientation([F[F)[F
    .locals 9
    .param p0, "R"    # [F
    .param p1, "values"    # [F

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1241
    array-length v0, p0

    if-ne v0, v8, :cond_0

    .line 1242
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1243
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1244
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 1250
    :goto_0
    return-object p1

    .line 1246
    :cond_0
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1247
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1248
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_0
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 8
    .param p0, "Q"    # [F
    .param p1, "rv"    # [F

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1460
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1461
    aget v0, p1, v7

    aput v0, p0, v4

    .line 1466
    :goto_0
    aget v0, p1, v4

    aput v0, p0, v5

    .line 1467
    aget v0, p1, v5

    aput v0, p0, v6

    .line 1468
    aget v0, p1, v6

    aput v0, p0, v7

    .line 1469
    return-void

    .line 1463
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, p1, v4

    aget v3, p1, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v5

    aget v3, p1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v6

    aget v3, p1, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p0, v4

    .line 1464
    aget v1, p0, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    aget v0, p0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :cond_1
    aput v0, p0, v4

    goto :goto_0
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 27
    .param p0, "R"    # [F
    .param p1, "I"    # [F
    .param p2, "gravity"    # [F
    .param p3, "geomagnetic"    # [F

    .prologue
    .line 953
    const/16 v20, 0x0

    aget v2, p2, v20

    .line 954
    .local v2, "Ax":F
    const/16 v20, 0x1

    aget v3, p2, v20

    .line 955
    .local v3, "Ay":F
    const/16 v20, 0x2

    aget v4, p2, v20

    .line 956
    .local v4, "Az":F
    const/16 v20, 0x0

    aget v5, p3, v20

    .line 957
    .local v5, "Ex":F
    const/16 v20, 0x1

    aget v6, p3, v20

    .line 958
    .local v6, "Ey":F
    const/16 v20, 0x2

    aget v7, p3, v20

    .line 959
    .local v7, "Ez":F
    mul-float v20, v6, v4

    mul-float v21, v7, v3

    sub-float v8, v20, v21

    .line 960
    .local v8, "Hx":F
    mul-float v20, v7, v2

    mul-float v21, v5, v4

    sub-float v9, v20, v21

    .line 961
    .local v9, "Hy":F
    mul-float v20, v5, v3

    mul-float v21, v6, v2

    sub-float v10, v20, v21

    .line 962
    .local v10, "Hz":F
    mul-float v20, v8, v8

    mul-float v21, v9, v9

    add-float v20, v20, v21

    mul-float v21, v10, v10

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v18, v0

    .line 963
    .local v18, "normH":F
    const v20, 0x3dcccccd    # 0.1f

    cmpg-float v20, v18, v20

    if-gez v20, :cond_0

    .line 966
    const/16 v20, 0x0

    .line 1010
    :goto_0
    return v20

    .line 968
    :cond_0
    const/high16 v20, 0x3f800000    # 1.0f

    div-float v17, v20, v18

    .line 969
    .local v17, "invH":F
    mul-float v8, v8, v17

    .line 970
    mul-float v9, v9, v17

    .line 971
    mul-float v10, v10, v17

    .line 972
    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v21, v2, v2

    mul-float v22, v3, v3

    add-float v21, v21, v22

    mul-float v22, v4, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 973
    .local v15, "invA":F
    mul-float/2addr v2, v15

    .line 974
    mul-float/2addr v3, v15

    .line 975
    mul-float/2addr v4, v15

    .line 976
    mul-float v20, v3, v10

    mul-float v21, v4, v9

    sub-float v11, v20, v21

    .line 977
    .local v11, "Mx":F
    mul-float v20, v4, v8

    mul-float v21, v2, v10

    sub-float v12, v20, v21

    .line 978
    .local v12, "My":F
    mul-float v20, v2, v9

    mul-float v21, v3, v8

    sub-float v13, v20, v21

    .line 979
    .local v13, "Mz":F
    if-eqz p0, :cond_1

    .line 980
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 981
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    .line 982
    const/16 v20, 0x3

    aput v11, p0, v20

    const/16 v20, 0x4

    aput v12, p0, v20

    const/16 v20, 0x5

    aput v13, p0, v20

    .line 983
    const/16 v20, 0x6

    aput v2, p0, v20

    const/16 v20, 0x7

    aput v3, p0, v20

    const/16 v20, 0x8

    aput v4, p0, v20

    .line 991
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 995
    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v21, v5, v5

    mul-float v22, v6, v6

    add-float v21, v21, v22

    mul-float v22, v7, v7

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v16, v20, v21

    .line 996
    .local v16, "invE":F
    mul-float v20, v5, v11

    mul-float v21, v6, v12

    add-float v20, v20, v21

    mul-float v21, v7, v13

    add-float v20, v20, v21

    mul-float v14, v20, v16

    .line 997
    .local v14, "c":F
    mul-float v20, v5, v2

    mul-float v21, v6, v3

    add-float v20, v20, v21

    mul-float v21, v7, v4

    add-float v20, v20, v21

    mul-float v19, v20, v16

    .line 998
    .local v19, "s":F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 999
    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1000
    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x4

    aput v14, p1, v20

    const/16 v20, 0x5

    aput v19, p1, v20

    .line 1001
    const/16 v20, 0x6

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x7

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0x8

    aput v14, p1, v20

    .line 1010
    .end local v14    # "c":F
    .end local v16    # "invE":F
    .end local v19    # "s":F
    :cond_2
    :goto_2
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 984
    :cond_3
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 985
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 986
    const/16 v20, 0x4

    aput v11, p0, v20

    const/16 v20, 0x5

    aput v12, p0, v20

    const/16 v20, 0x6

    aput v13, p0, v20

    const/16 v20, 0x7

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 987
    const/16 v20, 0x8

    aput v2, p0, v20

    const/16 v20, 0x9

    aput v3, p0, v20

    const/16 v20, 0xa

    aput v4, p0, v20

    const/16 v20, 0xb

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 988
    const/16 v20, 0xc

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xd

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xf

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p0, v20

    goto/16 :goto_1

    .line 1002
    .restart local v14    # "c":F
    .restart local v16    # "invE":F
    .restart local v19    # "s":F
    :cond_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1003
    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1004
    const/16 v20, 0x4

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x5

    aput v14, p1, v20

    const/16 v20, 0x6

    aput v19, p1, v20

    .line 1005
    const/16 v20, 0x8

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x9

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0xa

    aput v14, p1, v20

    .line 1006
    const/16 v20, 0x3

    const/16 v21, 0x7

    const/16 v22, 0xb

    const/16 v23, 0xc

    const/16 v24, 0xd

    const/16 v25, 0xe

    const/16 v26, 0x0

    aput v26, p1, v25

    aput v26, p1, v24

    aput v26, p1, v23

    aput v26, p1, v22

    aput v26, p1, v21

    aput v26, p1, v20

    .line 1007
    const/16 v20, 0xf

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p1, v20

    goto/16 :goto_2
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 18
    .param p0, "R"    # [F
    .param p1, "rotationVector"    # [F

    .prologue
    .line 1399
    const/4 v14, 0x0

    aget v2, p1, v14

    .line 1400
    .local v2, "q1":F
    const/4 v14, 0x1

    aget v6, p1, v14

    .line 1401
    .local v6, "q2":F
    const/4 v14, 0x2

    aget v9, p1, v14

    .line 1403
    .local v9, "q3":F
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1

    .line 1404
    const/4 v14, 0x3

    aget v1, p1, v14

    .line 1410
    .local v1, "q0":F
    :goto_0
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v2

    mul-float v11, v14, v2

    .line 1411
    .local v11, "sq_q1":F
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v6

    mul-float v12, v14, v6

    .line 1412
    .local v12, "sq_q2":F
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v9

    mul-float v13, v14, v9

    .line 1413
    .local v13, "sq_q3":F
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v2

    mul-float v4, v14, v6

    .line 1414
    .local v4, "q1_q2":F
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v9

    mul-float v10, v14, v1

    .line 1415
    .local v10, "q3_q0":F
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v2

    mul-float v5, v14, v9

    .line 1416
    .local v5, "q1_q3":F
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v6

    mul-float v7, v14, v1

    .line 1417
    .local v7, "q2_q0":F
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v6

    mul-float v8, v14, v9

    .line 1418
    .local v8, "q2_q3":F
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v2

    mul-float v3, v14, v1

    .line 1420
    .local v3, "q1_q0":F
    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x9

    if-ne v14, v15, :cond_3

    .line 1421
    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 1422
    const/4 v14, 0x1

    sub-float v15, v4, v10

    aput v15, p0, v14

    .line 1423
    const/4 v14, 0x2

    add-float v15, v5, v7

    aput v15, p0, v14

    .line 1425
    const/4 v14, 0x3

    add-float v15, v4, v10

    aput v15, p0, v14

    .line 1426
    const/4 v14, 0x4

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 1427
    const/4 v14, 0x5

    sub-float v15, v8, v3

    aput v15, p0, v14

    .line 1429
    const/4 v14, 0x6

    sub-float v15, v5, v7

    aput v15, p0, v14

    .line 1430
    const/4 v14, 0x7

    add-float v15, v8, v3

    aput v15, p0, v14

    .line 1431
    const/16 v14, 0x8

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 1451
    :cond_0
    :goto_1
    return-void

    .line 1406
    .end local v1    # "q0":F
    .end local v3    # "q1_q0":F
    .end local v4    # "q1_q2":F
    .end local v5    # "q1_q3":F
    .end local v7    # "q2_q0":F
    .end local v8    # "q2_q3":F
    .end local v10    # "q3_q0":F
    .end local v11    # "sq_q1":F
    .end local v12    # "sq_q2":F
    .end local v13    # "sq_q3":F
    :cond_1
    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v15, v2, v2

    sub-float/2addr v14, v15

    mul-float v15, v6, v6

    sub-float/2addr v14, v15

    mul-float v15, v9, v9

    sub-float v1, v14, v15

    .line 1407
    .restart local v1    # "q0":F
    const/4 v14, 0x0

    cmpl-float v14, v1, v14

    if-lez v14, :cond_2

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v1, v14

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 1432
    .restart local v3    # "q1_q0":F
    .restart local v4    # "q1_q2":F
    .restart local v5    # "q1_q3":F
    .restart local v7    # "q2_q0":F
    .restart local v8    # "q2_q3":F
    .restart local v10    # "q3_q0":F
    .restart local v11    # "sq_q1":F
    .restart local v12    # "sq_q2":F
    .restart local v13    # "sq_q3":F
    :cond_3
    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x10

    if-ne v14, v15, :cond_0

    .line 1433
    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 1434
    const/4 v14, 0x1

    sub-float v15, v4, v10

    aput v15, p0, v14

    .line 1435
    const/4 v14, 0x2

    add-float v15, v5, v7

    aput v15, p0, v14

    .line 1436
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 1438
    const/4 v14, 0x4

    add-float v15, v4, v10

    aput v15, p0, v14

    .line 1439
    const/4 v14, 0x5

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 1440
    const/4 v14, 0x6

    sub-float v15, v8, v3

    aput v15, p0, v14

    .line 1441
    const/4 v14, 0x7

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 1443
    const/16 v14, 0x8

    sub-float v15, v5, v7

    aput v15, p0, v14

    .line 1444
    const/16 v14, 0x9

    add-float v15, v8, v3

    aput v15, p0, v14

    .line 1445
    const/16 v14, 0xa

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 1446
    const/16 v14, 0xb

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 1448
    const/16 v14, 0xc

    const/16 v15, 0xd

    const/16 v16, 0xe

    const/16 v17, 0x0

    aput v17, p0, v16

    aput v17, p0, v15

    aput v17, p0, v14

    .line 1449
    const/16 v14, 0xf

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, p0, v14

    goto :goto_1
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 4
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .prologue
    .line 1113
    if-ne p0, p3, :cond_2

    .line 1114
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 1115
    .local v2, "temp":[F
    monitor-enter v2

    .line 1117
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1118
    array-length v1, p3

    .line 1119
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1120
    aget v3, v2, v0

    aput v3, p3, v0

    .line 1119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1121
    :cond_0
    const/4 v3, 0x1

    monitor-exit v2

    .line 1125
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "temp":[F
    :goto_1
    return v3

    .line 1123
    .restart local v2    # "temp":[F
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    .end local v2    # "temp":[F
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_1

    .line 1123
    .restart local v2    # "temp":[F
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 22
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .prologue
    .line 1142
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1143
    .local v6, "length":I
    move-object/from16 v0, p0

    array-length v15, v0

    if-eq v15, v6, :cond_0

    .line 1144
    const/4 v15, 0x0

    .line 1186
    :goto_0
    return v15

    .line 1145
    :cond_0
    and-int/lit8 v15, p1, 0x7c

    if-nez v15, :cond_1

    and-int/lit8 v15, p2, 0x7c

    if-eqz v15, :cond_2

    .line 1146
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 1147
    :cond_2
    and-int/lit8 v15, p1, 0x3

    if-eqz v15, :cond_3

    and-int/lit8 v15, p2, 0x3

    if-nez v15, :cond_4

    .line 1148
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 1149
    :cond_4
    and-int/lit8 v15, p1, 0x3

    and-int/lit8 v16, p2, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1150
    const/4 v15, 0x0

    goto :goto_0

    .line 1155
    :cond_5
    xor-int v1, p1, p2

    .line 1158
    .local v1, "Z":I
    and-int/lit8 v15, p1, 0x3

    add-int/lit8 v12, v15, -0x1

    .line 1159
    .local v12, "x":I
    and-int/lit8 v15, p2, 0x3

    add-int/lit8 v13, v15, -0x1

    .line 1160
    .local v13, "y":I
    and-int/lit8 v15, v1, 0x3

    add-int/lit8 v14, v15, -0x1

    .line 1163
    .local v14, "z":I
    add-int/lit8 v15, v14, 0x1

    rem-int/lit8 v2, v15, 0x3

    .line 1164
    .local v2, "axis_y":I
    add-int/lit8 v15, v14, 0x2

    rem-int/lit8 v3, v15, 0x3

    .line 1165
    .local v3, "axis_z":I
    xor-int v15, v12, v2

    xor-int v16, v13, v3

    or-int v15, v15, v16

    if-eqz v15, :cond_6

    .line 1166
    xor-int/lit16 v1, v1, 0x80

    .line 1168
    :cond_6
    const/16 v15, 0x80

    move/from16 v0, p1

    if-lt v0, v15, :cond_a

    const/4 v9, 0x1

    .line 1169
    .local v9, "sx":Z
    :goto_1
    const/16 v15, 0x80

    move/from16 v0, p2

    if-lt v0, v15, :cond_b

    const/4 v10, 0x1

    .line 1170
    .local v10, "sy":Z
    :goto_2
    const/16 v15, 0x80

    if-lt v1, v15, :cond_c

    const/4 v11, 0x1

    .line 1173
    .local v11, "sz":Z
    :goto_3
    const/16 v15, 0x10

    if-ne v6, v15, :cond_d

    const/4 v8, 0x4

    .line 1174
    .local v8, "rowLength":I
    :goto_4
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    const/4 v15, 0x3

    if-ge v5, v15, :cond_12

    .line 1175
    mul-int v7, v5, v8

    .line 1176
    .local v7, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    const/4 v15, 0x3

    if-ge v4, v15, :cond_11

    .line 1177
    if-ne v12, v4, :cond_7

    add-int v16, v7, v4

    if-eqz v9, :cond_e

    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    neg-float v15, v15

    :goto_7
    aput v15, p3, v16

    .line 1178
    :cond_7
    if-ne v13, v4, :cond_8

    add-int v16, v7, v4

    if-eqz v10, :cond_f

    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    neg-float v15, v15

    :goto_8
    aput v15, p3, v16

    .line 1179
    :cond_8
    if-ne v14, v4, :cond_9

    add-int v16, v7, v4

    if-eqz v11, :cond_10

    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    neg-float v15, v15

    :goto_9
    aput v15, p3, v16

    .line 1176
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1168
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "offset":I
    .end local v8    # "rowLength":I
    .end local v9    # "sx":Z
    .end local v10    # "sy":Z
    .end local v11    # "sz":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_1

    .line 1169
    .restart local v9    # "sx":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .line 1170
    .restart local v10    # "sy":Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_3

    .line 1173
    .restart local v11    # "sz":Z
    :cond_d
    const/4 v8, 0x3

    goto :goto_4

    .line 1177
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "offset":I
    .restart local v8    # "rowLength":I
    :cond_e
    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    goto :goto_7

    .line 1178
    :cond_f
    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    goto :goto_8

    .line 1179
    :cond_10
    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    goto :goto_9

    .line 1174
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1182
    .end local v4    # "i":I
    .end local v7    # "offset":I
    :cond_12
    const/16 v15, 0x10

    if-ne v6, v15, :cond_13

    .line 1183
    const/4 v15, 0x3

    const/16 v16, 0x7

    const/16 v17, 0xb

    const/16 v18, 0xc

    const/16 v19, 0xd

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p3, v20

    aput v21, p3, v19

    aput v21, p3, v18

    aput v21, p3, v17

    aput v21, p3, v16

    aput v21, p3, v15

    .line 1184
    const/16 v15, 0xf

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, p3, v15

    .line 1186
    :cond_13
    const/4 v15, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 1523
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method public cpSensorsCalibrate(Landroid/hardware/Sensor;[I)Z
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [I

    .prologue
    .line 760
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->cpSensorsCalibrateImpl(Landroid/hardware/Sensor;[I)Z

    move-result v0

    return v0
.end method

.method protected abstract cpSensorsCalibrateImpl(Landroid/hardware/Sensor;[I)Z
.end method

.method protected abstract cpSensorsEnableImpl(Landroid/hardware/Sensor;Z)Z
.end method

.method public flush(Landroid/hardware/SensorEventListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 434
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    goto :goto_0
.end method

.method protected abstract getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    .line 398
    .local v0, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v5, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v5

    .line 399
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 400
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1

    .line 401
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 402
    move-object v3, v0

    .line 410
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 411
    iget-object v4, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 413
    :cond_1
    monitor-exit v5

    .line 414
    return-object v3

    .line 404
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 406
    .local v1, "i":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 407
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    .end local v1    # "i":Landroid/hardware/Sensor;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSensors()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rateUs"    # I

    .prologue
    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rateUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I

    .prologue
    .line 661
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 662
    .local v3, "delay":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rateUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 740
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 741
    .local v3, "delayUs":I
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rateUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    .line 709
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .local v3, "delay":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v6, v5

    .line 710
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method protected abstract registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 1491
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method protected abstract requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public sensorsEnable(Landroid/hardware/Sensor;Z)Z
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "enable"    # Z

    .prologue
    .line 774
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->cpSensorsEnableImpl(Landroid/hardware/Sensor;Z)Z

    move-result v0

    return v0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 556
    if-nez p1, :cond_0

    .line 561
    :goto_0
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 538
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 499
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 517
    return-void
.end method

.method protected abstract unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
