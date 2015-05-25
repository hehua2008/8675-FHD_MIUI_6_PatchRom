.class public Lcom/yulong/android/telephony/LteServiceCellInfo;
.super Ljava/lang/Object;
.source "LteServiceCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/LteServiceCellInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public antenna:I

.field public bandwidth:I

.field public earfcn:I

.field public lte_band:I

.field public pci:I

.field public tac:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/LteServiceCellInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/LteServiceCellInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/LteServiceCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
