.class Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
.super Landroid/content/pm/PermissionGroupInfo;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPermissionGroupInfo"
.end annotation


# instance fields
.field final mAllPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final mDevicePermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLabel:Ljava/lang/CharSequence;

.field final mNewPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mPersonalPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionGroupInfo;Landroid/content/Context;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PermissionGroupInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    .line 104
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PermissionInfo;Landroid/content/Context;)V
    .locals 1
    .param p1, "perm"    # Landroid/content/pm/PermissionInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/content/pm/PermissionGroupInfo;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    .line 97
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->name:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method


# virtual methods
.method public loadGroupIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 108
    iget v1, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 114
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 115
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 118
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 125
    iget v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    .line 131
    .local v1, "themeId":I
    const v2, 0x103006e

    if-eq v1, v2, :cond_0

    const v2, 0x103012b

    if-ne v1, v2, :cond_1

    .line 133
    :cond_0
    iget v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    packed-switch v2, :pswitch_data_0

    .line 221
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 227
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "themeId":I
    :goto_1
    return-object v0

    .line 135
    .restart local v1    # "themeId":I
    :pswitch_0
    const v2, 0x108080a

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 138
    :pswitch_1
    const v2, 0x108080b

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 141
    :pswitch_2
    const v2, 0x108080c

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 144
    :pswitch_3
    const v2, 0x108080d

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 147
    :pswitch_4
    const v2, 0x108080e

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 150
    :pswitch_5
    const v2, 0x108080f

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 153
    :pswitch_6
    const v2, 0x1080810

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 156
    :pswitch_7
    const v2, 0x1080811

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 159
    :pswitch_8
    const v2, 0x1080812

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 162
    :pswitch_9
    const v2, 0x1080813

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 165
    :pswitch_a
    const v2, 0x1080814

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 168
    :pswitch_b
    const v2, 0x1080815

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 171
    :pswitch_c
    const v2, 0x1080816

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 174
    :pswitch_d
    const v2, 0x1080817

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 177
    :pswitch_e
    const v2, 0x1080818

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 180
    :pswitch_f
    const v2, 0x1080819

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 183
    :pswitch_10
    const v2, 0x108081a

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 186
    :pswitch_11
    const v2, 0x108081b

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 189
    :pswitch_12
    const v2, 0x108081c

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto :goto_0

    .line 192
    :pswitch_13
    const v2, 0x108081d

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto/16 :goto_0

    .line 195
    :pswitch_14
    const v2, 0x108081e

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto/16 :goto_0

    .line 198
    :pswitch_15
    const v2, 0x108081f

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto/16 :goto_0

    .line 201
    :pswitch_16
    const v2, 0x1080820

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto/16 :goto_0

    .line 204
    :pswitch_17
    const v2, 0x1080821

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto/16 :goto_0

    .line 207
    :pswitch_18
    const v2, 0x1080822

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto/16 :goto_0

    .line 210
    :pswitch_19
    const v2, 0x1080823

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto/16 :goto_0

    .line 213
    :pswitch_1a
    const v2, 0x1080824

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto/16 :goto_0

    .line 216
    :pswitch_1b
    const v2, 0x1080825

    iput v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    goto/16 :goto_0

    .line 227
    .end local v1    # "themeId":I
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1080486
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method
