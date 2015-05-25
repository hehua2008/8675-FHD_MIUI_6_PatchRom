.class public abstract Landroid/content/IClipboard$Stub;
.super Landroid/os/Binder;
.source "IClipboard.java"

# interfaces
.implements Landroid/content/IClipboard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IClipboard$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IClipboard"

.field static final TRANSACTION_addPrimaryClipChangedListener:I = 0x5

.field static final TRANSACTION_delAllClipboardText:I = 0xe

.field static final TRANSACTION_delClipboardTextByIndex:I = 0xd

.field static final TRANSACTION_editLockByIndex:I = 0x12

.field static final TRANSACTION_getAllClipboardText:I = 0x9

.field static final TRANSACTION_getAllLock:I = 0x11

.field static final TRANSACTION_getClipboardTextByIndex:I = 0x8

.field static final TRANSACTION_getLockByIndex:I = 0x10

.field static final TRANSACTION_getPrimaryClip:I = 0x2

.field static final TRANSACTION_getPrimaryClipDescription:I = 0x3

.field static final TRANSACTION_getWindowToken:I = 0xf

.field static final TRANSACTION_hasClipboardText:I = 0x7

.field static final TRANSACTION_hasPrimaryClip:I = 0x4

.field static final TRANSACTION_hasTextInClipboardList:I = 0xc

.field static final TRANSACTION_removePrimaryClipChangedListener:I = 0x6

.field static final TRANSACTION_setClipboardImage:I = 0xb

.field static final TRANSACTION_setClipboardText:I = 0xa

.field static final TRANSACTION_setPrimaryClip:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.content.IClipboard"

    invoke-virtual {p0, p0, v0}, Landroid/content/IClipboard$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;
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
    const-string v1, "android.content.IClipboard"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IClipboard;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/content/IClipboard;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/content/IClipboard$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/IClipboard$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v3, "android.content.IClipboard"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "android.content.IClipboard"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    .line 61
    .local v0, "_arg0":Landroid/content/ClipData;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/IClipboard$Stub;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Landroid/content/ClipData;
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ClipData;
    goto :goto_1

    .line 68
    .end local v0    # "_arg0":Landroid/content/ClipData;
    :sswitch_2
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/IClipboard$Stub;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v2

    .line 72
    .local v2, "_result":Landroid/content/ClipData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {v2, p3, v4}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/ClipData;
    :sswitch_3
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/IClipboard$Stub;->getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;

    move-result-object v2

    .line 88
    .local v2, "_result":Landroid/content/ClipDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {v2, p3, v4}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/ClipDescription;
    :sswitch_4
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/IClipboard$Stub;->hasPrimaryClip(Ljava/lang/String;)Z

    move-result v2

    .line 104
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v3, "android.content.IClipboard"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IOnPrimaryClipChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOnPrimaryClipChangedListener;

    move-result-object v0

    .line 114
    .local v0, "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/IClipboard$Stub;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v3, "android.content.IClipboard"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IOnPrimaryClipChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOnPrimaryClipChangedListener;

    move-result-object v0

    .line 124
    .restart local v0    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    invoke-virtual {p0, v0}, Landroid/content/IClipboard$Stub;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    :sswitch_7
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/IClipboard$Stub;->hasClipboardText(Ljava/lang/String;)Z

    move-result v2

    .line 134
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/IClipboard$Stub;->getClipboardTextByIndex(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 144
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v2, :cond_5

    .line 146
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-static {v2, p3, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 150
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 156
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :sswitch_9
    const-string v3, "android.content.IClipboard"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/content/IClipboard$Stub;->getAllClipboardText()Ljava/util/List;

    move-result-object v2

    .line 158
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 164
    .end local v2    # "_result":Ljava/util/List;
    :sswitch_a
    const-string v3, "android.content.IClipboard"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 167
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 172
    .local v0, "_arg0":Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/IClipboard$Stub;->setClipboardText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 170
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_2

    .line 178
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_b
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 181
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 186
    .restart local v0    # "_arg0":Ljava/lang/CharSequence;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/IClipboard$Stub;->setClipboardImage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 187
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v2, :cond_8

    .line 189
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-static {v2, p3, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 184
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_3

    .line 193
    .restart local v2    # "_result":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :sswitch_c
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/content/IClipboard$Stub;->hasTextInClipboardList()Z

    move-result v2

    .line 201
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v2    # "_result":Z
    :sswitch_d
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/IClipboard$Stub;->delClipboardTextByIndex(I)Z

    move-result v2

    .line 211
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 217
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_e
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroid/content/IClipboard$Stub;->delAllClipboardText()Z

    move-result v2

    .line 219
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v2, :cond_b

    move v3, v4

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 225
    .end local v2    # "_result":Z
    :sswitch_f
    const-string v3, "android.content.IClipboard"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Landroid/content/IClipboard$Stub;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 227
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 233
    .end local v2    # "_result":Landroid/os/IBinder;
    :sswitch_10
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/IClipboard$Stub;->getLockByIndex(I)Z

    move-result v2

    .line 237
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 243
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_11
    const-string v3, "android.content.IClipboard"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/content/IClipboard$Stub;->getAllLock()Ljava/util/List;

    move-result-object v2

    .line 245
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 251
    .end local v2    # "_result":Ljava/util/List;
    :sswitch_12
    const-string v5, "android.content.IClipboard"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 255
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 256
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 261
    .local v1, "_arg1":Ljava/lang/CharSequence;
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/content/IClipboard$Stub;->editLockByIndex(ILjava/lang/CharSequence;)Z

    move-result v2

    .line 262
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v2, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_result":Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
