.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$1;,
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4b00

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "c"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 347
    if-nez p0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 281
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 282
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 284
    .local v0, "h":D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 286
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 290
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 301
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 284
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 286
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 295
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 297
    goto :goto_2

    .line 298
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 301
    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 263
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 267
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 268
    const/4 v1, 0x1

    .line 269
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 270
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 276
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I

    .prologue
    .line 96
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    const/4 v12, 0x1

    .line 97
    .local v12, "wantMini":Z
    :goto_0
    if-eqz v12, :cond_4

    const/16 v11, 0x140

    .line 100
    .local v11, "targetSize":I
    :goto_1
    if-eqz v12, :cond_5

    const/high16 v5, 0x30000

    .line 103
    .local v5, "maxPixels":I
    :goto_2
    new-instance v8, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    const/4 v13, 0x0

    invoke-direct {v8, v13}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    .line 104
    .local v8, "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v1, 0x0

    .line 105
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static/range {p0 .. p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v4

    .line 106
    .local v4, "fileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v4, :cond_0

    iget v13, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v14, 0x1f

    if-ne v13, v14, :cond_0

    .line 107
    move-object/from16 v0, p0

    invoke-static {v0, v11, v5, v8}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 108
    iget-object v1, v8, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 111
    :cond_0
    if-nez v1, :cond_7

    .line 112
    const/4 v9, 0x0

    .line 114
    .local v9, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 116
    .local v3, "fd":Ljava/io/FileDescriptor;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    const/4 v13, 0x1

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 119
    const/4 v13, 0x0

    invoke-static {v3, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 120
    iget-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v13, :cond_1

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    .line 122
    :cond_1
    const/4 v13, 0x0

    .line 137
    if-eqz v10, :cond_2

    .line 138
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    :cond_2
    :goto_3
    return-object v13

    .line 96
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "fileType":Landroid/media/MediaFile$MediaFileType;
    .end local v5    # "maxPixels":I
    .end local v8    # "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .end local v11    # "targetSize":I
    .end local v12    # "wantMini":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 97
    .restart local v12    # "wantMini":Z
    :cond_4
    const/16 v11, 0x60

    goto :goto_1

    .line 100
    .restart local v11    # "targetSize":I
    :cond_5
    const/16 v5, 0x4b00

    goto :goto_2

    .line 140
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "fileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v5    # "maxPixels":I
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "ex":Ljava/io/IOException;
    const-string v14, "ThumbnailUtils"

    const-string v15, ""

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 124
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_6
    :try_start_3
    invoke-static {v7, v11, v5}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v13

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 126
    const/4 v13, 0x0

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 128
    const/4 v13, 0x0

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 129
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v13, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 130
    const/4 v13, 0x0

    invoke-static {v3, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 137
    if-eqz v10, :cond_7

    .line 138
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 147
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    :cond_7
    :goto_4
    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    .line 149
    const/16 v13, 0x60

    const/16 v14, 0x60

    const/4 v15, 0x2

    invoke-static {v1, v13, v14, v15}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_8
    move-object v13, v1

    .line 153
    goto :goto_3

    .line 140
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 141
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v13, "ThumbnailUtils"

    const-string v14, ""

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 131
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 132
    .restart local v2    # "ex":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v13, "ThumbnailUtils"

    const-string v14, ""

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    if-eqz v9, :cond_7

    .line 138
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 140
    :catch_3
    move-exception v2

    .line 141
    const-string v13, "ThumbnailUtils"

    const-string v14, ""

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 133
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 134
    .local v6, "oom":Ljava/lang/OutOfMemoryError;
    :goto_6
    :try_start_7
    const-string v13, "ThumbnailUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to decode file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". OutOfMemoryError."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 137
    if-eqz v9, :cond_7

    .line 138
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 140
    :catch_5
    move-exception v2

    .line 141
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v13, "ThumbnailUtils"

    const-string v14, ""

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 136
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v6    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v13

    .line 137
    :goto_7
    if-eqz v9, :cond_9

    .line 138
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 142
    :cond_9
    :goto_8
    throw v13

    .line 140
    :catch_6
    move-exception v2

    .line 141
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v14, "ThumbnailUtils"

    const-string v15, ""

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 136
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 133
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 131
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetSize"    # I
    .param p2, "maxPixels"    # I
    .param p3, "sizedThumbBitmap"    # Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    .prologue
    .line 485
    if-nez p0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const/4 v3, 0x0

    .line 488
    .local v3, "exif":Landroid/media/ExifInterface;
    const/4 v10, 0x0

    .line 490
    .local v10, "thumbData":[B
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .local v4, "exif":Landroid/media/ExifInterface;
    :try_start_1
    invoke-virtual {v4}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    move-object v3, v4

    .line 496
    .end local v4    # "exif":Landroid/media/ExifInterface;
    .restart local v3    # "exif":Landroid/media/ExifInterface;
    :goto_1
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 497
    .local v7, "fullOptions":Landroid/graphics/BitmapFactory$Options;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 498
    .local v5, "exifOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    .line 499
    .local v6, "exifThumbWidth":I
    const/4 v8, 0x0

    .line 502
    .local v8, "fullThumbWidth":I
    if-eqz v10, :cond_2

    .line 503
    const/4 v12, 0x1

    iput-boolean v12, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 504
    const/4 v12, 0x0

    array-length v13, v10

    invoke-static {v10, v12, v13, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 505
    move/from16 v0, p2

    invoke-static {v5, p1, v0}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v12

    iput v12, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 506
    iget v12, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v12, v13

    .line 510
    :cond_2
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 511
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 512
    move/from16 v0, p2

    invoke-static {v7, p1, v0}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v12

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 515
    const-string/jumbo v12, "persist.yulong.ctstest"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 516
    .local v1, "ctsmode":I
    const/4 v12, 0x1

    if-ne v1, v12, :cond_3

    const/16 v12, 0x140

    if-ne p1, v12, :cond_3

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v13, 0xf0

    if-le v12, v13, :cond_3

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v12, v13

    const/16 v13, 0xf0

    if-ge v12, v13, :cond_3

    .line 520
    const-string v12, "ThumbnailUtils"

    const-string v13, "adjust inSampleSize for cts test"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v12, 0x1

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 524
    :cond_3
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v8, v12, v13

    .line 527
    if-eqz v10, :cond_4

    if-lt v6, v8, :cond_4

    .line 528
    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 529
    .local v11, "width":I
    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 530
    .local v9, "height":I
    const/4 v12, 0x0

    iput-boolean v12, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 531
    const/4 v12, 0x0

    array-length v13, v10

    invoke-static {v10, v12, v13, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p3

    iput-object v12, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 533
    move-object/from16 v0, p3

    iget-object v12, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_0

    .line 534
    move-object/from16 v0, p3

    iput-object v10, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    .line 535
    move-object/from16 v0, p3

    iput v11, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    .line 536
    move-object/from16 v0, p3

    iput v9, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    goto/16 :goto_0

    .line 492
    .end local v1    # "ctsmode":I
    .end local v5    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "exifThumbWidth":I
    .end local v7    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "fullThumbWidth":I
    .end local v9    # "height":I
    .end local v11    # "width":I
    :catch_0
    move-exception v2

    .line 493
    .local v2, "ex":Ljava/io/IOException;
    :goto_2
    const-string v12, "ThumbnailUtils"

    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 539
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "ctsmode":I
    .restart local v5    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "exifThumbWidth":I
    .restart local v7    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "fullThumbWidth":I
    :cond_4
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 540
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p3

    iput-object v12, v0, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 492
    .end local v1    # "ctsmode":I
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .end local v5    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "exifThumbWidth":I
    .end local v7    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "fullThumbWidth":I
    .restart local v4    # "exif":Landroid/media/ExifInterface;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "exif":Landroid/media/ExifInterface;
    .restart local v3    # "exif":Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I

    .prologue
    const/16 v11, 0x60

    const/4 v10, 0x1

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 167
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 168
    const-wide/16 v8, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 175
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 181
    :goto_0
    if-nez v0, :cond_0

    const/4 v8, 0x0

    .line 200
    :goto_1
    return-object v8

    .line 169
    :catch_0
    move-exception v8

    .line 175
    :try_start_2
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 176
    :catch_1
    move-exception v8

    goto :goto_0

    .line 171
    :catch_2
    move-exception v8

    .line 175
    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 176
    :catch_3
    move-exception v8

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v8

    .line 175
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 178
    :goto_2
    throw v8

    .line 183
    :cond_0
    if-ne p1, v10, :cond_2

    .line 185
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 186
    .local v7, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 187
    .local v2, "height":I
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 188
    .local v3, "max":I
    const/16 v8, 0x200

    if-le v3, v8, :cond_1

    .line 189
    const/high16 v8, 0x44000000    # 512.0f

    int-to-float v9, v3

    div-float v5, v8, v9

    .line 190
    .local v5, "scale":F
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 191
    .local v6, "w":I
    int-to-float v8, v2

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 192
    .local v1, "h":I
    invoke-static {v0, v6, v1, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1    # "h":I
    .end local v2    # "height":I
    .end local v3    # "max":I
    .end local v5    # "scale":F
    .end local v6    # "w":I
    .end local v7    # "width":I
    :cond_1
    :goto_3
    move-object v8, v0

    .line 200
    goto :goto_1

    .line 194
    :cond_2
    const/4 v8, 0x3

    if-ne p1, v8, :cond_1

    .line 195
    const/4 v8, 0x2

    invoke-static {v0, v11, v11, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 176
    :catch_4
    move-exception v8

    goto :goto_0

    :catch_5
    move-exception v9

    goto :goto_2
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "options"    # I

    .prologue
    .line 225
    if-nez p0, :cond_0

    .line 226
    const/4 v2, 0x0

    .line 239
    :goto_0
    return-object v2

    .line 230
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 231
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 235
    .local v1, "scale":F
    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 237
    or-int/lit8 v3, p3, 0x1

    invoke-static {v0, p0, p1, p2, v3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 239
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 233
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v1    # "scale":F
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .restart local v1    # "scale":F
    goto :goto_1
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "minSideLength"    # I
    .param p1, "maxNumOfPixels"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 319
    :cond_0
    if-nez p4, :cond_1

    .line 341
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 343
    :goto_0
    return-object v4

    .line 320
    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    move-object p5, v3

    .line 322
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 323
    .local v2, "fd":Ljava/io/FileDescriptor;
    const/4 v5, 0x1

    iput v5, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 324
    const/4 v5, 0x1

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 325
    const/4 v5, 0x0

    invoke-static {v2, v5, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 326
    iget-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_3

    iget v5, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v6, :cond_3

    iget v5, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v6, :cond_4

    .line 341
    :cond_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 330
    :cond_4
    :try_start_2
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 332
    const/4 v5, 0x0

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 334
    const/4 v5, 0x0

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 335
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 336
    const/4 v5, 0x0

    invoke-static {v2, v5, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 341
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 343
    goto :goto_0

    .line 337
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 338
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v5, "ThumbnailUtils"

    const-string v6, "Got oom exception "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v4
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 358
    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 360
    :goto_0
    return-object v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 30
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "options"    # I

    .prologue
    .line 372
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    const/16 v27, 0x1

    .line 373
    .local v27, "scaleUp":Z
    :goto_0
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_4

    const/16 v25, 0x1

    .line 375
    .local v25, "recycle":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 376
    .local v16, "deltaX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 377
    .local v18, "deltaY":I
    if-nez v27, :cond_5

    if-ltz v16, :cond_0

    if-gez v18, :cond_5

    .line 384
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 386
    .local v11, "b2":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 388
    .local v15, "c":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 389
    .local v17, "deltaXHalf":I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 390
    .local v19, "deltaYHalf":I
    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 395
    .local v28, "src":Landroid/graphics/Rect;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 396
    .local v21, "dstX":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 397
    .local v22, "dstY":I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 402
    .local v20, "dst":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 403
    if-eqz v25, :cond_1

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 460
    .end local v15    # "c":Landroid/graphics/Canvas;
    .end local v17    # "deltaXHalf":I
    .end local v19    # "deltaYHalf":I
    .end local v20    # "dst":Landroid/graphics/Rect;
    .end local v21    # "dstX":I
    .end local v22    # "dstY":I
    .end local v28    # "src":Landroid/graphics/Rect;
    :cond_2
    :goto_2
    return-object v11

    .line 372
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v16    # "deltaX":I
    .end local v18    # "deltaY":I
    .end local v25    # "recycle":Z
    .end local v27    # "scaleUp":Z
    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 373
    .restart local v27    # "scaleUp":Z
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 409
    .restart local v16    # "deltaX":I
    .restart local v18    # "deltaY":I
    .restart local v25    # "recycle":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 410
    .local v14, "bitmapWidthF":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 412
    .local v13, "bitmapHeightF":F
    div-float v12, v14, v13

    .line 413
    .local v12, "bitmapAspect":F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v29, v3, v4

    .line 415
    .local v29, "viewAspect":F
    cmpl-float v3, v12, v29

    if-lez v3, :cond_a

    .line 416
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v26, v3, v13

    .line 417
    .local v26, "scale":F
    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v26, v3

    if-lez v3, :cond_9

    .line 418
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 432
    :goto_3
    if-eqz p0, :cond_d

    .line 434
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 440
    .local v10, "b1":Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v25, :cond_7

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_7

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 444
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 445
    .local v23, "dx1":I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 447
    .local v24, "dy1":I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 454
    .restart local v11    # "b2":Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_2

    .line 455
    if-nez v25, :cond_8

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_2

    .line 456
    :cond_8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 420
    .end local v10    # "b1":Landroid/graphics/Bitmap;
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v23    # "dx1":I
    .end local v24    # "dy1":I
    :cond_9
    const/16 p0, 0x0

    goto :goto_3

    .line 423
    .end local v26    # "scale":F
    :cond_a
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v26, v3, v14

    .line 424
    .restart local v26    # "scale":F
    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v26, v3

    if-lez v3, :cond_c

    .line 425
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_3

    .line 427
    :cond_c
    const/16 p0, 0x0

    goto :goto_3

    .line 437
    :cond_d
    move-object/from16 v10, p1

    .restart local v10    # "b1":Landroid/graphics/Bitmap;
    goto :goto_4
.end method
