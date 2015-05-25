.class public Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
.super Ljava/lang/Object;
.source "AppPermissionBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTEGER_INITVALUE:I = -0x64

.field public static final STRING_INITVALUE:Ljava/lang/String; = ""


# instance fields
.field private _id:J

.field private allowed:I

.field private appName:Ljava/lang/String;

.field private appType:I

.field private endTime:J

.field private isUpdateFlag:I

.field private permName:Ljava/lang/String;

.field private permType:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private proType:I

.field private uid:I

.field private userOpe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean$1;

    invoke-direct {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean$1;-><init>()V

    sput-object v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, -0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x64

    iput-wide v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->_id:J

    iput v2, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->uid:I

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->pkgName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permType:Ljava/lang/String;

    iput v2, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->proType:I

    iput v2, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->allowed:I

    iput v2, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appType:I

    iput v2, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->isUpdateFlag:I

    iput v2, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->userOpe:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "pl"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->readFromPacel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->clone()Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowed()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->allowed:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appType:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->endTime:J

    return-wide v0
.end method

.method public getIsUpdateFlag()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->isUpdateFlag:I

    return v0
.end method

.method public getPermName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permType:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->proType:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->uid:I

    return v0
.end method

.method public getUserOpe()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->userOpe:I

    return v0
.end method

.method public get_id()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->_id:J

    return-wide v0
.end method

.method public readFromPacel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->_id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->proType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->allowed:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->userOpe:I

    return-void
.end method

.method public setAllowed(I)V
    .locals 0
    .param p1, "allowed"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->allowed:I

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppType(I)V
    .locals 0
    .param p1, "appType"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appType:I

    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .prologue
    iput-wide p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->endTime:J

    return-void
.end method

.method public setIsUpdateFlag(I)V
    .locals 0
    .param p1, "isUpdateFlag"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->isUpdateFlag:I

    return-void
.end method

.method public setPermName(Ljava/lang/String;)V
    .locals 0
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permName:Ljava/lang/String;

    return-void
.end method

.method public setPermType(Ljava/lang/String;)V
    .locals 0
    .param p1, "permType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permType:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setProType(I)V
    .locals 0
    .param p1, "proType"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->proType:I

    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->uid:I

    return-void
.end method

.method public setUserOpe(I)V
    .locals 0
    .param p1, "userOpe"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->userOpe:I

    return-void
.end method

.method public set_id(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    iput-wide p1, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->_id:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    iget-wide v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->permType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->proType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->allowed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->appType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->userOpe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
