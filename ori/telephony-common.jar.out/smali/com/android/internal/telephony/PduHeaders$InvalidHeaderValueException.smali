.class Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;
.super Ljava/lang/Exception;
.source "PduHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PduHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidHeaderValueException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1c7f1651e1e18aa6L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2109
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2118
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2119
    return-void
.end method
