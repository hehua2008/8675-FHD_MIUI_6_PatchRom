.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_changePasswordEfsStorage:I = 0x27

.field static final TRANSACTION_changeUserDataPassword:I = 0x2e

.field static final TRANSACTION_createEfsStorage:I = 0x24

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_decryptUserData:I = 0x30

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_encryptUserData:I = 0x2b

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getEfsStorageStat:I = 0x29

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getUserEncryptedDataStat:I = 0x31

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_lockEfsStorage:I = 0x26

.field static final TRANSACTION_lockUserData:I = 0x2d

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_recoverDataAndRemoveEfsStorage:I = 0x2a

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_removeEfsStorage:I = 0x28

.field static final TRANSACTION_removeUserEncryptedData:I = 0x2f

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_setEfsEncryptoLevel:I = 0x32

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unlockEfsStorage:I = 0x25

.field static final TRANSACTION_unlockUserData:I = 0x2c

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21

.field static final TRANSACTION_verifyPasswordEfsStorage:I = 0x33


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1245
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1246
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1247
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1234
    if-nez p0, :cond_0

    .line 1235
    const/4 v0, 0x0

    .line 1241
    :goto_0
    return-object v0

    .line 1237
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1238
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1239
    check-cast v0, Landroid/os/storage/IMountService;

    goto :goto_0

    .line 1241
    :cond_1
    new-instance v0, Landroid/os/storage/IMountService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1250
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 42
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
    .line 1256
    sparse-switch p1, :sswitch_data_0

    .line 1755
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 1258
    :sswitch_0
    const-string v4, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1259
    const/4 v4, 0x1

    goto :goto_0

    .line 1262
    :sswitch_1
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v25

    .line 1265
    .local v25, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    const/4 v4, 0x1

    goto :goto_0

    .line 1270
    .end local v25    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v25

    .line 1273
    .restart local v25    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    const/4 v4, 0x1

    goto :goto_0

    .line 1278
    .end local v25    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v36

    .line 1280
    .local v36, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    if-eqz v36, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    const/4 v4, 0x1

    goto :goto_0

    .line 1281
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1285
    .end local v36    # "result":Z
    :sswitch_4
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v19, 0x1

    .line 1288
    .local v19, "enable":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    const/4 v4, 0x1

    goto :goto_0

    .line 1287
    .end local v19    # "enable":Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_2

    .line 1293
    :sswitch_5
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v36

    .line 1295
    .restart local v36    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    if-eqz v36, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1296
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 1300
    .end local v36    # "result":Z
    :sswitch_6
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1303
    .local v26, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v37

    .line 1304
    .local v37, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1309
    .end local v26    # "mountPoint":Ljava/lang/String;
    .end local v37    # "resultCode":I
    :sswitch_7
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1312
    .restart local v26    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v21, 0x1

    .line 1313
    .local v21, "force":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v35, 0x1

    .line 1314
    .local v35, "removeEncrypt":Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v21

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1312
    .end local v21    # "force":Z
    .end local v35    # "removeEncrypt":Z
    :cond_3
    const/16 v21, 0x0

    goto :goto_4

    .line 1313
    .restart local v21    # "force":Z
    :cond_4
    const/16 v35, 0x0

    goto :goto_5

    .line 1319
    .end local v21    # "force":Z
    .end local v26    # "mountPoint":Ljava/lang/String;
    :sswitch_8
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1322
    .restart local v26    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v36

    .line 1323
    .local v36, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1325
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1328
    .end local v26    # "mountPoint":Ljava/lang/String;
    .end local v36    # "result":I
    :sswitch_9
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1331
    .local v33, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v34

    .line 1332
    .local v34, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1334
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1337
    .end local v33    # "path":Ljava/lang/String;
    .end local v34    # "pids":[I
    :sswitch_a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1340
    .restart local v26    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1341
    .local v38, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1343
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1346
    .end local v26    # "mountPoint":Ljava/lang/String;
    .end local v38    # "state":Ljava/lang/String;
    :sswitch_b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1350
    .local v5, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1352
    .local v6, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1354
    .local v7, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1356
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1358
    .local v9, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v10, 0x1

    .local v10, "external":Z
    :goto_6
    move-object/from16 v4, p0

    .line 1359
    invoke-virtual/range {v4 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v37

    .line 1361
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1358
    .end local v10    # "external":Z
    .end local v37    # "resultCode":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    .line 1366
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v7    # "fstype":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    :sswitch_c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1369
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v37

    .line 1370
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1375
    .end local v5    # "id":Ljava/lang/String;
    .end local v37    # "resultCode":I
    :sswitch_d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1379
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v21, 0x1

    .line 1380
    .restart local v21    # "force":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v37

    .line 1381
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1379
    .end local v21    # "force":Z
    .end local v37    # "resultCode":I
    :cond_6
    const/16 v21, 0x0

    goto :goto_7

    .line 1386
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1390
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1392
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1393
    .restart local v9    # "ownerUid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v37

    .line 1394
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1399
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    .end local v37    # "resultCode":I
    :sswitch_f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1403
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v21, 0x1

    .line 1404
    .restart local v21    # "force":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v37

    .line 1405
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1403
    .end local v21    # "force":Z
    .end local v37    # "resultCode":I
    :cond_7
    const/16 v21, 0x0

    goto :goto_8

    .line 1410
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_10
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1413
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v39

    .line 1414
    .local v39, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    if-eqz v39, :cond_8

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1415
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    .line 1419
    .end local v5    # "id":Ljava/lang/String;
    .end local v39    # "status":Z
    :sswitch_11
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1423
    .local v30, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1424
    .local v28, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v37

    .line 1425
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1430
    .end local v28    # "newId":Ljava/lang/String;
    .end local v30    # "oldId":Ljava/lang/String;
    .end local v37    # "resultCode":I
    :sswitch_12
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1433
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1434
    .restart local v33    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1436
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1439
    .end local v5    # "id":Ljava/lang/String;
    .end local v33    # "path":Ljava/lang/String;
    :sswitch_13
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v23

    .line 1441
    .local v23, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1443
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1446
    .end local v23    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v15

    .line 1450
    .local v15, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1455
    .end local v15    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1461
    :sswitch_16
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1463
    .local v12, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1464
    .local v13, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1466
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1468
    .local v15, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "nonce":I
    move-object/from16 v11, p0

    move-object v14, v8

    .line 1469
    invoke-virtual/range {v11 .. v16}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1474
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "rawPath":Ljava/lang/String;
    .end local v13    # "canonicalPath":Ljava/lang/String;
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    :sswitch_17
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1478
    .local v20, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v21, 0x1

    .line 1480
    .restart local v21    # "force":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1482
    .restart local v15    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1483
    .restart local v16    # "nonce":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1485
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1478
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    .end local v21    # "force":Z
    :cond_9
    const/16 v21, 0x0

    goto :goto_a

    .line 1488
    .end local v20    # "filename":Ljava/lang/String;
    :sswitch_18
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1491
    .restart local v20    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v39

    .line 1492
    .restart local v39    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    if-eqz v39, :cond_a

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1493
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 1497
    .end local v20    # "filename":Ljava/lang/String;
    .end local v39    # "status":Z
    :sswitch_19
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1500
    .restart local v20    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1501
    .local v27, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1503
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1506
    .end local v20    # "filename":Ljava/lang/String;
    .end local v27    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v18

    .line 1508
    .local v18, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    if-eqz v18, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1509
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 1513
    .end local v18    # "emulated":Z
    :sswitch_1b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1515
    .local v32, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v36

    .line 1516
    .restart local v36    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1521
    .end local v32    # "password":Ljava/lang/String;
    .end local v36    # "result":I
    :sswitch_1c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1523
    .restart local v32    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->encryptStorage(Ljava/lang/String;)I

    move-result v36

    .line 1524
    .restart local v36    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1526
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1529
    .end local v32    # "password":Ljava/lang/String;
    .end local v36    # "result":I
    :sswitch_1d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1531
    .restart local v32    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(Ljava/lang/String;)I

    move-result v36

    .line 1532
    .restart local v36    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1537
    .end local v32    # "password":Ljava/lang/String;
    .end local v36    # "result":I
    :sswitch_1e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v36

    .line 1539
    .local v36, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1540
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1541
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1544
    .end local v36    # "result":[Landroid/os/storage/StorageVolume;
    :sswitch_1f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1547
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1548
    .restart local v33    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1550
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1553
    .end local v5    # "id":Ljava/lang/String;
    .end local v33    # "path":Ljava/lang/String;
    :sswitch_20
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v36

    .line 1555
    .local v36, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1557
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1560
    .end local v36    # "result":I
    :sswitch_21
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1564
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1566
    .local v22, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1567
    .restart local v20    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v37

    .line 1568
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1573
    .end local v5    # "id":Ljava/lang/String;
    .end local v20    # "filename":Ljava/lang/String;
    .end local v22    # "gid":I
    .end local v37    # "resultCode":I
    :sswitch_22
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1575
    .local v17, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1576
    .restart local v33    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 1577
    .restart local v36    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1585
    .end local v17    # "callingPkg":Ljava/lang/String;
    .end local v33    # "path":Ljava/lang/String;
    .end local v36    # "result":I
    :sswitch_23
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1589
    .local v40, "storagePath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1590
    .restart local v32    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->createEfsStorage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v37

    .line 1591
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1596
    .end local v32    # "password":Ljava/lang/String;
    .end local v37    # "resultCode":I
    .end local v40    # "storagePath":Ljava/lang/String;
    :sswitch_24
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1600
    .restart local v40    # "storagePath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1601
    .restart local v32    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unlockEfsStorage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v37

    .line 1602
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1607
    .end local v32    # "password":Ljava/lang/String;
    .end local v37    # "resultCode":I
    .end local v40    # "storagePath":Ljava/lang/String;
    :sswitch_25
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1611
    .restart local v40    # "storagePath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1612
    .local v24, "level":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setEfsEncryptoLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v37

    .line 1613
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1614
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1618
    .end local v24    # "level":Ljava/lang/String;
    .end local v37    # "resultCode":I
    .end local v40    # "storagePath":Ljava/lang/String;
    :sswitch_26
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1621
    .restart local v40    # "storagePath":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->lockEfsStorage(Ljava/lang/String;)I

    move-result v37

    .line 1622
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1623
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1627
    .end local v37    # "resultCode":I
    .end local v40    # "storagePath":Ljava/lang/String;
    :sswitch_27
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1631
    .restart local v40    # "storagePath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1633
    .local v31, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1634
    .local v29, "newPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v31

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->changePasswordEfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v37

    .line 1635
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1636
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1640
    .end local v29    # "newPassword":Ljava/lang/String;
    .end local v31    # "oldPassword":Ljava/lang/String;
    .end local v37    # "resultCode":I
    .end local v40    # "storagePath":Ljava/lang/String;
    :sswitch_28
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1644
    .restart local v40    # "storagePath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1645
    .restart local v32    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->verifyPasswordEfsStorage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v37

    .line 1646
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1651
    .end local v32    # "password":Ljava/lang/String;
    .end local v37    # "resultCode":I
    .end local v40    # "storagePath":Ljava/lang/String;
    :sswitch_29
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1654
    .restart local v40    # "storagePath":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->removeEfsStorage(Ljava/lang/String;)I

    move-result v37

    .line 1655
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1660
    .end local v37    # "resultCode":I
    .end local v40    # "storagePath":Ljava/lang/String;
    :sswitch_2a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1664
    .restart local v40    # "storagePath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1665
    .restart local v32    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->recoverDataAndRemoveEfsStorage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v37

    .line 1666
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1667
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1671
    .end local v32    # "password":Ljava/lang/String;
    .end local v37    # "resultCode":I
    .end local v40    # "storagePath":Ljava/lang/String;
    :sswitch_2b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1674
    .restart local v40    # "storagePath":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getEfsStorageStat(Ljava/lang/String;)I

    move-result v37

    .line 1675
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1680
    .end local v37    # "resultCode":I
    .end local v40    # "storagePath":Ljava/lang/String;
    :sswitch_2c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1684
    .local v41, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1685
    .restart local v32    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptUserData(ILjava/lang/String;)I

    move-result v37

    .line 1686
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1691
    .end local v32    # "password":Ljava/lang/String;
    .end local v37    # "resultCode":I
    .end local v41    # "userId":I
    :sswitch_2d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1695
    .restart local v41    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1696
    .restart local v32    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unlockUserData(ILjava/lang/String;)I

    move-result v37

    .line 1697
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1699
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1702
    .end local v32    # "password":Ljava/lang/String;
    .end local v37    # "resultCode":I
    .end local v41    # "userId":I
    :sswitch_2e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1705
    .restart local v41    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->lockUserData(I)I

    move-result v37

    .line 1706
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1707
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1708
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1711
    .end local v37    # "resultCode":I
    .end local v41    # "userId":I
    :sswitch_2f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1715
    .restart local v41    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1717
    .restart local v31    # "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1718
    .restart local v29    # "newPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v31

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->changeUserDataPassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result v37

    .line 1719
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1720
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1721
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1724
    .end local v29    # "newPassword":Ljava/lang/String;
    .end local v31    # "oldPassword":Ljava/lang/String;
    .end local v37    # "resultCode":I
    .end local v41    # "userId":I
    :sswitch_30
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1727
    .restart local v41    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->removeUserEncryptedData(I)I

    move-result v37

    .line 1728
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1729
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1730
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1733
    .end local v37    # "resultCode":I
    .end local v41    # "userId":I
    :sswitch_31
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1736
    .restart local v41    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getUserEncryptedDataStat(I)I

    move-result v37

    .line 1737
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1742
    .end local v37    # "resultCode":I
    .end local v41    # "userId":I
    :sswitch_32
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1746
    .restart local v41    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1747
    .restart local v32    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->decryptUserData(ILjava/lang/String;)I

    move-result v37

    .line 1748
    .restart local v37    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1750
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1256
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
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_29
        0x29 -> :sswitch_2b
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2c
        0x2c -> :sswitch_2d
        0x2d -> :sswitch_2e
        0x2e -> :sswitch_2f
        0x2f -> :sswitch_30
        0x30 -> :sswitch_32
        0x31 -> :sswitch_31
        0x32 -> :sswitch_25
        0x33 -> :sswitch_28
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
