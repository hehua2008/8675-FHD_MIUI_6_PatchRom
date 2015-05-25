.class final Lcom/android/internal/policy/impl/UpdateProximity$3;
.super Ljava/lang/Object;
.source "UpdateProximity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UpdateProximity;->checkToCalibrateProximity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$l:Landroid/hardware/SensorEventListener;

.field final synthetic val$mSensorManager:Landroid/hardware/SensorManager;

.field final synthetic val$sensor:Landroid/hardware/Sensor;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$mSensorManager:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$l:Landroid/hardware/SensorEventListener;

    iput-object p3, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$sensor:Landroid/hardware/Sensor;

    iput-object p4, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$textView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v10, 0x1

    .line 72
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mShowing"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 73
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v6, v0

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v6, v0

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    const/4 v6, 0x5

    new-array v5, v6, [I

    .line 81
    .local v5, "values":[I
    iget-object v6, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$l:Landroid/hardware/SensorEventListener;

    iget-object v8, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$sensor:Landroid/hardware/Sensor;

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 82
    iget-object v6, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6, v7, v5}, Landroid/hardware/SensorManager;->cpSensorsCalibrate(Landroid/hardware/Sensor;[I)Z

    .line 83
    iget-object v6, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$l:Landroid/hardware/SensorEventListener;

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 84
    const/4 v6, 0x3

    aget v6, v5, v6

    if-eq v6, v10, :cond_0

    .line 86
    iget-object v6, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$textView:Landroid/widget/TextView;

    const/high16 v7, -0x10000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v6, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 88
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x10406f8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "str":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x10406f6

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    iget-object v6, p0, Lcom/android/internal/policy/impl/UpdateProximity$3;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v6, v0

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "arg0":Landroid/content/DialogInterface;
    const/4 v6, -0x2

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "values":[I
    :goto_0
    return-void

    .line 95
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "values":[I
    .restart local p1    # "arg0":Landroid/content/DialogInterface;
    :cond_0
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "values":[I
    .end local p1    # "arg0":Landroid/content/DialogInterface;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
