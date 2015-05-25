.class public Lcom/yulong/android/telephony/PreferredPlmnInfo;
.super Ljava/lang/Object;
.source "PreferredPlmnInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/PreferredPlmnInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field e_utranAct:I

.field format:I

.field gsmAct:I

.field gsmCompactAct:I

.field index:I

.field oper:Ljava/lang/String;

.field utranAct:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/PreferredPlmnInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/PreferredPlmnInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "format"    # I
    .param p3, "oper"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "e_utranAct"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->e_utranAct:I

    iput p1, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    iput p2, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    iput-object p3, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    iput p4, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    iput p5, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    iput p6, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    iput p7, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->e_utranAct:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getEUtranAct()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->e_utranAct:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    return v0
.end method

.method public getGsmAct()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    return v0
.end method

.method public getGsmCompactAct()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    return v0
.end method

.method public getOper()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    return-object v0
.end method

.method public getUtranAct()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->e_utranAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
