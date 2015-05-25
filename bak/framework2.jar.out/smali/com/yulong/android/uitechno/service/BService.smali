.class Lcom/yulong/android/uitechno/service/BService;
.super Ljava/lang/Object;
.source "UitechnoService.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1741
    iput-object p1, p0, Lcom/yulong/android/uitechno/service/BService;->mContext:Landroid/content/Context;

    .line 1742
    return-void
.end method


# virtual methods
.method onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1746
    const/4 v0, 0x0

    return v0
.end method

.method systemReady()V
    .locals 0

    .prologue
    .line 1744
    return-void
.end method
