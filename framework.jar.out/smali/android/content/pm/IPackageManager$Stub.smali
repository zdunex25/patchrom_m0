.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_addPackageToPreferred:I = 0x2e

.field static final TRANSACTION_addPermission:I = 0x11

.field static final TRANSACTION_addPermissionAsync:I = 0x4b

.field static final TRANSACTION_addPreferredActivity:I = 0x31

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x5

.field static final TRANSACTION_checkPermission:I = 0xf

.field static final TRANSACTION_checkSignatures:I = 0x16

.field static final TRANSACTION_checkUidPermission:I = 0x10

.field static final TRANSACTION_checkUidSignatures:I = 0x17

.field static final TRANSACTION_clearApplicationUserData:I = 0x3d

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x33

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x4

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x3c

.field static final TRANSACTION_deletePackage:I = 0x2c

.field static final TRANSACTION_enterSafeMode:I = 0x42

.field static final TRANSACTION_extendVerificationTimeout:I = 0x52

.field static final TRANSACTION_finishPackageInstall:I = 0x2a

.field static final TRANSACTION_freeStorage:I = 0x3b

.field static final TRANSACTION_freeStorageAndNotify:I = 0x3a

.field static final TRANSACTION_getActivityInfo:I = 0xb

.field static final TRANSACTION_getAllPermissionGroups:I = 0x9

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x38

.field static final TRANSACTION_getApplicationInfo:I = 0xa

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x36

.field static final TRANSACTION_getInstallLocation:I = 0x4d

.field static final TRANSACTION_getInstalledApplications:I = 0x22

.field static final TRANSACTION_getInstalledPackages:I = 0x21

.field static final TRANSACTION_getInstallerPackageName:I = 0x2d

.field static final TRANSACTION_getInstrumentationInfo:I = 0x27

.field static final TRANSACTION_getNameForUid:I = 0x19

.field static final TRANSACTION_getPackageGids:I = 0x3

.field static final TRANSACTION_getPackageInfo:I = 0x1

.field static final TRANSACTION_getPackageSizeInfo:I = 0x3e

.field static final TRANSACTION_getPackageUid:I = 0x2

.field static final TRANSACTION_getPackagesForUid:I = 0x18

.field static final TRANSACTION_getPermissionGroupInfo:I = 0x8

.field static final TRANSACTION_getPermissionInfo:I = 0x6

.field static final TRANSACTION_getPersistentApplications:I = 0x23

.field static final TRANSACTION_getPreferredActivities:I = 0x34

.field static final TRANSACTION_getPreferredPackages:I = 0x30

.field static final TRANSACTION_getProviderInfo:I = 0xe

.field static final TRANSACTION_getReceiverInfo:I = 0xc

.field static final TRANSACTION_getServiceInfo:I = 0xd

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x40

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x3f

.field static final TRANSACTION_getUidForSharedUser:I = 0x1a

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x53

.field static final TRANSACTION_grantPermission:I = 0x13

.field static final TRANSACTION_hasSystemFeature:I = 0x41

.field static final TRANSACTION_hasSystemUidErrors:I = 0x45

.field static final TRANSACTION_installExistingPackage:I = 0x50

.field static final TRANSACTION_installPackage:I = 0x29

.field static final TRANSACTION_installPackageWithVerification:I = 0x4e

.field static final TRANSACTION_installPackageWithVerificationAndEncryption:I = 0x4f

.field static final TRANSACTION_isFirstBoot:I = 0x54

.field static final TRANSACTION_isOnlyCoreApps:I = 0x55

.field static final TRANSACTION_isPermissionEnforced:I = 0x57

.field static final TRANSACTION_isProtectedBroadcast:I = 0x15

.field static final TRANSACTION_isSafeMode:I = 0x43

.field static final TRANSACTION_isStorageLow:I = 0x58

.field static final TRANSACTION_movePackage:I = 0x4a

.field static final TRANSACTION_nextPackageToClean:I = 0x49

.field static final TRANSACTION_performBootDexOpt:I = 0x46

.field static final TRANSACTION_performDexOpt:I = 0x47

.field static final TRANSACTION_queryContentProviders:I = 0x26

.field static final TRANSACTION_queryInstrumentation:I = 0x28

.field static final TRANSACTION_queryIntentActivities:I = 0x1c

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x1d

.field static final TRANSACTION_queryIntentReceivers:I = 0x1e

.field static final TRANSACTION_queryIntentServices:I = 0x20

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x7

.field static final TRANSACTION_querySyncProviders:I = 0x25

.field static final TRANSACTION_removePackageFromPreferred:I = 0x2f

.field static final TRANSACTION_removePermission:I = 0x12

.field static final TRANSACTION_replacePreferredActivity:I = 0x32

.field static final TRANSACTION_resolveContentProvider:I = 0x24

.field static final TRANSACTION_resolveIntent:I = 0x1b

.field static final TRANSACTION_resolveService:I = 0x1f

.field static final TRANSACTION_revokePermission:I = 0x14

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x37

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x35

.field static final TRANSACTION_setInstallLocation:I = 0x4c

.field static final TRANSACTION_setInstallerPackageName:I = 0x2b

.field static final TRANSACTION_setPackageStoppedState:I = 0x39

.field static final TRANSACTION_setPermissionEnforced:I = 0x56

.field static final TRANSACTION_systemReady:I = 0x44

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x48

.field static final TRANSACTION_verifyPendingInstall:I = 0x51


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2
    .parameter "obj"

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
    const-string v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/content/pm/IPackageManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 27
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 1335
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 48
    :sswitch_0
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v3, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 59
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 60
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 61
    .local v19, _result:Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v19, :cond_0

    .line 63
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 73
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/PackageInfo;
    :sswitch_2
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 78
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;I)I

    move-result v19

    .line 79
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v3, 0x1

    goto :goto_0

    .line 85
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v19           #_result:I
    :sswitch_3
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 88
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v19

    .line 89
    .local v19, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 91
    const/4 v3, 0x1

    goto :goto_0

    .line 95
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:[I
    :sswitch_4
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, _arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 99
    .local v19, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 101
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 105
    .end local v4           #_arg0:[Ljava/lang/String;
    .end local v19           #_result:[Ljava/lang/String;
    :sswitch_5
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 108
    .restart local v4       #_arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 109
    .restart local v19       #_result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 111
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 115
    .end local v4           #_arg0:[Ljava/lang/String;
    .end local v19           #_result:[Ljava/lang/String;
    :sswitch_6
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 120
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v19

    .line 121
    .local v19, _result:Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v19, :cond_1

    .line 123
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 127
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 133
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v19           #_result:Landroid/content/pm/PermissionInfo;
    :sswitch_7
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 138
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v24

    .line 139
    .local v24, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 141
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 145
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v24           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_8
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 150
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v19

    .line 151
    .local v19, _result:Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v19, :cond_2

    .line 153
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 159
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 157
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 163
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v19           #_result:Landroid/content/pm/PermissionGroupInfo;
    :sswitch_9
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 166
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v23

    .line 167
    .local v23, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 169
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 173
    .end local v4           #_arg0:I
    .end local v23           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_a
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 179
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 180
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    .line 181
    .local v19, _result:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v19, :cond_3

    .line 183
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 189
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 187
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 193
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ApplicationInfo;
    :sswitch_b
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 196
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 202
    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 204
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 205
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v19

    .line 206
    .local v19, _result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v19, :cond_5

    .line 208
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 214
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 199
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ActivityInfo;
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_5

    .line 212
    .restart local v5       #_arg1:I
    .restart local v6       #_arg2:I
    .restart local v19       #_result:Landroid/content/pm/ActivityInfo;
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 218
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_c
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 221
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 227
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 229
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 230
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v19

    .line 231
    .restart local v19       #_result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v19, :cond_7

    .line 233
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 239
    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 224
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ActivityInfo;
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .line 237
    .restart local v5       #_arg1:I
    .restart local v6       #_arg2:I
    .restart local v19       #_result:Landroid/content/pm/ActivityInfo;
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 243
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_d
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 246
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 252
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 254
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 255
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v19

    .line 256
    .local v19, _result:Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v19, :cond_9

    .line 258
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    :goto_a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 249
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ServiceInfo;
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_9

    .line 262
    .restart local v5       #_arg1:I
    .restart local v6       #_arg2:I
    .restart local v19       #_result:Landroid/content/pm/ServiceInfo;
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 268
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ServiceInfo;
    :sswitch_e
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 271
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 277
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 279
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 280
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v19

    .line 281
    .local v19, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v19, :cond_b

    .line 283
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 289
    :goto_c
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 274
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ProviderInfo;
    :cond_a
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .line 287
    .restart local v5       #_arg1:I
    .restart local v6       #_arg2:I
    .restart local v19       #_result:Landroid/content/pm/ProviderInfo;
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 293
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ProviderInfo;
    :sswitch_f
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 299
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 305
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v19           #_result:I
    :sswitch_10
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 309
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 310
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v19

    .line 311
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 317
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v19           #_result:I
    :sswitch_11
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 320
    sget-object v3, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionInfo;

    .line 325
    .local v4, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v19

    .line 326
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v19, :cond_d

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 323
    .end local v4           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v19           #_result:Z
    :cond_c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_d

    .line 327
    .restart local v19       #_result:Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 332
    .end local v4           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v19           #_result:Z
    :sswitch_12
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 341
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_13
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 345
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->grantPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 352
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_14
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 356
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 357
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->revokePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 363
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_15
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 366
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v19

    .line 367
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v19, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 368
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 373
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:Z
    :sswitch_16
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 377
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 378
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 379
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 385
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v19           #_result:I
    :sswitch_17
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 389
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 390
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v19

    .line 391
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 397
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v19           #_result:I
    :sswitch_18
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 400
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    .line 401
    .local v19, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 403
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 407
    .end local v4           #_arg0:I
    .end local v19           #_result:[Ljava/lang/String;
    :sswitch_19
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 410
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v19

    .line 411
    .local v19, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 417
    .end local v4           #_arg0:I
    .end local v19           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v19

    .line 421
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 427
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:I
    :sswitch_1b
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 430
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 436
    .local v4, _arg0:Landroid/content/Intent;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 440
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 441
    .local v7, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    .line 442
    .local v19, _result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v19, :cond_10

    .line 444
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 450
    :goto_11
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 433
    .end local v4           #_arg0:Landroid/content/Intent;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v19           #_result:Landroid/content/pm/ResolveInfo;
    :cond_f
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/Intent;
    goto :goto_10

    .line 448
    .restart local v5       #_arg1:Ljava/lang/String;
    .restart local v6       #_arg2:I
    .restart local v7       #_arg3:I
    .restart local v19       #_result:Landroid/content/pm/ResolveInfo;
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 454
    .end local v4           #_arg0:Landroid/content/Intent;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v19           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_1c
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 457
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 463
    .restart local v4       #_arg0:Landroid/content/Intent;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 465
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 467
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 468
    .restart local v7       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v26

    .line 469
    .local v26, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 471
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 460
    .end local v4           #_arg0:Landroid/content/Intent;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v26           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_11
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/Intent;
    goto :goto_12

    .line 475
    .end local v4           #_arg0:Landroid/content/Intent;
    :sswitch_1d
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 478
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 484
    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_13
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/Intent;

    .line 486
    .local v5, _arg1:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 488
    .local v6, _arg2:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 489
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 495
    .local v7, _arg3:Landroid/content/Intent;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 497
    .local v8, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 499
    .local v9, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg6:I
    move-object/from16 v3, p0

    .line 500
    invoke-virtual/range {v3 .. v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v26

    .line 501
    .restart local v26       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 503
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 481
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:[Landroid/content/Intent;
    .end local v6           #_arg2:[Ljava/lang/String;
    .end local v7           #_arg3:Landroid/content/Intent;
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v9           #_arg5:I
    .end local v10           #_arg6:I
    .end local v26           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_12
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_13

    .line 492
    .restart local v5       #_arg1:[Landroid/content/Intent;
    .restart local v6       #_arg2:[Ljava/lang/String;
    :cond_13
    const/4 v7, 0x0

    .restart local v7       #_arg3:Landroid/content/Intent;
    goto :goto_14

    .line 507
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:[Landroid/content/Intent;
    .end local v6           #_arg2:[Ljava/lang/String;
    .end local v7           #_arg3:Landroid/content/Intent;
    :sswitch_1e
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 510
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 516
    .local v4, _arg0:Landroid/content/Intent;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 518
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 520
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 521
    .local v7, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v26

    .line 522
    .restart local v26       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 524
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 513
    .end local v4           #_arg0:Landroid/content/Intent;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v26           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_14
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/Intent;
    goto :goto_15

    .line 528
    .end local v4           #_arg0:Landroid/content/Intent;
    :sswitch_1f
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 531
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 537
    .restart local v4       #_arg0:Landroid/content/Intent;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 539
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 541
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 542
    .restart local v7       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    .line 543
    .restart local v19       #_result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v19, :cond_16

    .line 545
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 551
    :goto_17
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 534
    .end local v4           #_arg0:Landroid/content/Intent;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v19           #_result:Landroid/content/pm/ResolveInfo;
    :cond_15
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/Intent;
    goto :goto_16

    .line 549
    .restart local v5       #_arg1:Ljava/lang/String;
    .restart local v6       #_arg2:I
    .restart local v7       #_arg3:I
    .restart local v19       #_result:Landroid/content/pm/ResolveInfo;
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 555
    .end local v4           #_arg0:Landroid/content/Intent;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v19           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_20
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 558
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 564
    .restart local v4       #_arg0:Landroid/content/Intent;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 566
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 568
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 569
    .restart local v7       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v26

    .line 570
    .restart local v26       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 572
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 561
    .end local v4           #_arg0:Landroid/content/Intent;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v26           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_17
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/Intent;
    goto :goto_18

    .line 576
    .end local v4           #_arg0:Landroid/content/Intent;
    :sswitch_21
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 580
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 582
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 583
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(ILjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v19

    .line 584
    .local v19, _result:Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v19, :cond_18

    .line 586
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 592
    :goto_19
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 590
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 596
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ParceledListSlice;
    :sswitch_22
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 600
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 602
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 603
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(ILjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v19

    .line 604
    .restart local v19       #_result:Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    if-eqz v19, :cond_19

    .line 606
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 612
    :goto_1a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 610
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 616
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ParceledListSlice;
    :sswitch_23
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 619
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v20

    .line 620
    .local v20, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 622
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 626
    .end local v4           #_arg0:I
    .end local v20           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_24
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 632
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 633
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v19

    .line 634
    .local v19, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    if-eqz v19, :cond_1a

    .line 636
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 642
    :goto_1b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 640
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 646
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v19           #_result:Landroid/content/pm/ProviderInfo;
    :sswitch_25
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 650
    .local v14, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 651
    .local v16, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 654
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 655
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 659
    .end local v14           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_26
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 663
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 665
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 666
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v25

    .line 667
    .local v25, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 669
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 673
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_27
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 676
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 682
    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 683
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v19

    .line 684
    .local v19, _result:Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    if-eqz v19, :cond_1c

    .line 686
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 692
    :goto_1d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 679
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v19           #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_1b
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_1c

    .line 690
    .restart local v5       #_arg1:I
    .restart local v19       #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 696
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v19           #_result:Landroid/content/pm/InstrumentationInfo;
    :sswitch_28
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 701
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v21

    .line 702
    .local v21, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 704
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 708
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v21           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_29
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 711
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 717
    .local v4, _arg0:Landroid/net/Uri;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v5

    .line 719
    .local v5, _arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 721
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 722
    .local v7, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 714
    .end local v4           #_arg0:Landroid/net/Uri;
    .end local v5           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Ljava/lang/String;
    :cond_1d
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/net/Uri;
    goto :goto_1e

    .line 728
    .end local v4           #_arg0:Landroid/net/Uri;
    :sswitch_2a
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 731
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 737
    .end local v4           #_arg0:I
    :sswitch_2b
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 741
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 742
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 748
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_2c
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 752
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v5

    .line 754
    .local v5, _arg1:Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 755
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 761
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Landroid/content/pm/IPackageDeleteObserver;
    .end local v6           #_arg2:I
    :sswitch_2d
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 764
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 765
    .local v19, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 771
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:Ljava/lang/String;
    :sswitch_2e
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 774
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 780
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_2f
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 783
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 789
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_30
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 792
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v22

    .line 793
    .local v22, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 795
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 799
    .end local v4           #_arg0:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_31
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 802
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    .line 808
    .local v4, _arg0:Landroid/content/IntentFilter;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 810
    .local v5, _arg1:I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ComponentName;

    .line 812
    .local v6, _arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 813
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 819
    .local v7, _arg3:Landroid/content/ComponentName;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg4:I
    move-object/from16 v3, p0

    .line 820
    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 805
    .end local v4           #_arg0:Landroid/content/IntentFilter;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:[Landroid/content/ComponentName;
    .end local v7           #_arg3:Landroid/content/ComponentName;
    .end local v8           #_arg4:I
    :cond_1e
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/IntentFilter;
    goto :goto_1f

    .line 816
    .restart local v5       #_arg1:I
    .restart local v6       #_arg2:[Landroid/content/ComponentName;
    :cond_1f
    const/4 v7, 0x0

    .restart local v7       #_arg3:Landroid/content/ComponentName;
    goto :goto_20

    .line 826
    .end local v4           #_arg0:Landroid/content/IntentFilter;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:[Landroid/content/ComponentName;
    .end local v7           #_arg3:Landroid/content/ComponentName;
    :sswitch_32
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    .line 829
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    .line 835
    .restart local v4       #_arg0:Landroid/content/IntentFilter;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 837
    .restart local v5       #_arg1:I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ComponentName;

    .line 839
    .restart local v6       #_arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    .line 840
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 845
    .restart local v7       #_arg3:Landroid/content/ComponentName;
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 832
    .end local v4           #_arg0:Landroid/content/IntentFilter;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:[Landroid/content/ComponentName;
    .end local v7           #_arg3:Landroid/content/ComponentName;
    :cond_20
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/IntentFilter;
    goto :goto_21

    .line 843
    .restart local v5       #_arg1:I
    .restart local v6       #_arg2:[Landroid/content/ComponentName;
    :cond_21
    const/4 v7, 0x0

    .restart local v7       #_arg3:Landroid/content/ComponentName;
    goto :goto_22

    .line 851
    .end local v4           #_arg0:Landroid/content/IntentFilter;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:[Landroid/content/ComponentName;
    .end local v7           #_arg3:Landroid/content/ComponentName;
    :sswitch_33
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 854
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 860
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_34
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v13, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v15, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 867
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15, v6}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v19

    .line 868
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 871
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 872
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 876
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v13           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v15           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v19           #_result:I
    :sswitch_35
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    .line 879
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 885
    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 887
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 889
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 890
    .local v7, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 882
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    :cond_22
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_23

    .line 896
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_36
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    .line 899
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 905
    .restart local v4       #_arg0:Landroid/content/ComponentName;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 906
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v19

    .line 907
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 902
    .end local v4           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_arg1:I
    .end local v19           #_result:I
    :cond_23
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_24

    .line 913
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_37
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 917
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 919
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 921
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 922
    .restart local v7       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;III)V

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 928
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    :sswitch_38
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 932
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 933
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v19

    .line 934
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 940
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v19           #_result:I
    :sswitch_39
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 944
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    const/4 v5, 0x1

    .line 946
    .local v5, _arg1:Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 947
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 944
    .end local v5           #_arg1:Z
    .end local v6           #_arg2:I
    :cond_24
    const/4 v5, 0x0

    goto :goto_25

    .line 953
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_3a
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 957
    .local v11, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v5

    .line 958
    .local v5, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v5}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 964
    .end local v5           #_arg1:Landroid/content/pm/IPackageDataObserver;
    .end local v11           #_arg0:J
    :sswitch_3b
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 968
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 969
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentSender;

    .line 974
    .local v5, _arg1:Landroid/content/IntentSender;
    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v5}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(JLandroid/content/IntentSender;)V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 972
    .end local v5           #_arg1:Landroid/content/IntentSender;
    :cond_25
    const/4 v5, 0x0

    .restart local v5       #_arg1:Landroid/content/IntentSender;
    goto :goto_26

    .line 980
    .end local v5           #_arg1:Landroid/content/IntentSender;
    .end local v11           #_arg0:J
    :sswitch_3c
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 984
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v5

    .line 985
    .local v5, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 986
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 991
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_3d
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 995
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v5

    .line 997
    .restart local v5       #_arg1:Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 998
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 999
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1004
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Landroid/content/pm/IPackageDataObserver;
    .end local v6           #_arg2:I
    :sswitch_3e
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1008
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1010
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v6

    .line 1011
    .local v6, _arg2:Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1017
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Landroid/content/pm/IPackageStatsObserver;
    :sswitch_3f
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v19

    .line 1019
    .local v19, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1021
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1025
    .end local v19           #_result:[Ljava/lang/String;
    :sswitch_40
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v19

    .line 1027
    .local v19, _result:[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1029
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1033
    .end local v19           #_result:[Landroid/content/pm/FeatureInfo;
    :sswitch_41
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1036
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    .line 1037
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    if-eqz v19, :cond_26

    const/4 v3, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1038
    :cond_26
    const/4 v3, 0x0

    goto :goto_27

    .line 1043
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:Z
    :sswitch_42
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1050
    :sswitch_43
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v19

    .line 1052
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    if-eqz v19, :cond_27

    const/4 v3, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1053
    :cond_27
    const/4 v3, 0x0

    goto :goto_28

    .line 1058
    .end local v19           #_result:Z
    :sswitch_44
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1065
    :sswitch_45
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v19

    .line 1067
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    if-eqz v19, :cond_28

    const/4 v3, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1068
    :cond_28
    const/4 v3, 0x0

    goto :goto_29

    .line 1073
    .end local v19           #_result:Z
    :sswitch_46
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->performBootDexOpt()V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1080
    :sswitch_47
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1083
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->performDexOpt(Ljava/lang/String;)Z

    move-result v19

    .line 1084
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    if-eqz v19, :cond_29

    const/4 v3, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1085
    :cond_29
    const/4 v3, 0x0

    goto :goto_2a

    .line 1090
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:Z
    :sswitch_48
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v4, 0x1

    .line 1094
    .local v4, _arg0:Z
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v5, 0x1

    .line 1095
    .local v5, _arg1:Z
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1092
    .end local v4           #_arg0:Z
    .end local v5           #_arg1:Z
    :cond_2a
    const/4 v4, 0x0

    goto :goto_2b

    .line 1094
    .restart local v4       #_arg0:Z
    :cond_2b
    const/4 v5, 0x0

    goto :goto_2c

    .line 1101
    .end local v4           #_arg0:Z
    :sswitch_49
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 1104
    sget-object v3, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageCleanItem;

    .line 1109
    .local v4, _arg0:Landroid/content/pm/PackageCleanItem;
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    move-result-object v19

    .line 1110
    .local v19, _result:Landroid/content/pm/PackageCleanItem;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    if-eqz v19, :cond_2d

    .line 1112
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1118
    :goto_2e
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1107
    .end local v4           #_arg0:Landroid/content/pm/PackageCleanItem;
    .end local v19           #_result:Landroid/content/pm/PackageCleanItem;
    :cond_2c
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/pm/PackageCleanItem;
    goto :goto_2d

    .line 1116
    .restart local v19       #_result:Landroid/content/pm/PackageCleanItem;
    :cond_2d
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 1122
    .end local v4           #_arg0:Landroid/content/pm/PackageCleanItem;
    .end local v19           #_result:Landroid/content/pm/PackageCleanItem;
    :sswitch_4a
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1126
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v5

    .line 1128
    .local v5, _arg1:Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1129
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1135
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Landroid/content/pm/IPackageMoveObserver;
    .end local v6           #_arg2:I
    :sswitch_4b
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    .line 1138
    sget-object v3, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionInfo;

    .line 1143
    .local v4, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v19

    .line 1144
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    if-eqz v19, :cond_2f

    const/4 v3, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1141
    .end local v4           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v19           #_result:Z
    :cond_2e
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_2f

    .line 1145
    .restart local v19       #_result:Z
    :cond_2f
    const/4 v3, 0x0

    goto :goto_30

    .line 1150
    .end local v4           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v19           #_result:Z
    :sswitch_4c
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1153
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v19

    .line 1154
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    if-eqz v19, :cond_30

    const/4 v3, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1155
    :cond_30
    const/4 v3, 0x0

    goto :goto_31

    .line 1160
    .end local v4           #_arg0:I
    .end local v19           #_result:Z
    :sswitch_4d
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v19

    .line 1162
    .local v19, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1168
    .end local v19           #_result:I
    :sswitch_4e
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    .line 1171
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1177
    .local v4, _arg0:Landroid/net/Uri;
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v5

    .line 1179
    .local v5, _arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1181
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1183
    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    .line 1184
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 1190
    .local v8, _arg4:Landroid/net/Uri;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    .line 1191
    sget-object v3, Landroid/content/pm/ManifestDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ManifestDigest;

    .line 1197
    .local v9, _arg5:Landroid/content/pm/ManifestDigest;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    .line 1198
    sget-object v3, Landroid/content/pm/ContainerEncryptionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ContainerEncryptionParams;

    .local v10, _arg6:Landroid/content/pm/ContainerEncryptionParams;
    :goto_35
    move-object/from16 v3, p0

    .line 1203
    invoke-virtual/range {v3 .. v10}, Landroid/content/pm/IPackageManager$Stub;->installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 1204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1174
    .end local v4           #_arg0:Landroid/net/Uri;
    .end local v5           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Landroid/net/Uri;
    .end local v9           #_arg5:Landroid/content/pm/ManifestDigest;
    .end local v10           #_arg6:Landroid/content/pm/ContainerEncryptionParams;
    :cond_31
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/net/Uri;
    goto :goto_32

    .line 1187
    .restart local v5       #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .restart local v6       #_arg2:I
    .restart local v7       #_arg3:Ljava/lang/String;
    :cond_32
    const/4 v8, 0x0

    .restart local v8       #_arg4:Landroid/net/Uri;
    goto :goto_33

    .line 1194
    :cond_33
    const/4 v9, 0x0

    .restart local v9       #_arg5:Landroid/content/pm/ManifestDigest;
    goto :goto_34

    .line 1201
    :cond_34
    const/4 v10, 0x0

    .restart local v10       #_arg6:Landroid/content/pm/ContainerEncryptionParams;
    goto :goto_35

    .line 1209
    .end local v4           #_arg0:Landroid/net/Uri;
    .end local v5           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Landroid/net/Uri;
    .end local v9           #_arg5:Landroid/content/pm/ManifestDigest;
    .end local v10           #_arg6:Landroid/content/pm/ContainerEncryptionParams;
    :sswitch_4f
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    .line 1212
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1218
    .restart local v4       #_arg0:Landroid/net/Uri;
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v5

    .line 1220
    .restart local v5       #_arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1222
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1224
    .restart local v7       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    .line 1225
    sget-object v3, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/VerificationParams;

    .line 1231
    .local v8, _arg4:Landroid/content/pm/VerificationParams;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    .line 1232
    sget-object v3, Landroid/content/pm/ContainerEncryptionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ContainerEncryptionParams;

    .local v9, _arg5:Landroid/content/pm/ContainerEncryptionParams;
    :goto_38
    move-object/from16 v3, p0

    .line 1237
    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/IPackageManager$Stub;->installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1215
    .end local v4           #_arg0:Landroid/net/Uri;
    .end local v5           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Landroid/content/pm/VerificationParams;
    .end local v9           #_arg5:Landroid/content/pm/ContainerEncryptionParams;
    :cond_35
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/net/Uri;
    goto :goto_36

    .line 1228
    .restart local v5       #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .restart local v6       #_arg2:I
    .restart local v7       #_arg3:Ljava/lang/String;
    :cond_36
    const/4 v8, 0x0

    .restart local v8       #_arg4:Landroid/content/pm/VerificationParams;
    goto :goto_37

    .line 1235
    :cond_37
    const/4 v9, 0x0

    .restart local v9       #_arg5:Landroid/content/pm/ContainerEncryptionParams;
    goto :goto_38

    .line 1243
    .end local v4           #_arg0:Landroid/net/Uri;
    .end local v5           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Landroid/content/pm/VerificationParams;
    .end local v9           #_arg5:Landroid/content/pm/ContainerEncryptionParams;
    :sswitch_50
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1246
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackage(Ljava/lang/String;)I

    move-result v19

    .line 1247
    .restart local v19       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1253
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:I
    :sswitch_51
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1257
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1258
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 1259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1264
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_52
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1268
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1270
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 1271
    .local v17, _arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    .line 1272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1277
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v17           #_arg2:J
    :sswitch_53
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v19

    .line 1279
    .local v19, _result:Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    if-eqz v19, :cond_38

    .line 1281
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1287
    :goto_39
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1285
    :cond_38
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    .line 1291
    .end local v19           #_result:Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_54
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v19

    .line 1293
    .local v19, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    if-eqz v19, :cond_39

    const/4 v3, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1294
    :cond_39
    const/4 v3, 0x0

    goto :goto_3a

    .line 1299
    .end local v19           #_result:Z
    :sswitch_55
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    move-result v19

    .line 1301
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    if-eqz v19, :cond_3a

    const/4 v3, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1302
    :cond_3a
    const/4 v3, 0x0

    goto :goto_3b

    .line 1307
    .end local v19           #_result:Z
    :sswitch_56
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1311
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v5, 0x1

    .line 1312
    .local v5, _arg1:Z
    :goto_3c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 1313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1311
    .end local v5           #_arg1:Z
    :cond_3b
    const/4 v5, 0x0

    goto :goto_3c

    .line 1318
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_57
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1321
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/pm/IPackageManager$Stub;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v19

    .line 1322
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    if-eqz v19, :cond_3c

    const/4 v3, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1323
    :cond_3c
    const/4 v3, 0x0

    goto :goto_3d

    .line 1328
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v19           #_result:Z
    :sswitch_58
    const-string v3, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v19

    .line 1330
    .restart local v19       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    if-eqz v19, :cond_3d

    const/4 v3, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1331
    :cond_3d
    const/4 v3, 0x0

    goto :goto_3e

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
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
