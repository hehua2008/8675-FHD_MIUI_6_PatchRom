.class final Lcom/yulong/android/uwservice/DialParameters$1;
.super Ljava/lang/Object;
.source "DialParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/uwservice/DialParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yulong/android/uwservice/DialParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/uwservice/DialParameters;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 50
    new-instance v0, Lcom/yulong/android/uwservice/DialParameters;

    invoke-direct {v0}, Lcom/yulong/android/uwservice/DialParameters;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/yulong/android/uwservice/DialParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/uwservice/DialParameters;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/uwservice/DialParameters;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 54
    new-array v0, p1, [Lcom/yulong/android/uwservice/DialParameters;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/yulong/android/uwservice/DialParameters$1;->newArray(I)[Lcom/yulong/android/uwservice/DialParameters;

    move-result-object v0

    return-object v0
.end method
