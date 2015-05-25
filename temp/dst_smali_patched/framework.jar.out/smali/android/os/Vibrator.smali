.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# static fields
.field public static final DATA_HAPTICTHEME_DIALPAD:Ljava/lang/String; = "data_haptictheme_dialpad"

.field public static final DATA_HAPTICTHEME_GALLERY:Ljava/lang/String; = "data_haptictheme_gallery"

.field public static final DATA_HAPTICTHEME_LAUNCHER:Ljava/lang/String; = "data_haptictheme_launcher"

.field public static final DATA_HAPTICTHEME_LONGPRESS:Ljava/lang/String; = "data_haptictheme_longpress"

.field public static final DATA_HAPTICTHEME_MULTI_TOUCH:Ljava/lang/String; = "data_haptictheme_multi_touch"

.field public static final DATA_HAPTICTHEME_ROTATE:Ljava/lang/String; = "data_haptictheme_rotate"

.field public static final DATA_HAPTICTHEME_SCROLL:Ljava/lang/String; = "data_haptictheme_scroll"

.field public static final DATA_HAPTICTHEME_SIP:Ljava/lang/String; = "data_haptictheme_SIP"

.field public static final DATA_HAPTICTHEME_VIRTUALKEY:Ljava/lang/String; = "data_haptictheme_virtualkey"

.field public static final DATA_HAPTIC_A2H:Ljava/lang/String; = "haptic_A2H_data"

.field public static final DATA_HAPTIC_VIBRATE:Ljava/lang/String; = "haptic_vibrate_data"

.field public static final DEFAULT:I = 0x0

.field public static final FEEDBACK:I = 0x3

.field public static final HAPTICS_HAPTICTHEME_DIALPAD:I = 0x2

.field public static final HAPTICS_HAPTICTHEME_GALLERY:I = 0x8

.field public static final HAPTICS_HAPTICTHEME_LAUNCHER:I = 0x3

.field public static final HAPTICS_HAPTICTHEME_LOCKSCREEN:I = 0x9

.field public static final HAPTICS_HAPTICTHEME_LONGPRESS:I = 0x4

.field public static final HAPTICS_HAPTICTHEME_MULTITOUCH:I = 0xb

.field public static final HAPTICS_HAPTICTHEME_ROTATE:I = 0x7

.field public static final HAPTICS_HAPTICTHEME_SCROLLING:I = 0xc

.field public static final HAPTICS_HAPTICTHEME_SIP:I = 0x1

.field public static final HAPTICS_HAPTICTHEME_TRY_UNLOCK:I = 0xa

.field public static final HAPTICS_HAPTICTHEME_VIRTUALKEY:I = 0x5

.field public static final NOTIFY:I = 0x2

.field public static final RING:I = 0x1

.field public static final YLTEST:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public cpVibratorSetLevel(I)Z
    .locals 1
    .param p1, "vibratorLevel"    # I

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getRingHapticsName()[Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingHapticsValues()[Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasLinearVibrator()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract hasVibrator()Z
.end method

.method public playEffectSequenceByTime(J)V
    .locals 0
    .param p1, "milliseconds"    # J

    .prologue
    return-void
.end method

.method public playEffectSequenceRepeat(I)V
    .locals 0
    .param p1, "repeat"    # I

    .prologue
    return-void
.end method

.method public playRingHapticsByTime(IJ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "milliseconds"    # J

    .prologue
    return-void
.end method

.method public playRingHapticsRepeat(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "repeat"    # I

    .prologue
    return-void
.end method

.method public playeffect(I)V
    .locals 0
    .param p1, "effectID"    # I

    .prologue
    return-void
.end method

.method public playeffectforce(I)V
    .locals 0
    .param p1, "effectID"    # I

    .prologue
    return-void
.end method

.method public setYLVibrate(IJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "milliseconds"    # J

    .prologue
    return-void
.end method

.method public setYLVibrate(I[JI)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I

    .prologue
    return-void
.end method

.method public stopPlayingEffect()V
    .locals 0

    .prologue
    return-void
.end method

.method public abstract vibrate(ILjava/lang/String;J)V
.end method

.method public abstract vibrate(ILjava/lang/String;[JI)V
.end method

.method public abstract vibrate(J)V
.end method

.method public abstract vibrate([JI)V
.end method
