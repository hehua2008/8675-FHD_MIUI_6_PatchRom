.class public Landroid/webkit/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/Plugin$1;,
        Landroid/webkit/Plugin$DefaultClickHandler;,
        Landroid/webkit/Plugin$PreferencesClickHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/webkit/Plugin$DefaultClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin$1;)V

    iput-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    .line 74
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/Plugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/Plugin;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/Plugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/Plugin;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchClickEvent(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    invoke-interface {v0, p1}, Landroid/webkit/Plugin$PreferencesClickHandler;->handleClickEvent(Landroid/content/Context;)V

    .line 188
    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setClickHandler(Landroid/webkit/Plugin$PreferencesClickHandler;)V
    .locals 0
    .param p1, "handler"    # Landroid/webkit/Plugin$PreferencesClickHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    .line 174
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    iput-object p1, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    iput-object p1, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method
