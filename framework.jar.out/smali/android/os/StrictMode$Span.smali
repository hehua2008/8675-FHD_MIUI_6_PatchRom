.class public Landroid/os/StrictMode$Span;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Span"
.end annotation


# instance fields
.field private final mContainerState:Landroid/os/StrictMode$ThreadSpanState;

.field private mCreateMillis:J

.field private mName:Ljava/lang/String;

.field private mNext:Landroid/os/StrictMode$Span;

.field private mPrev:Landroid/os/StrictMode$Span;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 1820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1821
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    .line 1822
    return-void
.end method

.method constructor <init>(Landroid/os/StrictMode$ThreadSpanState;)V
    .locals 0
    .param p1, "threadState"    # Landroid/os/StrictMode$ThreadSpanState;

    .prologue
    .line 1815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1816
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    .line 1817
    return-void
.end method

.method static synthetic access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 1808
    iget-object v0, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Landroid/os/StrictMode$Span;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 1808
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/os/StrictMode$Span;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 1808
    iget-object v0, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/os/StrictMode$Span;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1808
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2002(Landroid/os/StrictMode$Span;J)J
    .locals 0
    .param p0, "x0"    # Landroid/os/StrictMode$Span;
    .param p1, "x1"    # J

    .prologue
    .line 1808
    iput-wide p1, p0, Landroid/os/StrictMode$Span;->mCreateMillis:J

    return-wide p1
.end method

.method static synthetic access$2102(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Landroid/os/StrictMode$Span;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 1808
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 1835
    iget-object v0, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    .line 1836
    .local v0, "state":Landroid/os/StrictMode$ThreadSpanState;
    monitor-enter v0

    .line 1837
    :try_start_0
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1839
    monitor-exit v0

    .line 1870
    :goto_0
    return-void

    .line 1843
    :cond_0
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_1

    .line 1844
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    iget-object v2, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    iput-object v2, v1, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 1846
    :cond_1
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 1847
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    iget-object v2, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    iput-object v2, v1, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    .line 1849
    :cond_2
    iget-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    if-ne v1, p0, :cond_3

    .line 1850
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    iput-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 1853
    :cond_3
    iget v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 1855
    # getter for: Landroid/os/StrictMode;->LOG_V:Z
    invoke-static {}, Landroid/os/StrictMode;->access$800()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "StrictMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Span finished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_4
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/os/StrictMode$Span;->mCreateMillis:J

    .line 1858
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    .line 1859
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    .line 1860
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 1864
    iget v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 1865
    iget-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    iput-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 1866
    iput-object p0, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 1867
    iget v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    .line 1869
    :cond_5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
