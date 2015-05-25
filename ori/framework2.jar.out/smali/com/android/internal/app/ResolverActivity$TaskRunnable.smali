.class Lcom/android/internal/app/ResolverActivity$TaskRunnable;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunnable"
.end annotation


# instance fields
.field private info:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 0
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$TaskRunnable;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$TaskRunnable;->info:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1141
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$TaskRunnable;->info:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$TaskRunnable;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$TaskRunnable;->info:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity$Injector;->loadIconForResolveInfo(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1145
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$TaskRunnable;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 1146
    return-void
.end method
