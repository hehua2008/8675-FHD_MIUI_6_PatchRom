.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x2b

.field static final TRANSACTION_adjustLocalOrRemoteStreamVolume:I = 0x4

.field static final TRANSACTION_adjustMasterVolume:I = 0x7

.field static final TRANSACTION_adjustStreamVolume:I = 0x6

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x5

.field static final TRANSACTION_adjustVolume:I = 0x2

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x23

.field static final TRANSACTION_dispatchMediaKeyEvent:I = 0x2e

.field static final TRANSACTION_dispatchMediaKeyEventUnderWakelock:I = 0x2f

.field static final TRANSACTION_forceVolumeControlStream:I = 0x44

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x2d

.field static final TRANSACTION_getLastAudibleMasterVolume:I = 0x15

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0x14

.field static final TRANSACTION_getMasterMaxVolume:I = 0x13

.field static final TRANSACTION_getMasterStreamType:I = 0x47

.field static final TRANSACTION_getMasterVolume:I = 0x11

.field static final TRANSACTION_getMode:I = 0x1d

.field static final TRANSACTION_getModeExt:I = 0x18

.field static final TRANSACTION_getRemoteStreamMaxVolume:I = 0x3f

.field static final TRANSACTION_getRemoteStreamVolume:I = 0x40

.field static final TRANSACTION_getRingerMode:I = 0x17

.field static final TRANSACTION_getRingtonePlayer:I = 0x46

.field static final TRANSACTION_getStreamMaxVolume:I = 0x12

.field static final TRANSACTION_getStreamVolume:I = 0x10

.field static final TRANSACTION_getVibrateSetting:I = 0x1a

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x29

.field static final TRANSACTION_isBluetoothScoOn:I = 0x27

.field static final TRANSACTION_isCameraSoundForced:I = 0x4b

.field static final TRANSACTION_isLocalOrRemoteMusicActive:I = 0x3

.field static final TRANSACTION_isMasterMute:I = 0xf

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x25

.field static final TRANSACTION_isStreamMute:I = 0xd

.field static final TRANSACTION_loadSoundEffects:I = 0x20

.field static final TRANSACTION_playSoundEffect:I = 0x1e

.field static final TRANSACTION_playSoundEffectVolume:I = 0x1f

.field static final TRANSACTION_registerMediaButtonEventReceiverForCalls:I = 0x32

.field static final TRANSACTION_registerMediaButtonIntent:I = 0x30

.field static final TRANSACTION_registerRemoteControlClient:I = 0x3b

.field static final TRANSACTION_registerRemoteControlDisplay:I = 0x34

.field static final TRANSACTION_registerRemoteController:I = 0x35

.field static final TRANSACTION_registerRemoteVolumeObserverForRcc:I = 0x41

.field static final TRANSACTION_reloadAudioSettings:I = 0x22

.field static final TRANSACTION_remoteControlDisplayUsesBitmapSize:I = 0x37

.field static final TRANSACTION_remoteControlDisplayWantsPlaybackPositionSync:I = 0x38

.field static final TRANSACTION_requestAudioFocus:I = 0x2a

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x49

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x28

.field static final TRANSACTION_setBluetoothScoOn:I = 0x26

.field static final TRANSACTION_setMasterMute:I = 0xe

.field static final TRANSACTION_setMasterVolume:I = 0xa

.field static final TRANSACTION_setMode:I = 0x1c

.field static final TRANSACTION_setPlaybackInfoForRcc:I = 0x3d

.field static final TRANSACTION_setPlaybackStateForRcc:I = 0x3e

.field static final TRANSACTION_setRemoteControlClientPlaybackPosition:I = 0x39

.field static final TRANSACTION_setRemoteStreamVolume:I = 0x9

.field static final TRANSACTION_setRingerMode:I = 0x16

.field static final TRANSACTION_setRingtonePlayer:I = 0x45

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x24

.field static final TRANSACTION_setStreamMute:I = 0xc

.field static final TRANSACTION_setStreamSolo:I = 0xb

.field static final TRANSACTION_setStreamVolume:I = 0x8

.field static final TRANSACTION_setVibrateSetting:I = 0x19

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x48

.field static final TRANSACTION_shouldVibrate:I = 0x1b

.field static final TRANSACTION_startBluetoothSco:I = 0x42

.field static final TRANSACTION_startWatchingRoutes:I = 0x4a

.field static final TRANSACTION_stopBluetoothSco:I = 0x43

.field static final TRANSACTION_unloadSoundEffects:I = 0x21

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x2c

.field static final TRANSACTION_unregisterMediaButtonEventReceiverForCalls:I = 0x33

.field static final TRANSACTION_unregisterMediaButtonIntent:I = 0x31

.field static final TRANSACTION_unregisterRemoteControlClient:I = 0x3c

.field static final TRANSACTION_unregisterRemoteControlDisplay:I = 0x36

.field static final TRANSACTION_updateRemoteControlClientMetadata:I = 0x3a

.field static final TRANSACTION_verifyX509CertChain:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 884
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 56
    .local v5, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/IAudioService$Stub;->verifyX509CertChain(I[BLjava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 60
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v3, 0x1

    goto :goto_0

    .line 66
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":[B
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_2
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 70
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 72
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 73
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->adjustVolume(IILjava/lang/String;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v3, 0x1

    goto :goto_0

    .line 79
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_3
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isLocalOrRemoteMusicActive()Z

    move-result v18

    .line 81
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v18, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v3, 0x1

    goto :goto_0

    .line 82
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 87
    .end local v18    # "_result":Z
    :sswitch_4
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 93
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 94
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V

    .line 95
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 99
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 103
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 105
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 107
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 108
    .restart local v7    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(IIILjava/lang/String;)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 114
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    :sswitch_6
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 118
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 120
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 122
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 123
    .restart local v7    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 129
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    :sswitch_7
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 133
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 135
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->adjustMasterVolume(IILjava/lang/String;)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 142
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_8
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 146
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 148
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 150
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 151
    .restart local v7    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 157
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    :sswitch_9
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setRemoteStreamVolume(I)V

    .line 161
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 165
    .end local v4    # "_arg0":I
    :sswitch_a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 171
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setMasterVolume(IILjava/lang/String;)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 178
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 182
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 184
    .local v5, "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 185
    .local v6, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 182
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 191
    .end local v4    # "_arg0":I
    :sswitch_c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 195
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    .line 197
    .restart local v5    # "_arg1":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 198
    .restart local v6    # "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 195
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 204
    .end local v4    # "_arg0":I
    :sswitch_d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 207
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v18

    .line 208
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v18, :cond_3

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 209
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 214
    .end local v4    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    .line 218
    .local v4, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 220
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 221
    .restart local v6    # "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILandroid/os/IBinder;)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 216
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 227
    :sswitch_f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v18

    .line 229
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v18, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 230
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 235
    .end local v18    # "_result":Z
    :sswitch_10
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 238
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v18

    .line 239
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 245
    .end local v4    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_11
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMasterVolume()I

    move-result v18

    .line 247
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 253
    .end local v18    # "_result":I
    :sswitch_12
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 256
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v18

    .line 257
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 263
    .end local v4    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_13
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMasterMaxVolume()I

    move-result v18

    .line 265
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 271
    .end local v18    # "_result":I
    :sswitch_14
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 274
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v18

    .line 275
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 281
    .end local v4    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_15
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getLastAudibleMasterVolume()I

    move-result v18

    .line 283
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 289
    .end local v18    # "_result":I
    :sswitch_16
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 292
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setRingerMode(I)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 298
    .end local v4    # "_arg0":I
    :sswitch_17
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v18

    .line 300
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 306
    .end local v18    # "_result":I
    :sswitch_18
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getModeExt()I

    move-result v18

    .line 308
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 314
    .end local v18    # "_result":I
    :sswitch_19
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 318
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 319
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 325
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_1a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 328
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v18

    .line 329
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 335
    .end local v4    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_1b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 338
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v18

    .line 339
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v18, :cond_6

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 340
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 345
    .end local v4    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_1c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 349
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 350
    .local v5, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 356
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/os/IBinder;
    :sswitch_1d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v18

    .line 358
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 364
    .end local v18    # "_result":I
    :sswitch_1e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 367
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    .line 368
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 372
    .end local v4    # "_arg0":I
    :sswitch_1f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 376
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 377
    .local v5, "_arg1":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 378
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 382
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":F
    :sswitch_20
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v18

    .line 384
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v18, :cond_7

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 385
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 390
    .end local v18    # "_result":Z
    :sswitch_21
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 392
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 396
    :sswitch_22
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 398
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 402
    :sswitch_23
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v5, 0x1

    .line 407
    .local v5, "_arg1":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 408
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 406
    .end local v5    # "_arg1":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 412
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_24
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    .line 415
    .local v4, "_arg0":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 414
    .end local v4    # "_arg0":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 421
    :sswitch_25
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v18

    .line 423
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    if-eqz v18, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 424
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 429
    .end local v18    # "_result":Z
    :sswitch_26
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    .line 432
    .restart local v4    # "_arg0":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 431
    .end local v4    # "_arg0":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 438
    :sswitch_27
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v18

    .line 440
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v18, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 441
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 446
    .end local v18    # "_result":Z
    :sswitch_28
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    .line 449
    .restart local v4    # "_arg0":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 448
    .end local v4    # "_arg0":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 455
    :sswitch_29
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v18

    .line 457
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v18, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 458
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 463
    .end local v18    # "_result":Z
    :sswitch_2a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 467
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 469
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 471
    .restart local v6    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v7

    .line 473
    .local v7, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 475
    .local v8, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg5":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 476
    invoke-virtual/range {v3 .. v9}, Landroid/media/IAudioService$Stub;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 477
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 483
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    .end local v7    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v9    # "_arg5":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_2b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 487
    .local v4, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v18

    .line 489
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 495
    .end local v4    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":I
    :sswitch_2c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 498
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 504
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v18

    .line 506
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 512
    .end local v18    # "_result":I
    :sswitch_2e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 515
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 520
    .local v4, "_arg0":Landroid/view/KeyEvent;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 521
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 518
    .end local v4    # "_arg0":Landroid/view/KeyEvent;
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_10

    .line 525
    .end local v4    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_2f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 528
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 533
    .restart local v4    # "_arg0":Landroid/view/KeyEvent;
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 531
    .end local v4    # "_arg0":Landroid/view/KeyEvent;
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_11

    .line 539
    .end local v4    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_30
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 542
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 548
    .local v4, "_arg0":Landroid/app/PendingIntent;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 549
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 555
    .local v5, "_arg1":Landroid/content/ComponentName;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 556
    .restart local v6    # "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 545
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_12

    .line 552
    :cond_12
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/content/ComponentName;
    goto :goto_13

    .line 562
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    :sswitch_31
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 565
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 570
    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 571
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 568
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_14

    .line 575
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_32
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 578
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 583
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 584
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 581
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15

    .line 588
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_33
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonEventReceiverForCalls()V

    .line 590
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 594
    :sswitch_34
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 598
    .local v4, "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 600
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 601
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v18

    .line 602
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    if-eqz v18, :cond_15

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 603
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 608
    .end local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v18    # "_result":Z
    :sswitch_35
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 612
    .restart local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 614
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 616
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 617
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 622
    .local v7, "_arg3":Landroid/content/ComponentName;
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/IAudioService$Stub;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v18

    .line 623
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v18, :cond_17

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 620
    .end local v7    # "_arg3":Landroid/content/ComponentName;
    .end local v18    # "_result":Z
    :cond_16
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Landroid/content/ComponentName;
    goto :goto_17

    .line 624
    .restart local v18    # "_result":Z
    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    .line 629
    .end local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/content/ComponentName;
    .end local v18    # "_result":Z
    :sswitch_36
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 632
    .restart local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 633
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 637
    .end local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_37
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 641
    .restart local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 643
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 644
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 645
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 649
    .end local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_38
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 653
    .restart local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    const/4 v5, 0x1

    .line 654
    .local v5, "_arg1":Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 655
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 653
    .end local v5    # "_arg1":Z
    :cond_18
    const/4 v5, 0x0

    goto :goto_19

    .line 659
    .end local v4    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_39
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 663
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 664
    .local v16, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/IAudioService$Stub;->setRemoteControlClientPlaybackPosition(IJ)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 670
    .end local v4    # "_arg0":I
    .end local v16    # "_arg1":J
    :sswitch_3a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 674
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 676
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    .line 677
    sget-object v3, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/Rating;

    .line 682
    .local v6, "_arg2":Landroid/media/Rating;
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->updateRemoteControlClientMetadata(IILandroid/media/Rating;)V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 680
    .end local v6    # "_arg2":Landroid/media/Rating;
    :cond_19
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/media/Rating;
    goto :goto_1a

    .line 688
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/media/Rating;
    :sswitch_3b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 691
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 697
    .local v4, "_arg0":Landroid/app/PendingIntent;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v5

    .line 699
    .local v5, "_arg1":Landroid/media/IRemoteControlClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    move-result v18

    .line 701
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 694
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    .end local v5    # "_arg1":Landroid/media/IRemoteControlClient;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v18    # "_result":I
    :cond_1a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1b

    .line 707
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_3c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 710
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 716
    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v5

    .line 717
    .restart local v5    # "_arg1":Landroid/media/IRemoteControlClient;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V

    .line 718
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 713
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    .end local v5    # "_arg1":Landroid/media/IRemoteControlClient;
    :cond_1b
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1c

    .line 722
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_3d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 726
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 728
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 729
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setPlaybackInfoForRcc(III)V

    .line 730
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 734
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_3e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 738
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 740
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 742
    .local v13, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .local v7, "_arg3":F
    move-object/from16 v10, p0

    move v11, v4

    move v12, v5

    move v15, v7

    .line 743
    invoke-virtual/range {v10 .. v15}, Landroid/media/IAudioService$Stub;->setPlaybackStateForRcc(IIJF)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 749
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":F
    .end local v13    # "_arg2":J
    :sswitch_3f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRemoteStreamMaxVolume()I

    move-result v18

    .line 751
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 757
    .end local v18    # "_result":I
    :sswitch_40
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRemoteStreamVolume()I

    move-result v18

    .line 759
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 765
    .end local v18    # "_result":I
    :sswitch_41
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 769
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteVolumeObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteVolumeObserver;

    move-result-object v5

    .line 770
    .local v5, "_arg1":Landroid/media/IRemoteVolumeObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    .line 771
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 775
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/media/IRemoteVolumeObserver;
    :sswitch_42
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 779
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 780
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 786
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":I
    :sswitch_43
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 789
    .restart local v4    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 795
    .end local v4    # "_arg0":Landroid/os/IBinder;
    :sswitch_44
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 799
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 800
    .local v5, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 806
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/os/IBinder;
    :sswitch_45
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v4

    .line 809
    .local v4, "_arg0":Landroid/media/IRingtonePlayer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 815
    .end local v4    # "_arg0":Landroid/media/IRingtonePlayer;
    :sswitch_46
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v18

    .line 817
    .local v18, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    if-eqz v18, :cond_1c

    invoke-interface/range {v18 .. v18}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 819
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 818
    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    .line 823
    .end local v18    # "_result":Landroid/media/IRingtonePlayer;
    :sswitch_47
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMasterStreamType()I

    move-result v18

    .line 825
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 831
    .end local v18    # "_result":I
    :sswitch_48
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 835
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 837
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 838
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 844
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_49
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 847
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 853
    .local v4, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 854
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v18

    .line 855
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 850
    .end local v4    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "_arg1":I
    .end local v18    # "_result":I
    :cond_1d
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1e

    .line 861
    .end local v4    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v4

    .line 864
    .local v4, "_arg0":Landroid/media/IAudioRoutesObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v18

    .line 865
    .local v18, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    if-eqz v18, :cond_1e

    .line 867
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 873
    :goto_1f
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 871
    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 877
    .end local v4    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v18    # "_result":Landroid/media/AudioRoutesInfo;
    :sswitch_4b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v18

    .line 879
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    if-eqz v18, :cond_1f

    const/4 v3, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 880
    :cond_1f
    const/4 v3, 0x0

    goto :goto_20

    .line 41
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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
