.class Lcom/android/internal/telephony/cat/SetEventListParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventInfo:[I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "eventInfo"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/SetEventListParams;->eventInfo:[I

    return-void
.end method
