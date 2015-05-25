.class public abstract Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;
.super Landroid/os/Binder;
.source "IVideoTelephony.java"

# interfaces
.implements Lcom/yulong/android/videotelephony/IVideoTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/videotelephony/IVideoTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/videotelephony/IVideoTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.videotelephony.IVideoTelephony"

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_setRemoteMute:I = 0xa

.field static final TRANSACTION_setSounddevice:I = 0xd

.field static final TRANSACTION_startRecording:I = 0xb

.field static final TRANSACTION_stopRecording:I = 0xc

.field static final TRANSACTION_unregister:I = 0x2

.field static final TRANSACTION_vpAnswer:I = 0x4

.field static final TRANSACTION_vpAnswerForVoice:I = 0x7

.field static final TRANSACTION_vpCancel:I = 0x6

.field static final TRANSACTION_vpMakeCall:I = 0x3

.field static final TRANSACTION_vpReject:I = 0x5

.field static final TRANSACTION_vpSendUserNum:I = 0x8

.field static final TRANSACTION_vpSetMicorphone:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/videotelephony/IVideoTelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/videotelephony/IVideoTelephony;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/yulong/android/videotelephony/IVideoTelephony;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 48
    :sswitch_0
    const-string v5, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v5, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Lcom/yulong/android/videotelephony/IVideoTelephonyListener;
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->register(Lcom/yulong/android/videotelephony/IVideoTelephonyListener;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Lcom/yulong/android/videotelephony/IVideoTelephonyListener;
    :sswitch_2
    const-string v5, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Lcom/yulong/android/videotelephony/IVideoTelephonyListener;
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->unregister(Lcom/yulong/android/videotelephony/IVideoTelephonyListener;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Lcom/yulong/android/videotelephony/IVideoTelephonyListener;
    :sswitch_3
    const-string v7, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 80
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->vpMakeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 81
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v7, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->vpAnswer(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 95
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v5, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->vpReject()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 108
    :sswitch_6
    const-string v5, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->vpCancel()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 115
    :sswitch_7
    const-string v7, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->vpAnswerForVoice()Z

    move-result v4

    .line 117
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v5, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->vpSendUserNum(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v7, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->vpSetMicorphone(I)Z

    move-result v4

    .line 136
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v7, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v0, v6

    .line 145
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->setRemoteMute(Z)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_4
    move v0, v5

    .line 144
    goto :goto_1

    .line 151
    :sswitch_b
    const-string v5, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->startRecording()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    :sswitch_c
    const-string v5, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->stopRecording()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 165
    :sswitch_d
    const-string v5, "com.yulong.android.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephony$Stub;->setSounddevice(I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
