.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final AIRPLANE_TYPE:I

.field private AirplaneModeOn:Z

.field private final FLASHLIGHT_TYPE:I

.field private final IMAGE_BLACK:[I

.field private final IMAGE_BLACK_NEWUI:[I

.field private final IMAGE_IDS:[I

.field private final IMAGE_LIGHT:[I

.field private final IMAGE_LIGHT_NEWUI:[I

.field private final ITEM_IDS:[I

.field private final MUTE_TYPE:I

.field private final TEXT_IDS:[I

.field private final VIBRATE_TYPE:I

.field private first:Z

.field private flashlighton:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private muteOn:Z

.field private vibrateOn:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 1597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1572
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 1573
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->TEXT_IDS:[I

    .line 1574
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_IDS:[I

    .line 1575
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_LIGHT:[I

    .line 1577
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_BLACK:[I

    .line 1581
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_LIGHT_NEWUI:[I

    .line 1583
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_BLACK_NEWUI:[I

    .line 1590
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->FLASHLIGHT_TYPE:I

    .line 1591
    iput v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->AIRPLANE_TYPE:I

    .line 1592
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->MUTE_TYPE:I

    .line 1593
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->VIBRATE_TYPE:I

    .line 1598
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 1599
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 1600
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 1602
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mVibrator:Landroid/os/Vibrator;

    .line 1603
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->first:Z

    .line 1614
    return-void

    .line 1572
    :array_0
    .array-data 4
        0x102029a
        0x102029b
        0x102029c
        0x1020396
    .end array-data

    .line 1573
    :array_1
    .array-data 4
        0x1020391
        0x1020393
        0x1020395
        0x1020398
    .end array-data

    .line 1574
    :array_2
    .array-data 4
        0x1020390
        0x1020392
        0x1020394
        0x1020397
    .end array-data

    .line 1575
    :array_3
    .array-data 4
        0x10807e5
        0x10807e3
        0x10807e7
        0x10802e9
    .end array-data

    .line 1577
    :array_4
    .array-data 4
        0x10807e6
        0x10807e4
        0x10807e8
        0x10807ed
    .end array-data

    .line 1581
    :array_5
    .array-data 4
        0x10807ec
        0x10807e2
        0x10807f6
        0x10807f8
    .end array-data

    .line 1583
    :array_6
    .array-data 4
        0x10807eb
        0x10807e1
        0x10807f5
        0x10807f7
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1638
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 1633
    return p1
.end method

.method private takeFlashLightClose()V
    .locals 4

    .prologue
    .line 1624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.Close_FlashLight"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1625
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1626
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close flashlight: intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1629
    :cond_0
    return-void
.end method

.method private takeFlashLightOn()V
    .locals 4

    .prologue
    .line 1616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.Open_FlashLight"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1617
    .local v0, "openIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1618
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open flashlight2: intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1621
    :cond_0
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1643
    const v6, 0x1090046

    invoke-virtual {p4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mView:Landroid/view/View;

    .line 1646
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    array-length v2, v6

    .line 1647
    .local v2, "lengths":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_b

    .line 1648
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1649
    .local v1, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 1650
    .local v3, "on":Z
    if-nez v0, :cond_2

    .line 1651
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->first:Z

    if-eqz v6, :cond_0

    .line 1652
    const-string v6, "sys.yulong.flashlight"

    const-string v9, "0"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->flashlighton:Z

    .line 1654
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->flashlighton:Z

    .line 1676
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->updateItem(IZ)V

    .line 1677
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1678
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1655
    :cond_2
    if-ne v0, v7, :cond_5

    .line 1656
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->first:Z

    if-eqz v6, :cond_3

    .line 1657
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->AirplaneModeOn:Z

    .line 1659
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->AirplaneModeOn:Z

    goto :goto_1

    :cond_4
    move v6, v8

    .line 1657
    goto :goto_2

    .line 1660
    :cond_5
    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    .line 1661
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->first:Z

    if-eqz v6, :cond_6

    .line 1662
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-nez v6, :cond_7

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->muteOn:Z

    .line 1664
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->muteOn:Z

    goto :goto_1

    :cond_7
    move v6, v8

    .line 1662
    goto :goto_3

    .line 1665
    :cond_8
    const/4 v6, 0x3

    if-ne v0, v6, :cond_1

    .line 1666
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->first:Z

    if-eqz v6, :cond_9

    .line 1667
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v4

    .line 1668
    .local v4, "tmp":I
    if-nez v4, :cond_a

    .line 1669
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->vibrateOn:Z

    .line 1674
    .end local v4    # "tmp":I
    :cond_9
    :goto_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->vibrateOn:Z

    goto :goto_1

    .line 1671
    .restart local v4    # "tmp":I
    :cond_a
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->vibrateOn:Z

    goto :goto_4

    .line 1680
    .end local v1    # "itemView":Landroid/view/View;
    .end local v3    # "on":Z
    .end local v4    # "tmp":I
    :cond_b
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->first:Z

    .line 1717
    return-object v5
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1749
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1756
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 1820
    :goto_0
    return-void

    .line 1758
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1760
    .local v0, "index":I
    if-nez v0, :cond_4

    .line 1761
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->flashlighton:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->flashlighton:Z

    .line 1762
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->flashlighton:Z

    if-eqz v3, :cond_3

    .line 1763
    const-string v3, "sys.yulong.flashlight"

    const-string v6, "1"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->takeFlashLightOn()V

    .line 1795
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1796
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1797
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v3, v5

    .line 1761
    goto :goto_1

    .line 1766
    :cond_3
    const-string v3, "sys.yulong.flashlight"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->takeFlashLightClose()V

    goto :goto_2

    .line 1769
    :cond_4
    if-ne v0, v4, :cond_7

    .line 1770
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->AirplaneModeOn:Z

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->AirplaneModeOn:Z

    .line 1771
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->AirplaneModeOn:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_4
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1772
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1773
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "state"

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->AirplaneModeOn:Z

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1774
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1775
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    move v3, v5

    .line 1770
    goto :goto_3

    :cond_6
    move v3, v5

    .line 1771
    goto :goto_4

    .line 1776
    :cond_7
    if-ne v0, v6, :cond_a

    .line 1777
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->muteOn:Z

    if-nez v3, :cond_8

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->muteOn:Z

    .line 1778
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->muteOn:Z

    if-eqz v3, :cond_9

    .line 1779
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    :cond_8
    move v3, v5

    .line 1777
    goto :goto_5

    .line 1781
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 1783
    :cond_a
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 1784
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->vibrateOn:Z

    if-nez v3, :cond_b

    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->vibrateOn:Z

    .line 1785
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->vibrateOn:Z

    if-eqz v3, :cond_c

    move v2, v4

    .line 1786
    .local v2, "value":I
    :goto_7
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->vibrateOn:Z

    if-eqz v3, :cond_d

    .line 1787
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1788
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1789
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_2

    .end local v2    # "value":I
    :cond_b
    move v3, v5

    .line 1784
    goto :goto_6

    :cond_c
    move v2, v5

    .line 1785
    goto :goto_7

    .line 1791
    .restart local v2    # "value":I
    :cond_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1792
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_2
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1737
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 1734
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1745
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1741
    const/4 v0, 0x1

    return v0
.end method

.method public updateItem(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "on"    # Z

    .prologue
    .line 1721
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1722
    .local v1, "itemView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->TEXT_IDS:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1723
    .local v2, "text":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_IDS:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1724
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 1725
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1726
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_LIGHT_NEWUI:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1731
    :goto_0
    return-void

    .line 1728
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1729
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_BLACK_NEWUI:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1753
    return-void
.end method
