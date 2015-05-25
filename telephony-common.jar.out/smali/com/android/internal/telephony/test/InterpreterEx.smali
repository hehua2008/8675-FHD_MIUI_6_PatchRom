.class Lcom/android/internal/telephony/test/InterpreterEx;
.super Ljava/lang/Exception;
.source "ModelInterpreter.java"


# instance fields
.field result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/test/InterpreterEx;->result:Ljava/lang/String;

    .line 130
    return-void
.end method
