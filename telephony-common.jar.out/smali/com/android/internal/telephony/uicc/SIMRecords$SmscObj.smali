.class Lcom/android/internal/telephony/uicc/SIMRecords$SmscObj;
.super Ljava/lang/Object;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmscObj"
.end annotation


# instance fields
.field oldAddr:Ljava/lang/String;

.field response:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .param p1, "rsp"    # Landroid/os/Message;
    .param p2, "addr"    # Ljava/lang/String;

    .prologue
    .line 2582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2583
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SmscObj;->response:Landroid/os/Message;

    .line 2584
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SmscObj;->oldAddr:Ljava/lang/String;

    .line 2585
    return-void
.end method
