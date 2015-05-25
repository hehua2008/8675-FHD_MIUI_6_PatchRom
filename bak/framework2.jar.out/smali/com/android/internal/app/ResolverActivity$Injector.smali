.class Lcom/android/internal/app/ResolverActivity$Injector;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation build Landroid/annotation/CoolLifeHook;
    value = .enum Landroid/annotation/CoolLifeHook$CoolLifeHookType;->NEW_CLASS:Landroid/annotation/CoolLifeHook$CoolLifeHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadIconForResolveInfo(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "activity"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
