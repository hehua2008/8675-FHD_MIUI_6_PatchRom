.class synthetic Landroid/widget/TextImage$1;
.super Ljava/lang/Object;
.source "TextImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$text$TextUtils$TruncateAt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 567
    invoke-static {}, Landroid/text/TextUtils$TruncateAt;->values()[Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/TextImage$1;->$SwitchMap$android$text$TextUtils$TruncateAt:[I

    :try_start_0
    sget-object v0, Landroid/widget/TextImage$1;->$SwitchMap$android$text$TextUtils$TruncateAt:[I

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1}, Landroid/text/TextUtils$TruncateAt;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
