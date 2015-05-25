.class public Lcom/android/internal/policy/impl/UpdateProximity;
.super Ljava/lang/Object;
.source "UpdateProximity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkToCalibrateProximity(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v13, 0x20000

    const/4 v12, 0x0

    .line 41
    const-string v0, "persist.sys.proximity.update"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 44
    .local v1, "mSensorManager":Landroid/hardware/SensorManager;
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 45
    .local v3, "sensor":Landroid/hardware/Sensor;
    new-instance v2, Lcom/android/internal/policy/impl/UpdateProximity$1;

    invoke-direct {v2}, Lcom/android/internal/policy/impl/UpdateProximity$1;-><init>()V

    .line 53
    .local v2, "l":Landroid/hardware/SensorEventListener;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v4, "textView":Landroid/widget/TextView;
    const v0, 0x10406f6

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 55
    const/high16 v0, -0x1000000

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 57
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 59
    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    .local v7, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 61
    const/high16 v0, 0x41700000    # 15.0f

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v5

    float-to-int v8, v0

    .line 62
    .local v8, "padding":I
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x5

    invoke-direct {v0, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x10406f7

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    new-instance v0, Lcom/android/internal/policy/impl/UpdateProximity$3;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/UpdateProximity$3;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v5, 0x1040009

    new-instance v10, Lcom/android/internal/policy/impl/UpdateProximity$2;

    invoke-direct {v10}, Lcom/android/internal/policy/impl/UpdateProximity$2;-><init>()V

    invoke-virtual {v0, v5, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 118
    .local v6, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v5, 0x7d3

    invoke-virtual {v0, v5}, Landroid/view/Window;->setType(I)V

    .line 119
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v13, v13}, Landroid/view/Window;->setFlags(II)V

    .line 122
    invoke-virtual {v6, v12}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 123
    invoke-virtual {v6, v12}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 125
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
