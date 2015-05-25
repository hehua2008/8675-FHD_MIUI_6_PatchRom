.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_INDEX:I = 0x8

.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field private static final INDEX_FILE_VERSION:I = 0x3

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static final sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 188
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 189
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 190
    return-void
.end method

.method private indexFile()Ljava/io/RandomAccessFile;
    .locals 7

    .prologue
    .line 157
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    .line 158
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldIndexFile()V

    .line 159
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Landroid/media/MiniThumbFile;->indexFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 161
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_1

    .line 180
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 183
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;

    return-object v4

    .line 170
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private indexFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbindex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 76
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 79
    .local v0, "file":Landroid/media/MiniThumbFile;
    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0    # "file":Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 82
    .restart local v0    # "file":Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit v3

    return-object v0

    .line 76
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    .end local v1    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 7

    .prologue
    .line 108
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    .line 109
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 110
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 112
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_1

    .line 131
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 134
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    return-object v4

    .line 121
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeOldFile()V
    .locals 3

    .prologue
    .line 96
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "oldPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private removeOldIndexFile()V
    .locals 3

    .prologue
    .line 145
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->indexFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "oldPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 4

    .prologue
    .line 69
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 70
    .local v0, "file":Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 72
    :cond_0
    :try_start_1
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit v3

    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 195
    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 203
    :try_start_3
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :catch_0
    move-exception v0

    goto :goto_1

    .line 197
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getMagic(J)J
    .locals 17
    .param p1, "id"    # J

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v15

    .line 219
    .local v15, "r":Ljava/io/RandomAccessFile;
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->indexFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    .line 220
    .local v16, "ri":Ljava/io/RandomAccessFile;
    if-eqz v15, :cond_7

    if-eqz v16, :cond_7

    .line 221
    const/4 v12, 0x0

    .line 222
    .local v12, "lock":Ljava/nio/channels/FileLock;
    const-wide/16 v8, 0x8

    mul-long v3, v8, p1

    .line 223
    .local v3, "index":J
    const-wide/16 v13, -0x1

    .line 225
    .local v13, "pos":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x8

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v12

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_9

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 243
    .end local v13    # "pos":J
    .local v6, "pos":J
    :goto_0
    if-eqz v12, :cond_0

    :try_start_2
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    :cond_0
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-gez v2, :cond_5

    const-wide/16 v8, 0x0

    .line 282
    .end local v3    # "index":J
    .end local v6    # "pos":J
    .end local v12    # "lock":Ljava/nio/channels/FileLock;
    :cond_1
    :goto_2
    monitor-exit p0

    return-wide v8

    .line 235
    .restart local v3    # "index":J
    .restart local v12    # "lock":Ljava/nio/channels/FileLock;
    .restart local v13    # "pos":J
    :catch_0
    move-exception v11

    .line 236
    .local v11, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v2, "MiniThumbFile"

    const-string v5, "Got exception checking file position: "

    invoke-static {v2, v5, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    if-eqz v12, :cond_2

    :try_start_4
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-wide v6, v13

    .line 247
    .end local v13    # "pos":J
    .restart local v6    # "pos":J
    goto :goto_1

    .line 245
    .end local v6    # "pos":J
    .restart local v13    # "pos":J
    :catch_1
    move-exception v2

    move-wide v6, v13

    .line 248
    .end local v13    # "pos":J
    .restart local v6    # "pos":J
    goto :goto_1

    .line 237
    .end local v6    # "pos":J
    .end local v11    # "ex":Ljava/io/IOException;
    .restart local v13    # "pos":J
    :catch_2
    move-exception v11

    .line 239
    .local v11, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got exception when reading position, id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", disk full or mount read-only? "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    if-eqz v12, :cond_3

    :try_start_6
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    move-wide v6, v13

    .line 247
    .end local v13    # "pos":J
    .restart local v6    # "pos":J
    goto :goto_1

    .line 245
    .end local v6    # "pos":J
    .restart local v13    # "pos":J
    :catch_3
    move-exception v2

    move-wide v6, v13

    .line 248
    .end local v13    # "pos":J
    .restart local v6    # "pos":J
    goto :goto_1

    .line 242
    .end local v6    # "pos":J
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    .restart local v13    # "pos":J
    :catchall_0
    move-exception v2

    .line 243
    if-eqz v12, :cond_4

    :try_start_7
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 247
    :cond_4
    :goto_3
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 218
    .end local v3    # "index":J
    .end local v12    # "lock":Ljava/nio/channels/FileLock;
    .end local v13    # "pos":J
    .end local v15    # "r":Ljava/io/RandomAccessFile;
    .end local v16    # "ri":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 253
    .restart local v3    # "index":J
    .restart local v6    # "pos":J
    .restart local v12    # "lock":Ljava/nio/channels/FileLock;
    .restart local v15    # "r":Ljava/io/RandomAccessFile;
    .restart local v16    # "ri":Ljava/io/RandomAccessFile;
    :cond_5
    const/4 v12, 0x0

    .line 255
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v8, 0x9

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v12

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v2

    const/16 v5, 0x9

    if-ne v2, v5, :cond_6

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-wide v8

    .line 275
    if-eqz v12, :cond_1

    :try_start_a
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    .line 277
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .line 275
    :cond_6
    if-eqz v12, :cond_7

    :try_start_b
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 282
    .end local v3    # "index":J
    .end local v6    # "pos":J
    .end local v12    # "lock":Ljava/nio/channels/FileLock;
    :cond_7
    :goto_4
    const-wide/16 v8, 0x0

    goto/16 :goto_2

    .line 267
    .restart local v3    # "index":J
    .restart local v6    # "pos":J
    .restart local v12    # "lock":Ljava/nio/channels/FileLock;
    :catch_5
    move-exception v11

    .line 268
    .local v11, "ex":Ljava/io/IOException;
    :try_start_c
    const-string v2, "MiniThumbFile"

    const-string v5, "Got exception checking file magic: "

    invoke-static {v2, v5, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 275
    if-eqz v12, :cond_7

    :try_start_d
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    .line 277
    :catch_6
    move-exception v2

    goto :goto_4

    .line 269
    .end local v11    # "ex":Ljava/io/IOException;
    :catch_7
    move-exception v11

    .line 271
    .local v11, "ex":Ljava/lang/RuntimeException;
    :try_start_e
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got exception when reading magic, id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", disk full or mount read-only? "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 275
    if-eqz v12, :cond_7

    :try_start_f
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_4

    .line 277
    :catch_8
    move-exception v2

    goto :goto_4

    .line 274
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v2

    .line 275
    if-eqz v12, :cond_8

    :try_start_10
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 279
    :cond_8
    :goto_5
    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 245
    :catch_9
    move-exception v2

    goto/16 :goto_1

    .end local v6    # "pos":J
    .restart local v13    # "pos":J
    :catch_a
    move-exception v5

    goto/16 :goto_3

    .line 277
    .end local v13    # "pos":J
    .restart local v6    # "pos":J
    :catch_b
    move-exception v2

    goto :goto_4

    :catch_c
    move-exception v5

    goto :goto_5

    .end local v6    # "pos":J
    .restart local v13    # "pos":J
    :cond_9
    move-wide v6, v13

    .end local v13    # "pos":J
    .restart local v6    # "pos":J
    goto/16 :goto_0
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 22
    .param p1, "id"    # J
    .param p3, "data"    # [B

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v19

    .line 368
    .local v19, "r":Ljava/io/RandomAccessFile;
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->indexFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v20

    .line 369
    .local v20, "ri":Ljava/io/RandomAccessFile;
    if-eqz v19, :cond_0

    if-nez v20, :cond_2

    :cond_0
    const/16 p3, 0x0

    .line 434
    .end local p3    # "data":[B
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p3

    .line 372
    .restart local p3    # "data":[B
    :cond_2
    const/4 v14, 0x0

    .line 373
    .local v14, "lock":Ljava/nio/channels/FileLock;
    const-wide/16 v8, 0x8

    mul-long v3, v8, p1

    .line 374
    .local v3, "index":J
    const-wide/16 v17, -0x1

    .line 376
    .local v17, "pos":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x8

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v14

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_b

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 394
    .end local v17    # "pos":J
    .local v6, "pos":J
    :goto_1
    if-eqz v14, :cond_3

    :try_start_2
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 401
    :cond_3
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-gez v2, :cond_7

    const/16 p3, 0x0

    goto :goto_0

    .line 386
    .end local v6    # "pos":J
    .restart local v17    # "pos":J
    :catch_0
    move-exception v11

    .line 387
    .local v11, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception when reading position id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", exception: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    if-eqz v14, :cond_4

    :try_start_4
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    move-wide/from16 v6, v17

    .line 398
    .end local v17    # "pos":J
    .restart local v6    # "pos":J
    goto :goto_2

    .line 396
    .end local v6    # "pos":J
    .restart local v17    # "pos":J
    :catch_1
    move-exception v2

    move-wide/from16 v6, v17

    .line 399
    .end local v17    # "pos":J
    .restart local v6    # "pos":J
    goto :goto_2

    .line 388
    .end local v6    # "pos":J
    .end local v11    # "ex":Ljava/io/IOException;
    .restart local v17    # "pos":J
    :catch_2
    move-exception v11

    .line 390
    .local v11, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got exception when reading position, id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", disk full or mount read-only? "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 394
    if-eqz v14, :cond_5

    :try_start_6
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    move-wide/from16 v6, v17

    .line 398
    .end local v17    # "pos":J
    .restart local v6    # "pos":J
    goto :goto_2

    .line 396
    .end local v6    # "pos":J
    .restart local v17    # "pos":J
    :catch_3
    move-exception v2

    move-wide/from16 v6, v17

    .line 399
    .end local v17    # "pos":J
    .restart local v6    # "pos":J
    goto :goto_2

    .line 393
    .end local v6    # "pos":J
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    .restart local v17    # "pos":J
    :catchall_0
    move-exception v2

    .line 394
    if-eqz v14, :cond_6

    :try_start_7
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 398
    :cond_6
    :goto_3
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 367
    .end local v3    # "index":J
    .end local v14    # "lock":Ljava/nio/channels/FileLock;
    .end local v17    # "pos":J
    .end local v19    # "r":Ljava/io/RandomAccessFile;
    .end local v20    # "ri":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 404
    .restart local v3    # "index":J
    .restart local v6    # "pos":J
    .restart local v14    # "lock":Ljava/nio/channels/FileLock;
    .restart local v19    # "r":Ljava/io/RandomAccessFile;
    .restart local v20    # "ri":Ljava/io/RandomAccessFile;
    :cond_7
    const/4 v14, 0x0

    .line 406
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 407
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v8, 0x2710

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v14

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v21

    .line 409
    .local v21, "size":I
    const/16 v2, 0xd

    move/from16 v0, v21

    if-le v0, v2, :cond_8

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    .line 412
    .local v12, "flag":B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v15

    .line 413
    .local v15, "magic":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 415
    .local v13, "length":I
    add-int/lit8 v2, v13, 0xd

    move/from16 v0, v21

    if-lt v0, v2, :cond_8

    move-object/from16 v0, p3

    array-length v2, v0

    if-lt v2, v13, :cond_8

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v5, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 428
    if-eqz v14, :cond_1

    :try_start_a
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 430
    :catch_4
    move-exception v2

    goto/16 :goto_0

    .line 428
    .end local v12    # "flag":B
    .end local v13    # "length":I
    .end local v15    # "magic":J
    :cond_8
    if-eqz v14, :cond_9

    :try_start_b
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 434
    .end local v21    # "size":I
    :cond_9
    :goto_4
    const/16 p3, 0x0

    goto/16 :goto_0

    .line 420
    :catch_5
    move-exception v11

    .line 421
    .local v11, "ex":Ljava/io/IOException;
    :try_start_c
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception when reading thumbnail id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", exception: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 428
    if-eqz v14, :cond_9

    :try_start_d
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    .line 430
    :catch_6
    move-exception v2

    goto :goto_4

    .line 422
    .end local v11    # "ex":Ljava/io/IOException;
    :catch_7
    move-exception v11

    .line 424
    .local v11, "ex":Ljava/lang/RuntimeException;
    :try_start_e
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got exception when reading thumbnail, id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", disk full or mount read-only? "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 428
    if-eqz v14, :cond_9

    :try_start_f
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_4

    .line 430
    :catch_8
    move-exception v2

    goto :goto_4

    .line 427
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v2

    .line 428
    if-eqz v14, :cond_a

    :try_start_10
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 432
    :cond_a
    :goto_5
    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 396
    :catch_9
    move-exception v2

    goto/16 :goto_2

    .end local v6    # "pos":J
    .restart local v17    # "pos":J
    :catch_a
    move-exception v5

    goto/16 :goto_3

    .line 430
    .end local v17    # "pos":J
    .restart local v6    # "pos":J
    .restart local v21    # "size":I
    :catch_b
    move-exception v2

    goto :goto_4

    .end local v21    # "size":I
    :catch_c
    move-exception v5

    goto :goto_5

    .end local v6    # "pos":J
    .restart local v17    # "pos":J
    :cond_b
    move-wide/from16 v6, v17

    .end local v17    # "pos":J
    .restart local v6    # "pos":J
    goto/16 :goto_1
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 18
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v15

    .line 288
    .local v15, "r":Ljava/io/RandomAccessFile;
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->indexFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    .line 289
    .local v16, "ri":Ljava/io/RandomAccessFile;
    if-eqz v15, :cond_0

    if-nez v16, :cond_1

    .line 357
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 292
    :cond_1
    const/4 v12, 0x0

    .line 293
    .local v12, "lock":Ljava/nio/channels/FileLock;
    const-wide/16 v5, 0x8

    mul-long v3, v5, p2

    .line 294
    .local v3, "index":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v13

    .line 295
    .local v13, "pos":J
    const/16 v17, 0x0

    .line 297
    .local v17, "writeIndexSuccess":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v12

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    const/16 v17, 0x1

    .line 314
    if-eqz v12, :cond_2

    :try_start_3
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 321
    :cond_2
    :goto_1
    if-eqz v17, :cond_0

    .line 324
    const/4 v12, 0x0

    .line 326
    if-eqz p1, :cond_5

    .line 327
    :try_start_4
    move-object/from16 v0, p1

    array-length v2, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v5, 0x2703

    if-le v2, v5, :cond_4

    .line 351
    if-eqz v12, :cond_0

    :try_start_5
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 353
    :catch_0
    move-exception v2

    goto :goto_0

    .line 304
    :catch_1
    move-exception v11

    .line 305
    .local v11, "ex":Ljava/io/IOException;
    :try_start_6
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t save mini thumbnail position for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 313
    .end local v11    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 314
    if-eqz v12, :cond_3

    :try_start_7
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 318
    :cond_3
    :goto_2
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 287
    .end local v3    # "index":J
    .end local v12    # "lock":Ljava/nio/channels/FileLock;
    .end local v13    # "pos":J
    .end local v15    # "r":Ljava/io/RandomAccessFile;
    .end local v16    # "ri":Ljava/io/RandomAccessFile;
    .end local v17    # "writeIndexSuccess":Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 308
    .restart local v3    # "index":J
    .restart local v12    # "lock":Ljava/nio/channels/FileLock;
    .restart local v13    # "pos":J
    .restart local v15    # "r":Ljava/io/RandomAccessFile;
    .restart local v16    # "ri":Ljava/io/RandomAccessFile;
    .restart local v17    # "writeIndexSuccess":Z
    :catch_2
    move-exception v11

    .line 310
    .local v11, "ex":Ljava/lang/RuntimeException;
    :try_start_9
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t save mini thumbnail position for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 314
    if-eqz v12, :cond_2

    :try_start_a
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 316
    :catch_3
    move-exception v2

    goto :goto_1

    .line 331
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    :cond_4
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 338
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v8, 0x2710

    const/4 v10, 0x0

    move-wide v6, v13

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v12

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v13, v14}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 351
    :cond_5
    if-eqz v12, :cond_0

    :try_start_c
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 353
    :catch_4
    move-exception v2

    goto/16 :goto_0

    .line 341
    :catch_5
    move-exception v11

    .line 342
    .local v11, "ex":Ljava/io/IOException;
    :try_start_d
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    throw v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 350
    .end local v11    # "ex":Ljava/io/IOException;
    :catchall_2
    move-exception v2

    .line 351
    if-eqz v12, :cond_6

    :try_start_e
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 355
    :cond_6
    :goto_3
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 345
    :catch_6
    move-exception v11

    .line 347
    .local v11, "ex":Ljava/lang/RuntimeException;
    :try_start_10
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 351
    if-eqz v12, :cond_0

    :try_start_11
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    .line 353
    :catch_7
    move-exception v2

    goto/16 :goto_0

    .line 316
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v2

    goto/16 :goto_1

    :catch_9
    move-exception v5

    goto/16 :goto_2

    .line 353
    :catch_a
    move-exception v5

    goto :goto_3
.end method
