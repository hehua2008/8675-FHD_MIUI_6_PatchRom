.class Lcom/android/internal/policy/impl/PhoneWindowManager$PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PackageChangeReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PackageChangeReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1234
    const-string v0, "PhoneWindowManager"

    const-string v1, "Package change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PackageChangeReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->loadApplications()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 1237
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PackageChangeReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PackageChangeReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;

    move-result-object v0

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->updateFromSettings()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;->access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager$GestureSettingsObserver;)V

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PackageChangeReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateGestureSwitch()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 1241
    return-void
.end method
