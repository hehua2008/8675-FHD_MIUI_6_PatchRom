.class Lcom/android/server/AlarmManagerService$AlarmThread$1;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerService$AlarmThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$AlarmThread;

.field final synthetic val$p:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$AlarmThread;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread$1;->this$1:Lcom/android/server/AlarmManagerService$AlarmThread;

    iput-object p2, p0, Lcom/android/server/AlarmManagerService$AlarmThread$1;->val$p:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmThread$1;->this$1:Lcom/android/server/AlarmManagerService$AlarmThread;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmThread$1;->val$p:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 1522
    return-void
.end method
