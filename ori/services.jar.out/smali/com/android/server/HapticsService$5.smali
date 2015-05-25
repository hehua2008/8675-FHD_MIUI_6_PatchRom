.class Lcom/android/server/HapticsService$5;
.super Landroid/database/ContentObserver;
.source "HapticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HapticsService;

.field final synthetic val$setting_str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/HapticsService;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    iput-object p3, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    # getter for: Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/HapticsService;->access$500(Lcom/android/server/HapticsService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 274
    .local v0, "val":I
    const-string v1, "data_haptictheme_SIP"

    iget-object v2, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    # setter for: Lcom/android/server/HapticsService;->mHapticsThemeSIP:I
    invoke-static {v1, v0}, Lcom/android/server/HapticsService;->access$802(Lcom/android/server/HapticsService;I)I

    .line 276
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_HAPTICTHEME_SIP: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const-string v1, "data_haptictheme_dialpad"

    iget-object v2, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    # setter for: Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I
    invoke-static {v1, v0}, Lcom/android/server/HapticsService;->access$902(Lcom/android/server/HapticsService;I)I

    .line 279
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_HAPTICTHEME_DIALPAD: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_2
    const-string v1, "data_haptictheme_launcher"

    iget-object v2, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    iget-object v1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    # setter for: Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I
    invoke-static {v1, v0}, Lcom/android/server/HapticsService;->access$1002(Lcom/android/server/HapticsService;I)I

    .line 282
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_HAPTICTHEME_LAUNCHER: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_3
    const-string v1, "data_haptictheme_longpress"

    iget-object v2, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 284
    iget-object v1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    # setter for: Lcom/android/server/HapticsService;->mHapticsThemeLPress:I
    invoke-static {v1, v0}, Lcom/android/server/HapticsService;->access$1102(Lcom/android/server/HapticsService;I)I

    .line 285
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_HAPTICTHEME_LONGPRESS: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_4
    const-string v1, "data_haptictheme_virtualkey"

    iget-object v2, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 287
    iget-object v1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    # setter for: Lcom/android/server/HapticsService;->mHapticsThemeVK:I
    invoke-static {v1, v0}, Lcom/android/server/HapticsService;->access$1202(Lcom/android/server/HapticsService;I)I

    .line 288
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_HAPTICTHEME_VIRTUALKEY: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 289
    :cond_5
    const-string v1, "data_haptictheme_rotate"

    iget-object v2, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 290
    iget-object v1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    # setter for: Lcom/android/server/HapticsService;->mHapticsThemeRotate:I
    invoke-static {v1, v0}, Lcom/android/server/HapticsService;->access$1302(Lcom/android/server/HapticsService;I)I

    .line 291
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_HAPTIC_ROTATE: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 292
    :cond_6
    const-string v1, "data_haptictheme_gallery"

    iget-object v2, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 293
    iget-object v1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    # setter for: Lcom/android/server/HapticsService;->mHapticsThemeGallery:I
    invoke-static {v1, v0}, Lcom/android/server/HapticsService;->access$1402(Lcom/android/server/HapticsService;I)I

    .line 294
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_HAPTIC_GALLERY: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 295
    :cond_7
    const-string v1, "data_haptictheme_scroll"

    iget-object v2, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 296
    iget-object v1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    # setter for: Lcom/android/server/HapticsService;->mHapticsScrolling:I
    invoke-static {v1, v0}, Lcom/android/server/HapticsService;->access$1502(Lcom/android/server/HapticsService;I)I

    .line 297
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_HAPTICTHEME_SCROLL: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 298
    :cond_8
    const-string v1, "data_haptictheme_multi_touch"

    iget-object v2, p0, Lcom/android/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/server/HapticsService$5;->this$0:Lcom/android/server/HapticsService;

    # setter for: Lcom/android/server/HapticsService;->mHapticsMultitouch:I
    invoke-static {v1, v0}, Lcom/android/server/HapticsService;->access$1602(Lcom/android/server/HapticsService;I)I

    .line 300
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_HAPTICTHEME_MULTI_TOUCH: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
