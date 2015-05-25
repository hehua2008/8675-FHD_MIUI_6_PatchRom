.class public Lcom/android/internal/telephony/RILConstants$RIL_QosClass;
.super Ljava/lang/Object;
.source "RILConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RILConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RIL_QosClass"
.end annotation


# static fields
.field public static final RIL_QOS_BACKGROUND:I = 0x3

.field public static final RIL_QOS_CONVERSATIONAL:I = 0x0

.field public static final RIL_QOS_INTERACTIVE:I = 0x2

.field public static final RIL_QOS_STREAMING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 153
    packed-switch p0, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 154
    :pswitch_0
    const-string v0, "RIL_QOS_CONVERSATIONAL"

    goto :goto_0

    .line 155
    :pswitch_1
    const-string v0, "RIL_QOS_STREAMING"

    goto :goto_0

    .line 156
    :pswitch_2
    const-string v0, "RIL_QOS_INTERACTIVE"

    goto :goto_0

    .line 157
    :pswitch_3
    const-string v0, "RIL_QOS_BACKGROUND"

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
