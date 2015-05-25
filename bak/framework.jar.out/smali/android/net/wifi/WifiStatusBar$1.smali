.class Landroid/net/wifi/WifiStatusBar$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStatusBar;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStatusBar;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStatusBar;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Landroid/net/wifi/WifiStatusBar$1;->this$0:Landroid/net/wifi/WifiStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    if-nez p2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStatusBar$1;->this$0:Landroid/net/wifi/WifiStatusBar;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiStatusBar;->updateWifi(Landroid/content/Intent;)V

    goto :goto_0
.end method
