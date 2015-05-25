.class Lcom/android/server/AssistantBatteryService$6;
.super Ljava/lang/Object;
.source "AssistantBatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AssistantBatteryService;->showCapacityDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AssistantBatteryService;

.field final synthetic val$showCapacityLevel:I


# direct methods
.method constructor <init>(Lcom/android/server/AssistantBatteryService;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    iput p2, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0xf

    const/16 v10, 0xa

    const/4 v9, 0x5

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v5, 0x10900ee

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .local v2, "mDialogView":Landroid/widget/LinearLayout;
    const v5, 0x10203f5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .local v4, "mimage":Landroid/widget/ImageView;
    const v5, 0x10203f6

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "mbattery":Landroid/widget/TextView;
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    new-instance v1, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .local v1, "mDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v5, Lcom/android/server/AssistantBatteryService$6$1;

    invoke-direct {v5, p0}, Lcom/android/server/AssistantBatteryService$6$1;-><init>(Lcom/android/server/AssistantBatteryService$6;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    new-instance v6, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    invoke-direct {v6, v1}, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;-><init>(Landroid/app/Dialog;)V

    # setter for: Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    invoke-static {v5, v6}, Lcom/android/server/AssistantBatteryService;->access$602(Lcom/android/server/AssistantBatteryService;Lcom/android/server/AssistantBatteryService$AutoCloseDialog;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    if-gt v5, v9, :cond_0

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x10406fa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mAutoCloseDialog:Lcom/android/server/AssistantBatteryService$AutoCloseDialog;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$600(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AutoCloseDialog;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/AssistantBatteryService$AutoCloseDialog;->show(J)V

    return-void

    :cond_0
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    if-le v5, v9, :cond_1

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    if-gt v5, v10, :cond_1

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    if-le v5, v10, :cond_2

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    if-gt v5, v11, :cond_2

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    if-le v5, v11, :cond_3

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    if-gt v5, v12, :cond_3

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    if-le v5, v12, :cond_4

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x19

    if-gt v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x19

    if-le v5, v6, :cond_5

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x1e

    if-gt v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x1e

    if-le v5, v6, :cond_6

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x23

    if-gt v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x23

    if-le v5, v6, :cond_7

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x28

    if-gt v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x28

    if-le v5, v6, :cond_8

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x2d

    if-gt v5, v6, :cond_8

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807d4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_8
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x2d

    if-le v5, v6, :cond_9

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x32

    if-gt v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_9
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x32

    if-le v5, v6, :cond_a

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x37

    if-gt v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_a
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x37

    if-le v5, v6, :cond_b

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x3c

    if-gt v5, v6, :cond_b

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_b
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x3c

    if-le v5, v6, :cond_c

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x41

    if-gt v5, v6, :cond_c

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_c
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x41

    if-le v5, v6, :cond_d

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x46

    if-gt v5, v6, :cond_d

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807da

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_d
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x46

    if-le v5, v6, :cond_e

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x4b

    if-gt v5, v6, :cond_e

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_e
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x4b

    if-le v5, v6, :cond_f

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x50

    if-gt v5, v6, :cond_f

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_f
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x50

    if-le v5, v6, :cond_10

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x55

    if-gt v5, v6, :cond_10

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_10
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x55

    if-le v5, v6, :cond_11

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_11

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_11
    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x5f

    if-le v5, v6, :cond_12

    iget v5, p0, Lcom/android/server/AssistantBatteryService$6;->val$showCapacityLevel:I

    const/16 v6, 0x63

    if-gt v5, v6, :cond_12

    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807df

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_12
    iget-object v5, p0, Lcom/android/server/AssistantBatteryService$6;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AssistantBatteryService;->access$1100(Lcom/android/server/AssistantBatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10807cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
