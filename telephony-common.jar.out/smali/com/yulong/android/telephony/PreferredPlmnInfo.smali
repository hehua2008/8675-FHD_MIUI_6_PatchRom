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
    .line 129
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

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    .line 48
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    .line 50
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    .line 51
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    .line 52
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    .line 53
    iput v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->e_utranAct:I

    .line 92
    iput p1, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    .line 93
    iput p2, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    .line 94
    iput-object p3, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    .line 95
    iput p4, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    .line 96
    iput p5, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    .line 97
    iput p6, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    .line 98
    iput p7, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->e_utranAct:I

    .line 99
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getEUtranAct()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->e_utranAct:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    return v0
.end method

.method public getGsmAct()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    return v0
.end method

.method public getGsmCompactAct()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    return v0
.end method

.method public getOper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    return-object v0
.end method

.method public getUtranAct()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 116
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->oper:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->gsmCompactAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->utranAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/yulong/android/telephony/PreferredPlmnInfo;->e_utranAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
