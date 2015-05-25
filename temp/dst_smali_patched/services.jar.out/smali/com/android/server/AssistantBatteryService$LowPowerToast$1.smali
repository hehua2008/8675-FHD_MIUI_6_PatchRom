.class Lcom/android/server/AssistantBatteryService$LowPowerToast$1;
.super Ljava/lang/Object;
.source "AssistantBatteryService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AssistantBatteryService$LowPowerToast;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AssistantBatteryService$LowPowerToast;


# direct methods
.method constructor <init>(Lcom/android/server/AssistantBatteryService$LowPowerToast;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$LowPowerToast$1;->this$0:Lcom/android/server/AssistantBatteryService$LowPowerToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
