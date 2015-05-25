.class Landroid/widget/RigoAnalogClock$2;
.super Landroid/content/BroadcastReceiver;
.source "RigoAnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RigoAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RigoAnalogClock;


# direct methods
.method constructor <init>(Landroid/widget/RigoAnalogClock;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Landroid/widget/RigoAnalogClock$2;->this$0:Landroid/widget/RigoAnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 327
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "tz":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/RigoAnalogClock$2;->this$0:Landroid/widget/RigoAnalogClock;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    # setter for: Landroid/widget/RigoAnalogClock;->mCalendar:Landroid/text/format/Time;
    invoke-static {v1, v2}, Landroid/widget/RigoAnalogClock;->access$402(Landroid/widget/RigoAnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 332
    .end local v0    # "tz":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/RigoAnalogClock$2;->this$0:Landroid/widget/RigoAnalogClock;

    # invokes: Landroid/widget/RigoAnalogClock;->onTimeChanged()V
    invoke-static {v1}, Landroid/widget/RigoAnalogClock;->access$500(Landroid/widget/RigoAnalogClock;)V

    .line 334
    iget-object v1, p0, Landroid/widget/RigoAnalogClock$2;->this$0:Landroid/widget/RigoAnalogClock;

    invoke-virtual {v1}, Landroid/widget/RigoAnalogClock;->invalidate()V

    .line 335
    return-void
.end method
