.class public Landroid/graphics/YuvImage;
.super Ljava/lang/Object;
.source "YuvImage.java"


# static fields
.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000


# instance fields
.field private mData:[B

.field private mFormat:I

.field private mHeight:I

.field private mRotate:I

.field private mStrides:[I

.field private mWidth:I


# direct methods
.method public constructor <init>(IIII[I)V
    .locals 2
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotate"    # I
    .param p5, "strides"    # [I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support ImageFormat.NV21 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must large than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    if-nez p5, :cond_3

    .line 92
    invoke-direct {p0, p2, p1}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 97
    :goto_0
    iput p1, p0, Landroid/graphics/YuvImage;->mFormat:I

    .line 98
    iput p2, p0, Landroid/graphics/YuvImage;->mWidth:I

    .line 99
    iput p3, p0, Landroid/graphics/YuvImage;->mHeight:I

    .line 100
    iput p4, p0, Landroid/graphics/YuvImage;->mRotate:I

    .line 101
    invoke-direct {p0}, Landroid/graphics/YuvImage;->native_setup()V

    .line 102
    return-void

    .line 94
    :cond_3
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    goto :goto_0
.end method

.method public constructor <init>([BIII[I)V
    .locals 2
    .param p1, "yuv"    # [B
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "strides"    # [I

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/16 v0, 0x11

    if-eq p2, v0, :cond_0

    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support ImageFormat.NV21 and ImageFormat.YUY2 for now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    if-lez p3, :cond_1

    if-gtz p4, :cond_2

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must large than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    if-nez p1, :cond_3

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "yuv cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3
    if-nez p5, :cond_4

    .line 136
    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 141
    :goto_0
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    .line 142
    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    .line 143
    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    .line 144
    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    .line 145
    return-void

    .line 138
    :cond_4
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    goto :goto_0
.end method

.method private adjustRectangle(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 282
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 283
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 285
    and-int/lit8 v1, v1, -0x2

    .line 286
    and-int/lit8 v0, v0, -0x2

    .line 287
    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 288
    iget v2, p1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 289
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 290
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 293
    :cond_0
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 295
    and-int/lit8 v1, v1, -0x2

    .line 296
    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 297
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 299
    :cond_1
    return-void
.end method

.method private calculateStrides(II)[I
    .locals 5
    .param p1, "width"    # I
    .param p2, "format"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "strides":[I
    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    .line 268
    const/4 v2, 0x2

    new-array v0, v2, [I

    .end local v0    # "strides":[I
    aput p1, v0, v3

    aput p1, v0, v4

    .restart local v0    # "strides":[I
    move-object v1, v0

    .line 277
    .end local v0    # "strides":[I
    .local v1, "strides":[I
    :goto_0
    return-object v1

    .line 272
    .end local v1    # "strides":[I
    .restart local v0    # "strides":[I
    :cond_0
    const/16 v2, 0x14

    if-ne p2, v2, :cond_1

    .line 273
    new-array v0, v4, [I

    .end local v0    # "strides":[I
    mul-int/lit8 v2, p1, 0x2

    aput v2, v0, v3

    .restart local v0    # "strides":[I
    move-object v1, v0

    .line 274
    .end local v0    # "strides":[I
    .restart local v1    # "strides":[I
    goto :goto_0

    .end local v1    # "strides":[I
    .restart local v0    # "strides":[I
    :cond_1
    move-object v1, v0

    .line 277
    .end local v0    # "strides":[I
    .restart local v1    # "strides":[I
    goto :goto_0
.end method

.method private static native nativeCompressToGif([BIIII[IILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method


# virtual methods
.method calculateOffsets(II)[I
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "offsets":[I
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 251
    const/4 v2, 0x2

    new-array v0, v2, [I

    .end local v0    # "offsets":[I
    iget-object v2, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v2, v2, v4

    mul-int/2addr v2, p2

    add-int/2addr v2, p1

    aput v2, v0, v4

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    iget-object v3, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v3, v3, v4

    mul-int/2addr v2, v3

    div-int/lit8 v3, p2, 0x2

    iget-object v4, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v4, v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v5

    .restart local v0    # "offsets":[I
    move-object v1, v0

    .line 262
    .end local v0    # "offsets":[I
    .local v1, "offsets":[I
    :goto_0
    return-object v1

    .line 257
    .end local v1    # "offsets":[I
    .restart local v0    # "offsets":[I
    :cond_0
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 258
    new-array v0, v5, [I

    .end local v0    # "offsets":[I
    iget-object v2, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v2, v2, v4

    mul-int/2addr v2, p2

    div-int/lit8 v3, p1, 0x2

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v4

    .restart local v0    # "offsets":[I
    move-object v1, v0

    .line 259
    .end local v0    # "offsets":[I
    .restart local v1    # "offsets":[I
    goto :goto_0

    .end local v1    # "offsets":[I
    .restart local v0    # "offsets":[I
    :cond_1
    move-object v1, v0

    .line 262
    .end local v0    # "offsets":[I
    .restart local v1    # "offsets":[I
    goto :goto_0
.end method

.method public compressToGif([BILjava/io/OutputStream;)Z
    .locals 9
    .param p1, "yuv"    # [B
    .param p2, "frame"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "yuv cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    .line 204
    if-nez p3, :cond_1

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    iget v2, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v3, p0, Landroid/graphics/YuvImage;->mHeight:I

    iget v4, p0, Landroid/graphics/YuvImage;->mRotate:I

    iget-object v5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/16 v0, 0x1000

    new-array v8, v0, [B

    move-object v0, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Landroid/graphics/YuvImage;->nativeCompressToGif([BIIII[IILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .locals 10
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .line 163
    new-instance v9, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v1, p0, Landroid/graphics/YuvImage;->mHeight:I

    invoke-direct {v9, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 164
    .local v9, "wholeImage":Landroid/graphics/Rect;
    invoke-virtual {v9, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rectangle is not inside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    if-nez p3, :cond_3

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_3
    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    .line 178
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    move-result-object v4

    .line 180
    .local v4, "offsets":[I
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/16 v6, 0x1000

    new-array v8, v6, [B

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Landroid/graphics/YuvImage;->mHeight:I

    return v0
.end method

.method public getStrides()[I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    return v0
.end method

.method public getYuvData()[B
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    return-object v0
.end method

.method public getYuvFormat()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Landroid/graphics/YuvImage;->native_finalize()V

    .line 321
    return-void
.end method
