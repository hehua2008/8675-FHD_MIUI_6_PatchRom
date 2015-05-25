.class public abstract Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;
.super Landroid/os/Binder;
.source "ICloudSecurityV2.java"

# interfaces
.implements Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

.field static final TRANSACTION_checkUidPerm:I = 0x13

.field static final TRANSACTION_deleteAll:I = 0x5

.field static final TRANSACTION_deleteAppPermissionBean:I = 0x4

.field static final TRANSACTION_insertAppPermissionBean:I = 0x3

.field static final TRANSACTION_releasePermDialogLock:I = 0x11

.field static final TRANSACTION_startBlueToothProSwitch:I = 0xf

.field static final TRANSACTION_startCameraProSwitch:I = 0x10

.field static final TRANSACTION_startDataProSwitch:I = 0x7

.field static final TRANSACTION_startMobileDataProSwitch:I = 0xe

.field static final TRANSACTION_startMoneyProSwitch:I = 0x8

.field static final TRANSACTION_startNFCProSwitch:I = 0xd

.field static final TRANSACTION_startPermFilter:I = 0x6

.field static final TRANSACTION_startPugProSwitch:I = 0xb

.field static final TRANSACTION_startRecordProSwitch:I = 0xa

.field static final TRANSACTION_startSafeMode:I = 0x12

.field static final TRANSACTION_startWLANProSwitch:I = 0xc

.field static final TRANSACTION_startlistenProSwitch:I = 0x9

.field static final TRANSACTION_updateAll:I = 0x2

.field static final TRANSACTION_updateAppPermissionBean:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p0, p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 47
    :sswitch_0
    const-string v7, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    sget-object v9, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 57
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    invoke-virtual {p0, v0, v3}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->updateAppPermissionBean(ILjava/util/List;)Z

    move-result v6

    .line 58
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v6, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    .end local v6    # "_result":Z
    :sswitch_2
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    .line 69
    sget-object v9, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    .line 74
    .local v2, "_arg1":Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->updateAll(ILcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z

    move-result v6

    .line 75
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v6, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v2    # "_arg1":Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .end local v6    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    goto :goto_1

    .line 81
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :sswitch_3
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    sget-object v9, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 86
    .restart local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    invoke-virtual {p0, v0, v3}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->insertAppPermissionBean(ILjava/util/List;)Z

    move-result v6

    .line 87
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v6, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0    # "_arg0":I
    sget-object v9, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    .line 98
    .local v2, "_arg1":[Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    invoke-virtual {p0, v0, v2}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->deleteAppPermissionBean(I[Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z

    move-result v6

    .line 99
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v6, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":[Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .end local v6    # "_result":Z
    :sswitch_5
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->deleteAll(I)Z

    move-result v6

    .line 109
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v6, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    move v0, v8

    .line 118
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startPermFilter(Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v7

    .line 117
    goto :goto_2

    .line 124
    :sswitch_7
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    move v0, v8

    .line 127
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startDataProSwitch(Z)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_7
    move v0, v7

    .line 126
    goto :goto_3

    .line 133
    :sswitch_8
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    move v0, v8

    .line 136
    .restart local v0    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startMoneyProSwitch(Z)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_8
    move v0, v7

    .line 135
    goto :goto_4

    .line 142
    :sswitch_9
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    move v0, v8

    .line 145
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startlistenProSwitch(Z)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_9
    move v0, v7

    .line 144
    goto :goto_5

    .line 151
    :sswitch_a
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    move v0, v8

    .line 154
    .restart local v0    # "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startRecordProSwitch(Z)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_a
    move v0, v7

    .line 153
    goto :goto_6

    .line 160
    :sswitch_b
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    move v0, v8

    .line 163
    .restart local v0    # "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startPugProSwitch(Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_b
    move v0, v7

    .line 162
    goto :goto_7

    .line 169
    :sswitch_c
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    move v0, v8

    .line 172
    .restart local v0    # "_arg0":Z
    :goto_8
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startWLANProSwitch(Z)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_c
    move v0, v7

    .line 171
    goto :goto_8

    .line 178
    :sswitch_d
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v0, v8

    .line 181
    .restart local v0    # "_arg0":Z
    :goto_9
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startNFCProSwitch(Z)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_d
    move v0, v7

    .line 180
    goto :goto_9

    .line 187
    :sswitch_e
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_e

    move v0, v8

    .line 190
    .restart local v0    # "_arg0":Z
    :goto_a
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startMobileDataProSwitch(Z)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_e
    move v0, v7

    .line 189
    goto :goto_a

    .line 196
    :sswitch_f
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    move v0, v8

    .line 199
    .restart local v0    # "_arg0":Z
    :goto_b
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startBlueToothProSwitch(Z)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_f
    move v0, v7

    .line 198
    goto :goto_b

    .line 205
    :sswitch_10
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    move v0, v8

    .line 208
    .restart local v0    # "_arg0":Z
    :goto_c
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startCameraProSwitch(Z)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_10
    move v0, v7

    .line 207
    goto :goto_c

    .line 214
    :sswitch_11
    const-string v7, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 218
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->releasePermDialogLock(JI)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 225
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :sswitch_12
    const-string v9, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    move v0, v8

    .line 228
    .local v0, "_arg0":Z
    :goto_d
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->startSafeMode(Z)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_11
    move v0, v7

    .line 227
    goto :goto_d

    .line 234
    :sswitch_13
    const-string v7, "com.yulong.android.cloudsecurity.server.ICloudSecurityV2"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurityV2$Stub;->checkUidPerm(IIILjava/lang/String;)I

    move-result v6

    .line 244
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
