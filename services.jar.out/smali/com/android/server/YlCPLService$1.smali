.class Lcom/android/server/YlCPLService$1;
.super Ljava/lang/Object;
.source "YlCPLService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/YlCPLService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/YlCPLService;


# direct methods
.method constructor <init>(Lcom/android/server/YlCPLService;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/YlCPLService$1;->this$0:Lcom/android/server/YlCPLService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/YlCPLService$1;->this$0:Lcom/android/server/YlCPLService;

    # invokes: Lcom/android/server/YlCPLService;->parse()I
    invoke-static {v0}, Lcom/android/server/YlCPLService;->access$100(Lcom/android/server/YlCPLService;)I

    move-result v0

    # setter for: Lcom/android/server/YlCPLService;->mInit:I
    invoke-static {v0}, Lcom/android/server/YlCPLService;->access$002(I)I

    .line 112
    return-void
.end method
