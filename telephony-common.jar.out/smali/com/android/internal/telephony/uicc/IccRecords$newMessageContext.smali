.class public Lcom/android/internal/telephony/uicc/IccRecords$newMessageContext;
.super Ljava/lang/Object;
.source "IccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "newMessageContext"
.end annotation


# instance fields
.field public isNewSms:Z

.field public msgIndex:I

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccRecords;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccRecords;ZI)V
    .locals 1
    .param p2, "isNew"    # Z
    .param p3, "index"    # I

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$newMessageContext;->this$0:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords$newMessageContext;->isNewSms:Z

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords$newMessageContext;->msgIndex:I

    .line 193
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/IccRecords$newMessageContext;->isNewSms:Z

    .line 194
    iput p3, p0, Lcom/android/internal/telephony/uicc/IccRecords$newMessageContext;->msgIndex:I

    .line 195
    return-void
.end method
