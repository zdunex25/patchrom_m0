.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGpsStatusListener:I = 0x6

.field static final TRANSACTION_addTestProvider:I = 0x12

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x17

.field static final TRANSACTION_clearTestProviderLocation:I = 0x15

.field static final TRANSACTION_clearTestProviderStatus:I = 0x19

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0xc

.field static final TRANSACTION_getBestProvider:I = 0xe

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getProviderProperties:I = 0x10

.field static final TRANSACTION_getProviders:I = 0xd

.field static final TRANSACTION_isProviderEnabled:I = 0x11

.field static final TRANSACTION_locationCallbackFinished:I = 0x1c

.field static final TRANSACTION_providerMeetsCriteria:I = 0xf

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGpsStatusListener:I = 0x7

.field static final TRANSACTION_removeTestProvider:I = 0x13

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x1b

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_sendExtraCommand:I = 0x1a

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setTestProviderEnabled:I = 0x16

.field static final TRANSACTION_setTestProviderLocation:I = 0x14

.field static final TRANSACTION_setTestProviderStatus:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .locals 2
    .parameter "obj"

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
    const-string v1, "android.location.ILocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/location/ILocationManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/location/ILocationManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 31
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 498
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationRequest;

    .line 61
    .local v3, _arg0:Landroid/location/LocationRequest;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v5

    .line 63
    .local v5, _arg1:Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 70
    .local v7, _arg2:Landroid/app/PendingIntent;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v2, 0x1

    goto :goto_0

    .line 58
    .end local v3           #_arg0:Landroid/location/LocationRequest;
    .end local v5           #_arg1:Landroid/location/ILocationListener;
    .end local v7           #_arg2:Landroid/app/PendingIntent;
    .end local v8           #_arg3:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/location/LocationRequest;
    goto :goto_1

    .line 67
    .restart local v5       #_arg1:Landroid/location/ILocationListener;
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #_arg2:Landroid/app/PendingIntent;
    goto :goto_2

    .line 77
    .end local v3           #_arg0:Landroid/location/LocationRequest;
    .end local v5           #_arg1:Landroid/location/ILocationListener;
    .end local v7           #_arg2:Landroid/app/PendingIntent;
    :sswitch_2
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v3

    .line 81
    .local v3, _arg0:Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 88
    .local v5, _arg1:Landroid/app/PendingIntent;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v2, 0x1

    goto :goto_0

    .line 85
    .end local v5           #_arg1:Landroid/app/PendingIntent;
    .end local v7           #_arg2:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #_arg1:Landroid/app/PendingIntent;
    goto :goto_3

    .line 95
    .end local v3           #_arg0:Landroid/location/ILocationListener;
    .end local v5           #_arg1:Landroid/app/PendingIntent;
    :sswitch_3
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    sget-object v2, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationRequest;

    .line 104
    .local v3, _arg0:Landroid/location/LocationRequest;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    sget-object v2, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Geofence;

    .line 111
    .local v5, _arg1:Landroid/location/Geofence;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 118
    .local v7, _arg2:Landroid/app/PendingIntent;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 119
    .restart local v8       #_arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 101
    .end local v3           #_arg0:Landroid/location/LocationRequest;
    .end local v5           #_arg1:Landroid/location/Geofence;
    .end local v7           #_arg2:Landroid/app/PendingIntent;
    .end local v8           #_arg3:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/location/LocationRequest;
    goto :goto_4

    .line 108
    :cond_4
    const/4 v5, 0x0

    .restart local v5       #_arg1:Landroid/location/Geofence;
    goto :goto_5

    .line 115
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #_arg2:Landroid/app/PendingIntent;
    goto :goto_6

    .line 125
    .end local v3           #_arg0:Landroid/location/LocationRequest;
    .end local v5           #_arg1:Landroid/location/Geofence;
    .end local v7           #_arg2:Landroid/app/PendingIntent;
    :sswitch_4
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    sget-object v2, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Geofence;

    .line 134
    .local v3, _arg0:Landroid/location/Geofence;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 135
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 141
    .local v5, _arg1:Landroid/app/PendingIntent;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 131
    .end local v3           #_arg0:Landroid/location/Geofence;
    .end local v5           #_arg1:Landroid/app/PendingIntent;
    .end local v7           #_arg2:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/location/Geofence;
    goto :goto_7

    .line 138
    :cond_7
    const/4 v5, 0x0

    .restart local v5       #_arg1:Landroid/app/PendingIntent;
    goto :goto_8

    .line 148
    .end local v3           #_arg0:Landroid/location/Geofence;
    .end local v5           #_arg1:Landroid/app/PendingIntent;
    :sswitch_5
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 151
    sget-object v2, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationRequest;

    .line 157
    .local v3, _arg0:Landroid/location/LocationRequest;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v29

    .line 159
    .local v29, _result:Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v29, :cond_9

    .line 161
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v2, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 154
    .end local v3           #_arg0:Landroid/location/LocationRequest;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v29           #_result:Landroid/location/Location;
    :cond_8
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/location/LocationRequest;
    goto :goto_9

    .line 165
    .restart local v5       #_arg1:Ljava/lang/String;
    .restart local v29       #_result:Landroid/location/Location;
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 171
    .end local v3           #_arg0:Landroid/location/LocationRequest;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v29           #_result:Landroid/location/Location;
    :sswitch_6
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v3

    .line 174
    .local v3, _arg0:Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    move-result v29

    .line 175
    .local v29, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v29, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 181
    .end local v3           #_arg0:Landroid/location/IGpsStatusListener;
    .end local v29           #_result:Z
    :sswitch_7
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v3

    .line 184
    .restart local v3       #_arg0:Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 190
    .end local v3           #_arg0:Landroid/location/IGpsStatusListener;
    :sswitch_8
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v29

    .line 192
    .restart local v29       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v29, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 193
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 198
    .end local v29           #_result:Z
    :sswitch_9
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 202
    .local v3, _arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 204
    .local v5, _arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 206
    .local v7, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 207
    sget-object v2, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/GeocoderParams;

    .line 213
    .local v8, _arg3:Landroid/location/GeocoderParams;
    :goto_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, _arg4:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v2, p0

    .line 214
    invoke-virtual/range {v2 .. v9}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v29

    .line 215
    .local v29, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 218
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 210
    .end local v8           #_arg3:Landroid/location/GeocoderParams;
    .end local v9           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v29           #_result:Ljava/lang/String;
    :cond_c
    const/4 v8, 0x0

    .restart local v8       #_arg3:Landroid/location/GeocoderParams;
    goto :goto_d

    .line 222
    .end local v3           #_arg0:D
    .end local v5           #_arg1:D
    .end local v7           #_arg2:I
    .end local v8           #_arg3:Landroid/location/GeocoderParams;
    :sswitch_a
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 228
    .restart local v5       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v14

    .line 230
    .local v14, _arg2:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 232
    .local v16, _arg3:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 234
    .local v18, _arg4:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 236
    .local v20, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 237
    sget-object v2, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/location/GeocoderParams;

    .line 243
    .local v21, _arg6:Landroid/location/GeocoderParams;
    :goto_e
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .local v22, _arg7:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v10, p0

    move-object v11, v3

    move-wide v12, v5

    .line 244
    invoke-virtual/range {v10 .. v22}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v29

    .line 245
    .restart local v29       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 248
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 240
    .end local v21           #_arg6:Landroid/location/GeocoderParams;
    .end local v22           #_arg7:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v29           #_result:Ljava/lang/String;
    :cond_d
    const/16 v21, 0x0

    .restart local v21       #_arg6:Landroid/location/GeocoderParams;
    goto :goto_e

    .line 252
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:D
    .end local v14           #_arg2:D
    .end local v16           #_arg3:D
    .end local v18           #_arg4:D
    .end local v20           #_arg5:I
    .end local v21           #_arg6:Landroid/location/GeocoderParams;
    :sswitch_b
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 257
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v29

    .line 258
    .local v29, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v29, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 259
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 264
    .end local v3           #_arg0:I
    .end local v5           #_arg1:I
    .end local v29           #_result:Z
    :sswitch_c
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v30

    .line 266
    .local v30, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 268
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 272
    .end local v30           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_d
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 275
    sget-object v2, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Criteria;

    .line 281
    .local v3, _arg0:Landroid/location/Criteria;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v5, 0x1

    .line 282
    .local v5, _arg1:Z
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v30

    .line 283
    .restart local v30       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 285
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 278
    .end local v3           #_arg0:Landroid/location/Criteria;
    .end local v5           #_arg1:Z
    .end local v30           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/location/Criteria;
    goto :goto_10

    .line 281
    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    .line 289
    .end local v3           #_arg0:Landroid/location/Criteria;
    :sswitch_e
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 292
    sget-object v2, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Criteria;

    .line 298
    .restart local v3       #_arg0:Landroid/location/Criteria;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    const/4 v5, 0x1

    .line 299
    .restart local v5       #_arg1:Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v29

    .line 300
    .local v29, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 295
    .end local v3           #_arg0:Landroid/location/Criteria;
    .end local v5           #_arg1:Z
    .end local v29           #_result:Ljava/lang/String;
    :cond_11
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/location/Criteria;
    goto :goto_12

    .line 298
    :cond_12
    const/4 v5, 0x0

    goto :goto_13

    .line 306
    .end local v3           #_arg0:Landroid/location/Criteria;
    :sswitch_f
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    .line 311
    sget-object v2, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Criteria;

    .line 316
    .local v5, _arg1:Landroid/location/Criteria;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    move-result v29

    .line 317
    .local v29, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v29, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 314
    .end local v5           #_arg1:Landroid/location/Criteria;
    .end local v29           #_result:Z
    :cond_13
    const/4 v5, 0x0

    .restart local v5       #_arg1:Landroid/location/Criteria;
    goto :goto_14

    .line 318
    .restart local v29       #_result:Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 323
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Landroid/location/Criteria;
    .end local v29           #_result:Z
    :sswitch_10
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 326
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v29

    .line 327
    .local v29, _result:Lcom/android/internal/location/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v29, :cond_15

    .line 329
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v2, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 335
    :goto_16
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 333
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 339
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v29           #_result:Lcom/android/internal/location/ProviderProperties;
    :sswitch_11
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 342
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v29

    .line 343
    .local v29, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v29, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 344
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 349
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v29           #_result:Z
    :sswitch_12
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 353
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 354
    sget-object v2, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/location/ProviderProperties;

    .line 359
    .local v5, _arg1:Lcom/android/internal/location/ProviderProperties;
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 357
    .end local v5           #_arg1:Lcom/android/internal/location/ProviderProperties;
    :cond_17
    const/4 v5, 0x0

    .restart local v5       #_arg1:Lcom/android/internal/location/ProviderProperties;
    goto :goto_18

    .line 365
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Lcom/android/internal/location/ProviderProperties;
    :sswitch_13
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 368
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 374
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_14
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 378
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    .line 379
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 384
    .local v5, _arg1:Landroid/location/Location;
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 382
    .end local v5           #_arg1:Landroid/location/Location;
    :cond_18
    const/4 v5, 0x0

    .restart local v5       #_arg1:Landroid/location/Location;
    goto :goto_19

    .line 390
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Landroid/location/Location;
    :sswitch_15
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 393
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 399
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_16
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v5, 0x1

    .line 404
    .local v5, _arg1:Z
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 403
    .end local v5           #_arg1:Z
    :cond_19
    const/4 v5, 0x0

    goto :goto_1a

    .line 410
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_17
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 413
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 419
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_18
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 425
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 426
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 432
    .local v7, _arg2:Landroid/os/Bundle;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .local v16, _arg3:J
    move-object/from16 v23, p0

    move-object/from16 v24, v3

    move/from16 v25, v5

    move-object/from16 v26, v7

    move-wide/from16 v27, v16

    .line 433
    invoke-virtual/range {v23 .. v28}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 429
    .end local v7           #_arg2:Landroid/os/Bundle;
    .end local v16           #_arg3:J
    :cond_1a
    const/4 v7, 0x0

    .restart local v7       #_arg2:Landroid/os/Bundle;
    goto :goto_1b

    .line 439
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v7           #_arg2:Landroid/os/Bundle;
    :sswitch_19
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 442
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 448
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_1a
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 452
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 455
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 460
    .restart local v7       #_arg2:Landroid/os/Bundle;
    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v29

    .line 461
    .restart local v29       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    if-eqz v29, :cond_1c

    const/4 v2, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    if-eqz v7, :cond_1d

    .line 464
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 470
    :goto_1e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 458
    .end local v7           #_arg2:Landroid/os/Bundle;
    .end local v29           #_result:Z
    :cond_1b
    const/4 v7, 0x0

    .restart local v7       #_arg2:Landroid/os/Bundle;
    goto :goto_1c

    .line 462
    .restart local v29       #_result:Z
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .line 468
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 474
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:Landroid/os/Bundle;
    .end local v29           #_result:Z
    :sswitch_1b
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 477
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 483
    .local v3, _arg0:Landroid/location/Location;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v5, 0x1

    .line 484
    .local v5, _arg1:Z
    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 480
    .end local v3           #_arg0:Landroid/location/Location;
    .end local v5           #_arg1:Z
    :cond_1e
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/location/Location;
    goto :goto_1f

    .line 483
    :cond_1f
    const/4 v5, 0x0

    goto :goto_20

    .line 490
    .end local v3           #_arg0:Landroid/location/Location;
    :sswitch_1c
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v3

    .line 493
    .local v3, _arg0:Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v2, 0x1

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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
